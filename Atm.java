package org.two;
import org.two.Insufficent;
public class Atm extends Pin  {




	 
		public static void main(String[] args) throws  Atm {
			 Atm ss = new  Atm();

			try {
				Pin.atm();

				try {
					Insufficent.amount();
				} catch (Exception ee) {
					System.out.println("Insufficent");
				}
				try {
					Cash1.cash();
				} catch (Cash1 e) {
					System.out.println("No amount");
				}
				try {
					Denomination.denominationAtm();
				}
				catch ( Denomination e) {
					System.out.println("Money not avalible");
				}
		} catch (Pin e) {
				System.out.println("miss matched");
			}

		}
	}

