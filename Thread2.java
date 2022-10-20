package org.two;
import org.two.Addition;
import org.two.Subtraction;
import org.two.Multiplication;
import org.two.Division;
public class Thread2 {
	

	public class thread_example {

		public static void main(String[] args) {

			Addition a = new Addition();
			Subtraction s = new Subtraction();
			Multiplication m = new Multiplication();
			Division d = new Division();

			a.setPriority(2);
			d.setPriority(6);
			s.setPriority(3);
			m.setPriority(7);
	     
			System.out.println("get priority of addition:" + m.getPriority() + "\n" + "get priority of subtraction:"
					+ a.getPriority());
			System.out.println("get priority of multiplication:" + s.getPriority() + "\n" + "get priority of division:"
					+ d.getPriority());
			
			m.start();
			a.start();
			s.start();
			d.start();
		}
	}
}
