package org.test;
import java.util.Arrays;
import java.util.Iterator;
public class Smallest {


	

		public static void main(String[] args) {

			int[] a = { 2, 4, 8 };
			int[] b = { 8, 9, 4 };
			int[] c = { 9, 4, 6 };
			Arrays.sort(a);
			Arrays.sort(b);
			Arrays.sort(c);
			for (int i = 0; i < a.length; i++) {
				for (int j = 0; j < b.length; j++) {
					if (a[i] == b[j]) {
						for (int k = 0; k < c.length; k++) {
							if (a[i] == c[k]) {
								System.out.println(a[k]);
							}
						}
					}
				}
			}

		}

	}


