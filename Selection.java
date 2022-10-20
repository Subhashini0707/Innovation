package org.test;

public class Selection {
	public class Selection {

		public static void main(String[] args) {

			String name[] = { "hello", "Subha", "Arjun" };

			for (int i = 0; i < name.length; i++) {
				for (int j = i + 1; j < name.length; j++) {
					if (name[i].compareTo(name[j]) >0) {
						String temp = name[i];
						name[i] = name[j];
						name[j] = temp;

					}

				}
				System.out.println(name[i]);
			}

		}

	}	
}
