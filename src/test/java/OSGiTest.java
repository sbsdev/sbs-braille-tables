import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;

import org.daisy.pipeline.braille.common.CSSStyledText;
import static org.daisy.pipeline.braille.common.Query.util.mutableQuery;
import static org.daisy.pipeline.braille.common.util.Strings.join;
import static org.daisy.pipeline.braille.common.util.URIs.asURI;
import org.daisy.pipeline.braille.liblouis.LiblouisTablePath;
import org.daisy.pipeline.braille.liblouis.LiblouisTranslator;

import org.daisy.pipeline.junit.AbstractTest;

import static org.daisy.pipeline.pax.exam.Options.thisPlatform;

import org.junit.Assert;
import org.junit.Test;

public class OSGiTest extends AbstractTest {

	// for some reason this is needed to make the test work
	@Inject
	LiblouisTablePath path;
	
	@Inject
	LiblouisTranslator.Provider translatorProvider;
	
	private static final String g1_table = join(
		new String[]{
			"sbs.dis",
			"sbs-de-core6.cti",
			"sbs-special.cti",
			"sbs-de-accents.cti",
			"sbs-whitespace.mod",
			"sbs-de-letsign.mod",
			"sbs-de-begendcaps.mod",
			"sbs-numsign.mod",
			"sbs-litdigit-lower.mod",
			"sbs-de-core.mod",
			"sbs-de-g0-core.mod",
			"sbs-de-g1-core.mod",
			"sbs-de-accents.mod",
			"sbs-de-accents-ch.mod",
			"sbs-de-accents-reduced.mod",
			"sbs-special.mod"
		},
		","
	);
		
	@Test
	public void testTranslator() {
		Assert.assertEquals(
			braille("WO4ENENDE"),
			translatorProvider.get(mutableQuery().add("liblouis-table", g1_table).add("output", "ascii"))
			                  .iterator().next().fromStyledTextToBraille()
			                  .transform(text("wochenende")));
	}
	
	@Override
	protected String[] testDependencies() {
		return new String[]{
			brailleModule("liblouis-core"),
			"org.daisy.pipeline.modules.braille:liblouis-native:jar:" + thisPlatform() + ":?",
			brailleModule("liblouis-tables"),
		};
	}
	
	private Iterable<CSSStyledText> text(String... text) {
		List<CSSStyledText> styledText = new ArrayList<CSSStyledText>();
		for (String t : text)
			styledText.add(new CSSStyledText(t, ""));
		return styledText;
	}
	
	private Iterable<String> braille(String... text) {
		return Arrays.asList(text);
	}
}
