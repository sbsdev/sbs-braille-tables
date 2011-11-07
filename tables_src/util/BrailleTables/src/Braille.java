import java.util.HashMap;

public class Braille {

	private static final HashMap<Character, String> d2d = new HashMap<Character, String>(
			120, 0.75F);

	static {
		loadD2D();
	}

	public static String din2dots(final String din) {
		if (din == null || din.length() == 0)
			return "";
		final StringBuilder dots = new StringBuilder(d2d.get(din.charAt(0)));
		for (int i = 1; i < din.length(); i++) {
			dots.append("-");
			dots.append(d2d.get(din.charAt(i)));
		}
		return dots.toString();
	}

	private static void loadD2D() {
		d2d.put('A', "1");
		d2d.put('B', "12");
		d2d.put('C', "14");
		d2d.put('D', "145");
		d2d.put('E', "15");
		d2d.put('F', "124");
		d2d.put('G', "1245");
		d2d.put('H', "125");
		d2d.put('I', "24");
		d2d.put('J', "245");
		d2d.put('K', "13");
		d2d.put('L', "123");
		d2d.put('M', "134");
		d2d.put('N', "1345");
		d2d.put('O', "135");
		d2d.put('P', "1234");
		d2d.put('Q', "12345");
		d2d.put('R', "1235");
		d2d.put('S', "234");
		d2d.put('T', "2345");
		d2d.put('U', "136");
		d2d.put('V', "1236");
		d2d.put('X', "1346");
		d2d.put('Y', "13456");
		d2d.put('Z', "1356");
		d2d.put('0', "346");
		d2d.put('1', "16");
		d2d.put('2', "126");
		d2d.put('3', "146");
		d2d.put('4', "1456");
		d2d.put('5', "156");
		d2d.put('6', "1246");
		d2d.put('7', "12456");
		d2d.put('8', "1256");
		d2d.put('9', "246");
		d2d.put('&', "12346");
		d2d.put('%', "123456");
		d2d.put('[', "12356");
		d2d.put('^', "2346");
		d2d.put(']', "23456");
		d2d.put('W', "2456");
		d2d.put(',', "2");
		d2d.put(';', "23");
		d2d.put(':', "25");
		d2d.put('/', "256");
		d2d.put('?', "26");
		d2d.put('+', "235");
		d2d.put('=', "2356");
		d2d.put('(', "236");
		d2d.put('*', "35");
		d2d.put(')', "356");
		d2d.put('.', "3");
		d2d.put('\\', "34");
		d2d.put('@', "345");
		d2d.put('#', "3456");
		d2d.put('"', "4");
		d2d.put('!', "5");
		d2d.put('>', "45");
		d2d.put('$', "46");
		d2d.put('_', "456");
		d2d.put('<', "56");
		d2d.put('-', "36");
		d2d.put('\'', "6");
		d2d.put('ß', "2346");
		d2d.put('§', "2346"); // bedingtes Eszett
		d2d.put('|', "2346"); // Eszett bei groß, schließ, ...
		d2d.put('à', "123568");
		d2d.put('á', "168");
		d2d.put('â', "1678");
		d2d.put('ã', "34678");
		d2d.put('å', "345678");
		d2d.put('æ', "478");
		d2d.put('ç', "1234678");
		d2d.put('è', "23468");
		d2d.put('é', "1234568");
		d2d.put('ê', "12678");
		d2d.put('ë', "12468");
		d2d.put('ì', "348");
		d2d.put('í', "1468");
		d2d.put('î', "14678");
		d2d.put('ï', "124568");
		d2d.put('ð', "23458");
		d2d.put('ñ', "13458");
		d2d.put('ò', "3468");
		d2d.put('ó', "14568");
		d2d.put('ô', "145678");
		d2d.put('õ', "1358");
		d2d.put('ø', "24678");
		d2d.put('ù', "234568");
		d2d.put('ú', "1568");
		d2d.put('û', "15678");
		d2d.put('ý', "24568");
		d2d.put('þ', "12348");
		d2d.put('ÿ', "134568");
		d2d.put('', "246789");
		d2d.put('b', "0");
		d2d.put('m', "d");
		d2d.put('t', "e");
		d2d.put('w', "f");
		d2d.put('a', "ca");
		d2d.put('n', "cb");
		d2d.put('p', "cd");
		d2d.put('k', "ce");
		d2d.put('v', "36a"); // P36 ohne nachfolgende Trennmarke "m" (für "ver"
								// u.ä.)
	}

}
