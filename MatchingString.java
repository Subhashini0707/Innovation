package org.test;

public class MatchingString {

	
		public static void main(String[] args) {
			String s = "A Skrunk sat on thunk the Stump stunk;but the stump thunk the skrunk Stump";
			String s1 = "stump";
			String s2[] = s.toLowerCase().split(s1);
			System.out.println("the count of repeated word:" + " " + (s2.length ));

		}
	}

