import static org.junit.Assert.assertEquals;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;

import org.junit.Test;

public class TabToLiblouisTest {
	@Test
	public void test() throws IOException {
		final StringReader in = new StringReader(getSbsDeAccentsCh());
		final StringWriter out = new StringWriter();
		TabToLiblouis.translate(new BufferedReader(in), out);
		assertEquals(
				""
						+ "\n"
						+ "\n"
						+ "#-------------------------------------------------------------------------------\n"
						+ "#\n"
						+ "#  sbs-de-accents-ch.mod\n"
						+ "#\n"
						+ "#  Akzentbuchstaben (nur Schweizer ausführlich)\n"
						+ "#\n"
						+ "#-------------------------------------------------------------------------------\n"
						+ "\n" + "pass2 @123568   @4-12356\n"
						+ "pass2 @168      @4-1\n" + "pass2 @1678     @4-16\n"
						+ "pass2 @34678    @4-1\n" + "pass2 @345678   @4-1\n"
						+ "pass2 @478      @1-15\n"
						+ "pass2 @1234678  @4-12346\n"
						+ "pass2 @23468    @4-2346\n"
						+ "pass2 @1234568  @4-123456\n"
						+ "pass2 @12678    @4-126\n"
						+ "pass2 @12468    @4-1246\n"
						+ "pass2 @348      @4-34\n" + "pass2 @1468     @4-24\n"
						+ "pass2 @14678    @4-146\n"
						+ "pass2 @124568   @4-12456\n"
						+ "pass2 @23458    @4-145\n"
						+ "pass2 @13458    @4-1345\n"
						+ "pass2 @3468     @4-346\n"
						+ "pass2 @14568    @4-135\n"
						+ "pass2 @145678   @4-1456\n"
						+ "pass2 @1358     @4-135\n"
						+ "pass2 @24678    @4-135\n"
						+ "pass2 @234568   @4-23456\n"
						+ "pass2 @1568     @4-136\n"
						+ "pass2 @15678    @4-156\n"
						+ "pass2 @24568    @4-13456\n"
						+ "pass2 @12348    @4-2345\n"
						+ "pass2 @134568   @4-13456\n"
						+ "first three chars deleted\n"
						+ "# passed on as comment\n"
						+ "pass2 @246789   @4-246\n",

				out.toString());
	}

	private String getSbsDeAccentsCh() {
		final StringBuilder sb = new StringBuilder();
		sb.append("\n");
		sb.append("\n");
		sb.append("#-------------------------------------------------------------------------------\n");
		sb.append("#\n");
		sb.append("#  sbs-de-accents-ch.mod\n");
		sb.append("#\n");
		sb.append("#  Akzentbuchstaben (nur Schweizer ausführlich)\n");
		sb.append("#\n");
		sb.append("#-------------------------------------------------------------------------------\n");
		sb.append("\n");
		sb.append("#=#pass2 @123568   @4-12356\n");
		sb.append("#=#pass2 @168      @4-1\n");
		sb.append("#=#pass2 @1678     @4-16\n");
		sb.append("#=#pass2 @34678    @4-1\n");
		sb.append("#=#pass2 @345678   @4-1\n");
		sb.append("#=#pass2 @478      @1-15\n");
		sb.append("#=#pass2 @1234678  @4-12346\n");
		sb.append("#=#pass2 @23468    @4-2346\n");
		sb.append("#=#pass2 @1234568  @4-123456\n");
		sb.append("#=#pass2 @12678    @4-126\n");
		sb.append("#=#pass2 @12468    @4-1246\n");
		sb.append("#=#pass2 @348      @4-34\n");
		sb.append("#=#pass2 @1468     @4-24\n");
		sb.append("#=#pass2 @14678    @4-146\n");
		sb.append("#=#pass2 @124568   @4-12456\n");
		sb.append("#=#pass2 @23458    @4-145\n");
		sb.append("#=#pass2 @13458    @4-1345\n");
		sb.append("#=#pass2 @3468     @4-346\n");
		sb.append("#=#pass2 @14568    @4-135\n");
		sb.append("#=#pass2 @145678   @4-1456\n");
		sb.append("#=#pass2 @1358     @4-135\n");
		sb.append("#=#pass2 @24678    @4-135\n");
		sb.append("#=#pass2 @234568   @4-23456\n");
		sb.append("#=#pass2 @1568     @4-136\n");
		sb.append("#=#pass2 @15678    @4-156\n");
		sb.append("#=#pass2 @24568    @4-13456\n");
		sb.append("#=#pass2 @12348    @4-2345\n");
		sb.append("#=#pass2 @134568   @4-13456\n");
		sb.append("### ignored entirely (comment)\n");
		sb.append("#=#first three chars deleted\n");
		sb.append("# passed on as comment\n");
		sb.append("#=#pass2 @246789   @4-246\n");
		return sb.toString();
	}

	@Test
	public void testGa() throws IOException {
		final StringReader in = new StringReader(
				""
						+ "always                               ascii                  AS'CII\n"
						+ "before_h_begmidword              gewichte                   &tW#(\n");
		final StringWriter out = new StringWriter();
		TabToLiblouis.translate(new BufferedReader(in), out);
		assertEquals("" + "always ascii 1-234-6-14-24-24\n"
				+ "before h begmidword gewichte 12346-e-2456-3456-236\n",
				out.toString());

	}
}
