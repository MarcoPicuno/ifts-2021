package lezione02;

import java.util.Scanner;
// il package java.lang � l'unico che non necessita di import

public class LetturaInputUtente {

	public static void main(String[] args) {
		// Scanner � una classe contenuta nel package java.util
		// il quale � presente nell'archivio (jar) java.base
		// che viene fornito con la plafrom Java SE
		
		// Scanner si collega alla tastiera del PC e rileva i tasti che vengono premuti
		Scanner scanner = new Scanner(System.in); // System.in � la tastiera (lo standard input)
		// System.out: � la console (lo standard output)
		System.out.print("Digita qualcosa e poi premi INVIO: ");
		String valoreLetto = scanner.nextLine(); // legge tutti i caratteri digitati sulla tastiera fino a INVIO

		System.out.println("hai digitato: " + valoreLetto);
	}

}
