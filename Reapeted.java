package org.test;

import java.util.Scanner;

public class Reapeted {

		public static void main(String [] args)
		{
		 String[] s= {"abc","def","ghi"};
		 Scanner s1=new Scanner(System.in);
		 System.out.println("enter string");
		 String s2=s1.next();
		 int count=0;
		 for (int i = 0; i < s.length; i++)
		 {
			 if(s[i].equals(s2))
			 {
	           count++;
			 }
		 }
		 if(count!=0)
		 {
			 System.out.println(true);
		 }
		 else 
		 {
			 System.out.println(false);
		 }
		 }			
	}

