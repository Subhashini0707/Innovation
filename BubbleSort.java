package org.test;

public class BubbleSort {
	



		private void sort() {
			int arr[] = { 10, 2, 34, 70, 88, 99, 65 };
			System.out.println("Before Sortinng");
			for (int i = 0; i < arr.length; i++) {
				System.out.print(arr[i]+" ");
			}
			for (int i = 0; i < arr.length; i++) {
				for (int j = 1; j < arr.length - 1; j++) {
					if (arr[j - 1] > arr[j]) {
						int temp = arr[j - 1];
						arr[j - 1] = arr[j];
						arr[j] = temp;

					}

				}
			}
			System.out.println();
			System.out.println("after Sorting");
			for (int i = 0; i < arr.length; i++) {
				System.out.print(arr[i]+" ");
			}

		}
		public static void main(String[] args) {
			BubbleSort b = new BubbleSort();
			b.sort();
		}

	}
		
		

	