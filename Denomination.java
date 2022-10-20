package org.two;
import java.util.Scanner;
public class Denomination extends Exception{
	



		
		public static void denominationAtm()throws Denomination{
			Scanner s3 = new Scanner(System.in);
			System.out.println("Avalible cash :1.2000 2.500");
			System.out.println("Enter the amount");
			int cash = s3.nextInt();
			if (cash % 2000 ==0 || cash % 500==0) {
				System.out.println("Collect the money");
			}
			else {
				throw new Denomination();
			}
		}
		
		
	}

