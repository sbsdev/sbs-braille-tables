import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class BrailleTest {

	@Test
	public void testNullInput() {
		assertEquals("", Braille.din2dots(null));
	}

	@Test
	public void testEmptyInput() {
		assertEquals("", Braille.din2dots(""));
	}

	@Test
	public void testA() {
		assertEquals("1", Braille.din2dots("A"));
	}

	@Test
	public void testETrema() {
		assertEquals("12468", Braille.din2dots("ë"));
	}

	@Test
	public void test2Chars() {
		assertEquals("1-1", Braille.din2dots("AA"));
	}

	@Test
	public void test3Chars() {
		assertEquals("1-1-12468", Braille.din2dots("AAë"));
	}
}
