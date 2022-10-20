package org.two;
import java.util.Scanner;
public class Gear2 extends Gear{
	

	

	
	public static void main(String[] args) {
		Scanner s= new Scanner(System.in);
		System.out.println("Enter the limits");
		int imp = s.nextInt();
		Gear g= new Gear();
		g.limt(imp);
		System.out.println("Do want to decrease the limits");
		System.out.println("1.yes 2.no");
		int imp2 = s.nextInt();
		if (imp2==1) {
			imp=imp-1;
			g.limt(imp);
			
		}
		else {
			System.out.println("good to go");
		}
	}
}
