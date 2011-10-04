import static org.junit.Assert.assertEquals;

import java.util.StringTokenizer;

import org.junit.Test;

public class WhiteToLiblouisTest {
	@Test
	public void test1() {
		assertEquals("wh", WhiteToLiblouis.hyphenCheck("wha"));
	}

	@Test
	public void test3() {
		assertEquals("wh", WhiteToLiblouis.hyphenCheck("wht"));
	}

	@Test(expected = StringIndexOutOfBoundsException.class)
	public void test2() {
		assertEquals("wh-wh", WhiteToLiblouis.hyphenCheck("wha-wha"));
	}

	@Test
	public void testStringTokenizerLumpsDelimitersTogether() {
		final String line = "* aachenbesuch                                      AAt4Cw;tSU4                                       AAt4ENwBEtSU4";
		final StringTokenizer st = new StringTokenizer(line, " ");
		final String[] expected = { "*", "aachenbesuch", "AAt4Cw;tSU4",
				"AAt4ENwBEtSU4" };
		int i = 0;
		while (st.hasMoreElements()) {
			assertEquals(expected[i++], st.nextToken());
		}
	}

	@Test
	public void testSplitRegexLumpingDelimitersExplicit() {
		final String line = "* aachenbesuch                                      AAt4Cw;tSU4                                       AAt4ENwBEtSU4";
		final String[] result = line.split("\\s+");
		final String[] expected = { "*", "aachenbesuch", "AAt4Cw;tSU4",
				"AAt4ENwBEtSU4" };
		int i = 0;
		for (final String r : result) {
			assertEquals(expected[i++], r);
		}

	}
}
