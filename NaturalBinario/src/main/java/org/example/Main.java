package org.example;
/**
 * @NOMBRE: Julian Garcia Galeano
 * @FECHA: 22/10/2024
 * @DESCRPCION: ejercicio 21: convertir numeros naturales a binarios
 */

import java.util.Scanner;
public class Main {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Introduce un número decimal: ");
        int decimal = sc.nextInt();

        // Convertir el número decimal a binario
        String binario = Integer.toBinaryString(decimal);

        System.out.println("El número en binario es: " + binario);
    }
}