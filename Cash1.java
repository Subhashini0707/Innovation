package org.two;
import java.util.Scanner;
public class Cash1  extends Exception {
	

		
		static void cash()throws Cash1 {
			
			int amountatm=10000;
			Scanner s2= new Scanner(System.in);
			int Useramount = s2.nextInt();
			if(Useramount > amountatm) {
				throw new Cash1();
			}
			else if (Useramount<=80000) {
				System.out.println("ok");			
			}
		}	
	}


