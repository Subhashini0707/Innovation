package org.test;

public class MaxMin {

	public static void main(String[] args) {

		int arr[][] = { { 25, 20, 10 }, { 60, 55, 80 } };

		int max = arr[0][0];
		int min = arr[0][0];
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				if (arr[i][j] > max) {
					max = arr[i][j];
				} else if (arr[i][j] < min) {
					min = arr[i][j];

				}

			}
		}
		System.out.println("max number" + max);
		System.out.println("min number" + min);
	}
}
