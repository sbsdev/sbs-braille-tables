package ch.sbs.pipeline.braille.impl;

import java.io.File;
import java.net.URI;
import java.net.URL;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.daisy.common.file.URIs;
import org.daisy.common.file.URLs;
import org.daisy.pipeline.braille.liblouis.LiblouisTablePath;
import org.daisy.pipeline.braille.liblouis.LiblouisTableResolver;

import org.osgi.service.component.annotations.Activate;
import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;
import org.osgi.service.component.annotations.ReferenceCardinality;
import org.osgi.service.component.annotations.ReferencePolicy;
import org.osgi.service.component.ComponentContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Component(
	name = "ch.sbs.pipeline.braille.impl.TablePath",
	service = {
		LiblouisTablePath.class
	},
	property = {
		"identifier:String=http://www.sbs.ch/pipeline/liblouis/tables/",
		"path:String=/tables"
	}
)
public class TablePath extends LiblouisTablePath {
	
	private final static String WHITELIST_BASE_PROPERTY = "ch.sbs.whitelist.base";
	private final static Pattern WHITELIST_NAME_PATTERN = Pattern.compile("^sbs-de-(g1|g2|g2-place|g2-name)-white(-(?<docid>.*))?\\.mod$");
	
	private File whitelistBase;
	private URL emptyTable;
	
	@Activate
	public void activate(Map<?,?> properties) {
		super.activate(properties, TablePath.class);
		String whitelistBasePath = System.getProperty(WHITELIST_BASE_PROPERTY);
		whitelistBase = whitelistBasePath == null ? null : new File(whitelistBasePath);
		emptyTable = resolve(URIs.asURI("_empty"));
	}
	
	@Override
	public URL resolve(URI resource) {
		URL r = super.resolve(resource);
		if (r != null)
			return r;
		URI relative = resource;
		if (relative.isAbsolute())
			relative = getIdentifier().relativize(resource);
		if (relative.isAbsolute())
			relative = URIs.relativize(makeUnpackDir(), resource);
		if (whitelistBase != null && relative.isAbsolute())
			relative = URIs.relativize(whitelistBase, resource);
		if (relative.isAbsolute())
			return null;
		
		// trick to resolve common tables without having to add "http://www.liblouis.org/tables/" to
		// the include rules
		if (!relative.equals(resource)
		    && (relative.toString().equals("digits6DotsPlusDot6.uti")
		        || relative.toString().equals("latinLetterDef6Dots.uti")))
			return resolver.resolve(relative);
		
		// is it a whitelist table?
		String fileName = relative.toString();
		Matcher m = WHITELIST_NAME_PATTERN.matcher(fileName);
		if (m.matches()) {
			if (whitelistBase != null) {
				File file = new File(whitelistBase, fileName);
				if (file.exists())
					return URLs.asURL(file);
				else {
					logger.error("Whitelist " + fileName + " could not be found in " + whitelistBase);
					return null; }}
			else {
				String docid = m.group("docid");
				if (docid != null) {
					logger.error("Requested whitelist for document " + docid
					             + ", but no ch.sbs.whitelist.base was specified.");
					return null; }
				else {
					logger.warn("No ch.sbs.whitelist.base was specified. Skipping " + fileName);
					return emptyTable; }}}
		return null;
	}
	
	private LiblouisTableResolver resolver;
	
	@Reference(
		name = "LiblouisTableResolver",
		unbind = "-",
		service = LiblouisTableResolver.class,
		cardinality = ReferenceCardinality.MANDATORY,
		policy = ReferencePolicy.STATIC
	)
	protected void bindTableResolver(LiblouisTableResolver resolver) {
		this.resolver = resolver;
	}
	
	private static final Logger logger = LoggerFactory.getLogger(TablePath.class);
	
}
