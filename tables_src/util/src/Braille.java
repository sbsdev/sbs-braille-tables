import java.util.HashMap;

public class Braille {
	
	static HashMap<Character, String> d2d = new HashMap<Character, String>(120,0.75F);
	
	Braille () {
		loadD2D();
	}
	
	String din2dots(String din) {
		StringBuilder dots = new StringBuilder();
		for (int i = 0; i < din.length(); i++) {
			Character c = new Character(din.charAt(i));
			if (i > 0) {
				dots.append("-");
			}
			dots.append(d2d.get(c));
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
	    d2d.put('�', "2346");
	    d2d.put('�', "2346");     // bedingtes Eszett
	    d2d.put('|', "2346");     // Eszett bei gro�, schlie�, ...
	    d2d.put('�', "123568");
	    d2d.put('�', "168");
	    d2d.put('�', "1678");
	    d2d.put('�', "34678");
	    d2d.put('�', "345678");
	    d2d.put('�', "478");
	    d2d.put('�', "1234678");
	    d2d.put('�', "23468");
	    d2d.put('�', "1234568");
	    d2d.put('�', "12678");
	    d2d.put('�', "12468");
	    d2d.put('�', "348");
	    d2d.put('�', "1468");
	    d2d.put('�', "14678");
	    d2d.put('�', "124568");
	    d2d.put('�', "23458");
	    d2d.put('�', "13458");
	    d2d.put('�', "3468");
	    d2d.put('�', "14568");
	    d2d.put('�', "145678");
	    d2d.put('�', "1358");
	    d2d.put('�', "24678");
	    d2d.put('�', "234568");
	    d2d.put('�', "1568");
	    d2d.put('�', "15678");
	    d2d.put('�', "24568");
	    d2d.put('�', "12348");
	    d2d.put('�', "134568");
	    d2d.put('�', "246789");
	    d2d.put('b', "0");
	    d2d.put('m', "d");
	    d2d.put('t', "e");
	    d2d.put('w', "f");
	    d2d.put('a', "ca");
	    d2d.put('n', "cb");
	    d2d.put('p', "cd");
	    d2d.put('k', "ce");
	    d2d.put('v', "36a");    // P36 ohne nachfolgende Trennmarke "m" (f�r "ver" u.�.)
	}

}

