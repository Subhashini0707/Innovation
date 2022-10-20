package org.test;
import java.util.Scanner;
public class Vending {
		public static void main(String[] args) {
		int amount=0;
		int selection=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the amount");
		amount=sc.nextInt();
		if(amount>=5) {
		while(true)
		{
		int option=0;
		System.out.println("enter number to get the available items");
		System.out.println("1.fanta rs 10");
		System.out.println("2.coke rs 15");
		System.out.println("3.lays rs 5");
		option=sc.nextInt();
		switch(option)
		{
		 case 1:
		if(amount>=10)
		{
		amount=amount-10;
		System.out.println("you purchased fanta");
		System.out.println("balance amount is " + amount);
		}
		else {System.out.println("Insufficient balance! balance amount is "+ amount);}
		break;
		 case 2:
		if(amount>=15)
		{
		amount=amount-15;
		System.out.println("you purchased coke");
		System.out.println("balance amount is " + amount);
		}
		else {System.out.println("Insufficient balance! balance amount is "+ amount);}
		break;
		 case 3:
		if(amount>=5)
		{
		amount=amount-5;
		System.out.println("you purchased lays");
		System.out.println("balance amount is " + amount);
		}
		break;
		 default:
			 System.out.println("Enter a valid item");
	         break;
		}
		
		System.out.println("do you want to repeat transaction? 1.yes  2.no");
		selection=sc.nextInt();
		if(selection==2)
		{
		System.out.println("balance amount is " + amount);
		break;}
		
		else {
			if(amount<5)
			{
				System.out.println("Insufficient balance! balance amount is "+ amount);
				break;
				}
		}
		}
		}
	else {	
	System.out.println("Insufficient balance! balance amount is "+ amount); }
		}
		}

