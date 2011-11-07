import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.StringTokenizer;

public class WhiteToLiblouis {
	// static final String PATH =
	// "d:\\chr\\xmlwork\\liblouis\\sbs-braille-tables\\tables_src\\sbs-white\\";
	// static final String IN = PATH + "white.mod_src";
	// static final String OUT_PATH =
	// "d:\\chr\\xmlwork\\liblouis\\sbs-braille-tables\\tables\\";
	private static final String IN = "white.mod_src";
	private static final String OUT_PATH = "../../tables/";
	private static final String OUT_KURZ = OUT_PATH + "sbs-de-g2-white.mod";
	private static final String OUT_VOLL = OUT_PATH + "sbs-de-g1-white.mod";

	/**
	 * @param args
	 * @throws IOException
	 */
	public static void main(final String[] args) throws IOException {

		if (args.length != 3) {
			System.out.println();
			System.out.println("3 args required: source kurz voll.");
			System.out.println();
			System.out
					.println("E.g. white.mod_src sbs-de-g2-white.mod  sbs-de-g1-white.mod");
			System.out.println();
			System.exit(1);
		}

		final Reader inputStreamReader = new InputStreamReader(
				new FileInputStream(args[0]), "ISO-8859-1");
		final BufferedReader in = new BufferedReader(inputStreamReader);
		// final Writer outKurz = new BufferedWriter(new OutputStreamWriter(new
		// FileOutputStream(OUT_KURZ), "ISO-8859-1"));
		// final Writer outVoll = new BufferedWriter(new OutputStreamWriter(new
		// FileOutputStream(OUT_VOLL), "ISO-8859-1"));
		final Writer outKurz = new BufferedWriter(new OutputStreamWriter(
				new FileOutputStream(args[1]), "ISO-8859-1"));
		final Writer outVoll = new BufferedWriter(new OutputStreamWriter(
				new FileOutputStream(args[2]), "ISO-8859-1"));

		translate(in, outKurz, outVoll);
		in.close();
		outKurz.close();
		outVoll.close();
		System.out.println("\nDone.");
	}

	static void translate(final BufferedReader in, final Writer outKurz,
			final Writer outVoll) throws IOException {
		String zeile;
		int i = 0;
		System.out.print("Schreibe ");
		while ((zeile = in.readLine()) != null) {
			i++;
			final StringTokenizer st = new StringTokenizer(zeile, " ");
			// Codespalte überspringen
			st.nextToken();
			final String ink = st.nextToken().replaceAll("#", "");
			final String kurz = hyphenCheck(st.nextToken().replaceAll("z", ""));
			final String voll = hyphenCheck(st.nextToken());
			// Eszett für CH auflösen
			if (ink.indexOf("ß") != -1) {
				writeLine(outKurz, outVoll, ink.replaceAll("ß", "ss"), kurz
						.replaceAll("tß", "^").replaceAll("ß", "^"), voll
						.replaceAll("t\\^", "StS").replaceAll("\\^", "SS"));
			}
			// Eszett nur alte Rechtschreibung
			if (ink.indexOf("~") != -1) {
				writeLine(outKurz, outVoll, ink.replace('~', 's'), kurz,
						voll.replaceAll("§", "SS"));
			}
			writeLine(outKurz, outVoll, ink.replaceAll("s~", "ß"), kurz, voll);
			if (i % 25000 == 0) {
				System.out.print(".");
			}
		}
	}

	static void writeLine(final Writer outKurz, final Writer outVoll,
			final String ink, final String kurz, final String voll)
			throws IOException {
		final String opcode = "word";
		final String blank = " ";
		final String newLine = "\n";
		final StringBuilder k = new StringBuilder();
		k.append(opcode);
		k.append(blank);
		k.append(ink);
		k.append(blank);
		k.append(Braille.din2dots(kurz));
		k.append(newLine);
		outKurz.write(k.toString());
		final StringBuilder v = new StringBuilder();
		v.append(opcode);
		v.append(blank);
		v.append(ink);
		v.append(blank);
		v.append(Braille.din2dots(voll));
		v.append(newLine);
		outVoll.write(v.toString());
	}

	static String hyphenCheck(final String s) {
		// Trennmarke an Position 2 nach Wortgrenze eliminieren.
		final String s2 = s.replaceAll("(w.)[ant]", "$1");
		// Trennmarke an Position 2 im Wort eliminieren
		return s2.length() > 2 ? s2.replaceAll("^(.)[want]", "$1") : s2;
	}

}
