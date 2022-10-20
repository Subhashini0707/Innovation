package org.test;

import java.util.Scanner;

public class Palindrome {
	

	 

	     public static void main(String[] args) {
	     int sum=0,temp,r;
	     int num;
	     System.out.println("Enter a number : ");
	     Scanner sc=new Scanner(System.in);
	     num=sc.nextInt();
	     temp=num;
	     while(num>0)
	     {
	    	 r=num%10;
	    	 sum=(sum*10)+r;
	    	 num=num/10;
	     }
	     if(temp==sum)
	     {
	    	 System.out.println("Palindrome");
	     }
	     else
	     {
	    	 System.out.println("Not an Palindrome");
	     }
		}

	}


