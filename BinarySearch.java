package org.test;

import java.util.Scanner;

public class BinarySearch {
	
		static String res = "not present";
		static Scanner s = new Scanner(System.in);

		public static void main(String[] args) {
			int[] a = { 10, 20, 30, 40, 50, 60 ,70};
			System.out.println("Enter the keyelement");
			int key = s.nextInt();
			int l = 0, h = a.length - 1, mid = ((l + h) / 2);
			while (h >= l) {
				mid = ((l + h)) / 2;
				if (a[mid] == key) {
					res = "pesent";
					break;
				} else if (key > a[mid]) {
					l = mid + 1;
				} else {
					h = mid - 1;
				}
			}
			System.out.println(res);

		}

	}

