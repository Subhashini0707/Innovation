package org.test;

import org.test. leap_year;

public class Leap extends  leap_year {

		void find_leap()
		{
			for(int i=2000;i<=2022;i++)
			{
				if(i%4==0)
				{
					System.out.println(i + "Leap year");
				}
				else
				{
					System.out.println(i + "Not a Leap year");
				}
			}
		}

		public static void main(String[] args) {

			Leap obj1=new Leap();
		
			obj1.find_leap();
		}

	}

