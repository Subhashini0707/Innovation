package org.test;

import java.util.Scanner;
import java.util.Vector;

public class vector {
	static Scanner sc = new Scanner(System.in);
	static Vector<Integer> v1 = new Vector<Integer>();
	static Vector<String> v = new Vector<String>();

	public static void main(String[] args) {
		System.out.println("Available Products ");
		v.add("Apple");
		v.add("Mango");
		v.add("Orange");
		v.add("Jackfruite");
		v.add("GreenApple");
		v.add("Pinapple");
		
		System.out.println(v);
		v1.add(50);
		v1.add(40);
		v1.add(10);
		v1.add(60);
		v1.add(15);
		v1.add(60);
		
		System.out.println("1.buy,2.sell");
		int input = sc.nextInt();
		switch (input) {
		case 1:
			buy();
			break;
		case 2:
			sell();
			break;
		default:
			System.out.println("please correct your input");
		}

	}

	static void buy() {
		System.out.println("enter what product you want to buy");
		String product = sc.next();
		System.out.println("enter your quantity");
		int quantity = sc.nextInt();
		int d = v.indexOf(product);
		int d1 = v1.get(d);
		int total = d1 + quantity;

		System.out.println("Total product count is : " + d1);
		System.out.println("Your purchase product :" + total);
		v1.set(d, total);
		System.out.println(v1);
	}

	static void sell() {
		System.out.println("enter what product you want to sell");
		String product = sc.next();
		System.out.println("enter your quantity");
		int quantity = sc.nextInt();
		int d = v.indexOf(product);
		int d1 = v1.get(d);
		int total = d1 - quantity;
		v1.set(d, total);
		System.out.println(v1);
		System.out.println("Total product count is : " + d1);
		System.out.println("Your purchase product :" + total);

	}

}