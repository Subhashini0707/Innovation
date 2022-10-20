package org.test;

import java.util.Scanner;

public class Words {



		public static void main(String[] args) {
		
		System.out.println("Enter the number");
		Scanner sc = new Scanner(System.in);
		int number = sc.nextInt();
		String word1[]= {"Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine","Ten", "Eleven", "Twelve", "Thirteen",
		"Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"};
		String word2[]= {"",  "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"};
		if(number<20 && number>=0) {
		System.out.println(word1[number]);
		}
		else if(number>=20 && number<100) {
		int val =number/10;
		int rem =number%10;
		if(rem==0) {
		System.out.println(word2[val]);
		}
		else
		System.out.println(word2[val] + " " + word1[rem]);

		}
		else if (number>=100) {
		int val =number/100;
		int num =number%100;
		int rem = number % 10;
		System.out.println(word1[val] + "Hundread and "+ word2[num/10]+ " "+word1[rem]   );
		}
		}
	}


