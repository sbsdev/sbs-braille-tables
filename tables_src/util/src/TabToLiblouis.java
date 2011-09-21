import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.StringTokenizer;

public class TabToLiblouis {
	
	static BufferedReader in;
	static BufferedWriter out;
	static Braille dots = new Braille();
	
	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {

		final InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream (args[0]), "ISO-8859-1" );
		in = new BufferedReader(inputStreamReader);
		out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(args[1]), "ISO-8859-1"));

		String zeile, opcode, ink, brl;
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
			StringTokenizer st = new StringTokenizer(zeile," ");
			opcode = st.nextToken().replace('_', ' ');
			ink = st.nextToken();
			brl = st.nextToken();
			if (ink.indexOf("~") != -1) {
				writeLine(opcode, ink.replace('~', 's'), brl);
			}

			writeLine(opcode, ink.replaceAll("s~", "ß"), brl);
		}
		in.close();
		out.close();
		System.out.println("Done.");
	}

	private static void writeLine(String opcode, String ink, String brl) throws IOException {
		String blank = " ";
		String newLine = "\n";
		StringBuilder s = new StringBuilder();
		s.append(opcode);
		s.append(blank);
		s.append(ink);
		s.append(blank);
		s.append(dots.din2dots(brl));
		s.append(newLine);
		out.write(s.toString());
//		out.write(opcode + " " + ink + " " + din2dots(brl) + "\n");
	}

}
	
