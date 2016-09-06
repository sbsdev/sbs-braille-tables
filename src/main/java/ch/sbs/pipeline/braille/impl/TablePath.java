package ch.sbs.pipeline.braille.impl;

import java.net.URI;
import java.net.URL;
import java.util.Map;

import org.daisy.pipeline.braille.common.util.URIs;
import org.daisy.pipeline.braille.liblouis.LiblouisTablePath;
import org.daisy.pipeline.braille.liblouis.LiblouisTableResolver;

import org.osgi.service.component.annotations.Activate;
import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;
import org.osgi.service.component.annotations.ReferenceCardinality;
import org.osgi.service.component.annotations.ReferencePolicy;
import org.osgi.service.component.ComponentContext;

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
	
	@Activate
	protected void activate(ComponentContext context, Map<?,?> properties) throws Exception {
		super.activate(context, properties);
	}
	
	// trick to resolve common tables without having to add "http://www.liblouis.org/tables/" to the
	// include rules
	
	@Override
	public URL resolve(URI resource) {
		URL r = super.resolve(resource);
		if (r == null) {
			URI relative = URIs.relativize(makeUnpackDir(), resource);
			if (!relative.equals(resource)
			    && (relative.toString().equals("digits6DotsPlusDot6.uti")
			        || relative.toString().equals("latinLetterDef6Dots.uti")))
				return resolver.resolve(relative);
		}
		return r;
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
}
