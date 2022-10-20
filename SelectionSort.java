package org.test;

public class SelectionSort {
	public static void main(String[] args) {
		int arr[] = { 10, 55, 22, 33, 44, 90, 88 };
		System.out.println("before sorting");
		for (int i = 0; i < arr.length; i++) {
			
			System.out.print(arr[i]+" ");
		}
		for (int i = 0; i < arr.length; i++) {
			for (int j = i + 1; j < arr.length; j++) {
				if (arr[i] > arr[j]) {
					int temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
		}
		System.out.println();
		System.out.println("After sorting");
		for (int i = 0; i < arr.length; i++) {
			
			System.out.print(arr[i]+" ");
		}
	}}
