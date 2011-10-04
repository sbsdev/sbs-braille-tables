import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.StringTokenizer;

public class TabToLiblouis {
	
	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {

		final InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream (args[0]), "ISO-8859-1" );
		final BufferedReader in = new BufferedReader(inputStreamReader);
		final Writer out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(args[1]), "ISO-8859-1"));

		String zeile;
		while((zeile = in.readLine()) != null) {
			if(zeile.isEmpty() | zeile.startsWith("#")) {
				if(zeile.startsWith("###")) {
					continue;
				}
				if(zeile.startsWith("#")) {
					if(zeile.startsWith("#=#")) {
						zeile = zeile.substring(3);
					}
					out.write(zeile);
				}
				out.write("\n");
				continue;
			}
			final StringTokenizer st = new StringTokenizer(zeile," ");
			final String opcode = st.nextToken().replace('_', ' ');
			final String ink = st.nextToken();
			final String brl = st.nextToken();
			if (ink.indexOf("~") != -1) {
				writeLine(out, opcode, ink.replace('~', 's'), brl);
			}

			writeLine(out, opcode, ink.replaceAll("s~", "ß"), brl);
		}
		in.close();
		out.close();
		System.out.println("Done.");
	}

	private static void writeLine(final Writer out, final String opcode, final String ink, final String brl) throws IOException {
		final String blank = " ";
		final String newLine = "\n";
		final StringBuilder s = new StringBuilder();
		s.append(opcode);
		s.append(blank);
		s.append(ink);
		s.append(blank);
		s.append(Braille.din2dots(brl));
		s.append(newLine);
		out.write(s.toString());
//		out.write(opcode + " " + ink + " " + Braille.din2dots(brl) + "\n");
	}

}
	
