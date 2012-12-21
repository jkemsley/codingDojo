using System;
using System.Linq;
 
public class Fizzbuzz
{
	public static void Main ()
	{

		int[] nos = Enumerable.Range(1, 100).ToArray();

		foreach (int i in nos) {

			String s = IsFizz(i);
			s += IsBuzz(i);

			if(s.Equals("")) {
				Console.WriteLine(i);
			} else {
				Console.WriteLine(s);
			}
		}
	}

	public static String IsFizz(int v) {
		if(v % 3 == 0 || v.ToString().Contains("3")) {
			return "Fizz";
		}
		return "";
	}

	public static String IsBuzz(int v) {
		if(v % 5 == 0 || v.ToString().Contains("5")) {
			return "Buzz";
		}
		return "";
	}
}