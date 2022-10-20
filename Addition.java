package org.two;

public class Addition extends Thread{
	
			@Override
			public void run() {
				int a=10;
				int b=20;
				int c= a+b;
				System.out.println("Addition value is: "+c);		
			}	
		}
		class Subtraction extends Thread {
			@Override
			public void run() {
				int a=10;
				int b=20;
				int c= a-b;
				System.out.println("subtraction value is: "+c);		
			}	
		}


class Multiplication extends Thread {
	@Override
	public void run() {
		int a=10;
		int b=20;
		int c= a*b;
		System.out.println("multiplication value is: "+c);
		
	}	
}

 class Division extends Thread {
	@Override
	public void run() {
		int a=10;
		int b=20;
		int c= a/b;
		System.out.println("division value is: "+c);		
	}	
}
