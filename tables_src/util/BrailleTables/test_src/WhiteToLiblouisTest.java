import static org.junit.Assert.assertEquals;

import java.util.StringTokenizer;

import org.junit.Test;

public class WhiteToLiblouisTest {
	@Test
	public void test1() {
		assertEquals("wh", WhiteToLiblouis.hyphenCheck("wha"));
	}

	@Test
	public void test2() {
		assertEquals("wh-wh", WhiteToLiblouis.hyphenCheck("wha-wha"));
	}

	@Test
	public void testStringTokenizerLumpsDelimitersTogether() {
		final String line = "* aachenbesuch                                      AAt4Cw;tSU4                                       AAt4ENwBEtSU4";
		final StringTokenizer st = new StringTokenizer(line, " ");
		while (st.hasMoreElements()) {
			System.out.println("<" + st.nextToken() + ">");
		}
	}

	@Test
	public void testSplitRegexLumpingDelimitersExplicit() {
		final String line = "* aachenbesuch                                      AAt4Cw;tSU4                                       AAt4ENwBEtSU4";
		final String[] result = line.split("\\s+");
		for (final String r : result) {
			System.out.println("<" + r + ">");
		}

	}
}
