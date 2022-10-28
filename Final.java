package org.amazon;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Scanner;
import java.util.Set;

public class Final {
	
	static Scanner s = new Scanner(System.in);
	 static int speed;

	public static void main(String[] args) throws IOException {
		

		FileInputStream fe = new FileInputStream(
				"C:\\Users\\Admin\\eclipse-workspace\\Subhasini\\src\\org\\amazon\\suba.properties");
		
		Properties pro = new Properties();
		pro.load(fe);
		int property1 = Integer.parseInt(pro.getProperty("distance"));
		
		int one_redsignal = Integer.parseInt(pro.getProperty("one_red"));
		int all_redsignal = Integer.parseInt(pro.getProperty("all_red"));
		int two_redsignal = Integer.parseInt(pro.getProperty("two_red"));
		int three_redsignal = Integer.parseInt(pro.getProperty("three_red"));
		
		try {
			int prop = property1;
			int oneredsignal = one_redsignal;
			int tworedsignal = two_redsignal;
			int threeredsignal = three_redsignal;
			int allredsignal = all_redsignal;
		}
		
		catch (Exception e) {
			System.out.println("no file found");
		}

		System.out.println(property1);
		System.out.println(pro.getProperty("one_red"));
		System.out.println(pro.getProperty("all_red"));
		System.out.println(pro.getProperty("two_red"));
		System.out.println(pro.getProperty("three_red"));
		System.out.println("My Distination");
		System.out.println(pro.getProperty("1"));
		System.out.println("LIST OF SIGNAL");
		System.out.println(pro.getProperty("2"));
		System.out.println(pro.getProperty("3"));
		System.out.println(pro.getProperty("4"));
		System.out.println(pro.getProperty("5"));
//		   ArrayList<String> le = new ArrayList<>();

		System.out.println("Welcome");

		 ArrayList<String> le = new ArrayList<>();
		// le.add("Egmore");
		// le.add("Nugabakam");
		 //le.add("kodabakam");
		//le.add("St.thomas mount");
		 //le.add("Tambaram");
		 for (int i = 2; i < 7; i++) {
				System.out.println("List of signals:" + pro.getProperty (String.valueOf(i)));
		}
		
		//for (String signal : le) {
		//System.out.println("List of signals:" + signal);
		// }
		try {
			System.out.println("Enter the speed");
			// int speed = ();
			speed = s.nextInt();
		} catch (Exception e) {
			System.out.println("Invalid speed");
		}
		System.out.println("distance|" + property1);

		double Time = (int) (property1 / speed);
		double hr1 = Time * 60;
		System.out.println(Time + "hrs");
		System.out.println(hr1 + "mins");
		char[] Station1 = { 'G', 'R' };
		char[] Station2 = { 'G', 'R' };
		char[] Station3 = { 'G', 'R' };
		char[] Station4 = { 'G', 'R' };
		System.out.println("your Possibilities are:");
		for (int i = 0; i < Station1.length; i++) {
			for (int j = 0; j < Station2.length; j++) {
				for (int k = 0; k < Station3.length; k++) {
					for (int l = 0; l < Station4.length; l++) {
						if (Station1[i] == 'G' && Station2[j] == 'G' && Station3[k] == 'G' && Station4[l] == 'G') {
							System.out.println("If all singal are green");
							System.out.println(hr1 + "mins");
						} else if (Station1[i] == 'R' && Station2[j] == 'R' && Station3[k] == 'R'
								&& Station4[l] == 'R') {
							System.out.println("If all singal are Red");
							System.out.println(hr1 + all_redsignal + "mins");
						} else if (Station1[i] == 'R' && Station2[j] == 'R' && Station3[k] == 'G'
								&& Station4[l] == 'G') {
							System.out.println("If 2 signal are Red and 2 green");
							System.out.println(hr1 + two_redsignal + "mins");
						} else if (Station1[i] == 'G' && Station2[j] == 'R' && Station3[k] == 'G'
								&& Station4[l] == 'G') {
							System.out.println("If 1 signal are Red and 3 green");
							System.out.println(hr1 + three_redsignal + "mins");
						} else if (Station1[i] == 'G' && Station2[j] == 'G' && Station3[k] == 'R'
								&& Station4[l] == 'G') {
							System.out.println("If 1 signal are Red and 3 green");
							System.out.println(hr1 + one_redsignal + "mins");
						} else if (Station1[i] == 'G' && Station2[j] == 'G' && Station3[k] == 'G'
								&& Station4[l] == 'R') {
							System.out.println("If 1 signal are Red and 3 green");
							System.out.println(hr1 + one_redsignal + "mins");
						}
						else if (Station1[i] == 'R' && Station2[j] == 'G' && Station3[k] == 'R' && Station4[l] == 'G') {
							System.out.println("If three signal are Red and one green");
							System.out.println(hr1 + two_redsignal + "mins");
						} else if (Station1[i] == 'G' && Station2[j] == 'G' && Station3[k] == 'R'
								&& Station4[l] == 'R') {
							System.out.println("If two signal are Red and two green");
							System.out.println(hr1 + two_redsignal + "mins");
						} else if (Station1[i] == 'G' && Station2[j] == 'R' && Station3[k] == 'R'
								&& Station4[l] == 'G') {
							System.out.println("If 2 signal are Red and 2 green");
							System.out.println(hr1 + two_redsignal + "mins");
						} else if (Station1[i] == 'R' && Station2[j] == 'G' && Station3[k] == 'G'
								&& Station4[l] == 'R') {
							System.out.println("If 2 signal are Red and 2 green");
							System.out.println(hr1 + two_redsignal + "mins");
						}
						else if (Station1[i] == 'R' && Station2[j] == 'G' && Station3[k] == 'G' && Station4[l] == 'R') {
							System.out.println("If 2 signal are Red and 2 green");
							System.out.println(hr1 + two_redsignal + "mins");
						} else if (Station1[i] == 'R' && Station2[j] == 'R' && Station3[k] == 'G'
								&& Station4[l] == 'R') {
							System.out.println("If 2 signal are Red and 2 green");
							System.out.println(hr1 + two_redsignal + "mins");
						}
						else if (Station1[i] == 'G' && Station2[j] == 'R' && Station3[k] == 'G' && Station4[l] == 'R') {
							System.out.println("If 2signal are Red and 2 green");
							System.out.println(hr1 + two_redsignal + "mins");
						} else if (Station1[i] == 'R' && Station2[j] == 'G' && Station3[k] == 'G'
								&& Station4[l] == 'G') {
							System.out.println("If 1signal are Red and 3 green");
							System.out.println(hr1 + three_redsignal + "mins");
						} else if (Station1[i] == 'R' && Station2[j] == 'G' && Station3[k] == 'R'
								&& Station4[l] == 'R') {
							System.out.println("If 3signal are Red and 1 green");
							System.out.println(hr1 + three_redsignal + "mins");
						} else if (Station1[i] == 'R' && Station2[j] == 'G' && Station3[k] == 'G'
								&& Station4[l] == 'R') {
							System.out.println("If 2signal are Red and 3 green");
							System.out.println(hr1 + two_redsignal + "mins");
						} else if (Station1[i] == 'G' && Station2[j] == 'R' && Station3[k] == 'G'
								&& Station4[l] == 'G') {
							System.out.println("If 1signal are Red and 3 green");
							System.out.println(hr1 + one_redsignal + "mins");
						} else if (Station1[i] == 'G' && Station2[j] == 'R' && Station3[k] == 'G'
								&& Station4[l] == 'R') {
							System.out.println("If 2signal are Red and 2 green");
							System.out.println(hr1 + two_redsignal + "mins");
						} else if (Station1[i] == 'R' && Station2[j] == 'R' && Station3[k] == 'G'
								&& Station4[l] == 'G') {
							System.out.println("If 2signal are Red and 3 green");
							System.out.println(hr1 + two_redsignal + "mins");
						} else if (Station1[i] == 'R' && Station2[j] == 'R' && Station3[k] == 'R'
								&& Station4[l] == 'G') {
							System.out.println("If 3signal are Red and 1 green");
							System.out.println(hr1 + one_redsignal + "mins");
						} else if (Station1[i] == 'G' && Station2[j] == 'R' && Station3[k] == 'G'
								&& Station4[l] == 'G') {
							System.out.println("If 3signal are Red and 1 green");
							System.out.println(hr1 + one_redsignal + "mins");
						} else if (Station1[i] == 'G' && Station2[j] == 'R' && Station3[k] == 'R'
								&& Station4[l] == 'R') {
							System.out.println("If 3signal are Red and 2 green");
							System.out.println(hr1 + three_redsignal
									+ "mins");
						}
						else {
							System.out.println("no signal");
						}
					}
				}
			}
		}
	}
}
