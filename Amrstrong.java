package org.test;
import java.util.Scanner;
public class Amrstrong {
	

	


	         static boolean isAms(int n)

	         {
	        	 int num = 0;
				int temp=num;
	        	 int sum =0,last=0,digits=0;
	        	 while(temp>0)
	        	 {
	        		 temp=temp/10;
	        		 digits++;
	        	 }
	        	 temp=num;
	        	 while(temp>num)
	        	 {
	        		 last=temp%10;
	        		 sum+=(Math.pow(last, digits));
	        		 temp=temp/10;
	        	 }
	        	 if(num==sum)
	        	 
	             return true;
	        	 
	        	 else
	        	 return false;
	        	 	 
	         }
		
		public static void main(String[] args) {
			int num;
			Scanner sc= new Scanner(System.in);
			System.out.println("Number is: ");
			num=sc.nextInt();
			if(isAms(num))
			{
				System.out.println("Amstrong");
			}
			else
			{
				System.out.println("Not an Amstrong");
			}
		}

	}


