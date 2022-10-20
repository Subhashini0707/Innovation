package org.two;
import  org.two.Atm;
import java.util.Scanner;
public class Pin extends Exception{
	

		public static void atm() throws Pin {
			Scanner s = new Scanner(System.in);
			System.out.println("Enter the Pin");
			int Pin = s.nextInt();
			int arr[] = { 9080, 1221, 5548, 6666 };
			for (int i = 0; i < arr.length; i++) {
				if (arr[i] == Pin) {
					System.out.println("matched");
					break;	
				} else if (i==arr.length-1) {
					throw new Pin();		
				}
			}
		}
	}

