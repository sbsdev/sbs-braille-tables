import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.StringTokenizer;
import java.util.regex.*;

public class WhiteToLiblouis {
//	static final String PATH = "d:\\chr\\xmlwork\\liblouis\\sbs-braille-tables\\tables_src\\sbs-white\\";
//	static final String IN = PATH + "white.mod_src";
//	static final String OUT_PATH = "d:\\chr\\xmlwork\\liblouis\\sbs-braille-tables\\tables\\";
	static final String IN = "white.mod_src";
	static final String OUT_PATH = "..\\..\\tables\\";
	static final String OUT_KURZ = OUT_PATH + "sbs-de-g2-white.mod";
	static final String OUT_VOLL = OUT_PATH + "sbs-de-g1-white.mod";
	static BufferedReader in;
	static BufferedWriter outKurz;
	static BufferedWriter outVoll;
	static Braille dots;

	/**
	 * @param args
	 * @throws IOException
	 */
	public static void main(String[] args) throws IOException {

		in = new BufferedReader(new FileReader(IN));
		outKurz = new BufferedWriter(new FileWriter(OUT_KURZ));
		outVoll = new BufferedWriter(new FileWriter(OUT_VOLL));
		dots = new Braille();

		String zeile, ink, kurz, voll;
		int i = 0;
		System.out.print("Schreibe ");
		while((zeile = in.readLine()) != null) {
			i++;
			StringTokenizer st = new StringTokenizer(zeile," ");
			// Codespalte �berspringen
			st.nextToken();
			ink = st.nextToken().replaceAll("#", "");
			kurz = st.nextToken().replaceAll("z", "");
			kurz = hyphenCheck(kurz);
			voll = st.nextToken();
			voll = hyphenCheck(voll);
			// Eszett f�r CH aufl�sen
			if (ink.indexOf("�") != -1) {
				writeLine(ink.replaceAll("�", "ss"), kurz.replaceAll("t�", "^").replaceAll("�", "^"), voll.replaceAll("t\\^", "StS").replaceAll("\\^", "SS"));
			}
			// Eszett nur alte Rechtschreibung
			if (ink.indexOf("~") != -1) {
				writeLine(ink.replace('~', 's'), kurz, voll.replaceAll("�", "SS"));
			}
			writeLine(ink.replaceAll("s~", "�"), kurz, voll);
			if (i % 25000 == 0) System.out.print(".");
		}
		in.close();
		outKurz.close();
		outVoll.close();
		System.out.println("\nDone.");
	}

	private static void writeLine(String ink, String kurz, String voll) throws IOException {
		String opcode = "word";
		String blank = " ";
		String newLine = "\n";
		StringBuilder k = new StringBuilder();
		k.append(opcode);
		k.append(blank);
		k.append(ink);
		k.append(blank);
		k.append(dots.din2dots(kurz));
		k.append(newLine);
		outKurz.write(k.toString());
		StringBuilder v = new StringBuilder();
		v.append(opcode);
		v.append(blank);
		v.append(ink);
		v.append(blank);
		v.append(dots.din2dots(voll));
		v.append(newLine);
		outVoll.write(v.toString());
	}

	private static String hyphenCheck (String s) {
		// Trennmarke an Position 2 nach Wortgrenze eliminieren.
//		Pattern p = Pattern.compile("w.t");
		Pattern p = Pattern.compile("w.[ant]");
		Matcher m = p.matcher(s);
		while (m.find()) {
			s = s.substring(0,m.end()-1) + s.substring(m.end());
		}
		// Trennmarke an Position 2 im Wort eliminieren
		if (s.length() > 2) {
			if (s.charAt(1) == 't' | s.charAt(1) == 'w' | s.charAt(1) == 'a' | s.charAt(1) == 'n') {
				s = s.substring(0,1) + s.substring(2);
			}
		}
		return s;
	}
	
}
