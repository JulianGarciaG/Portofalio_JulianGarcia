/**
 * @autor: Julian Andres Garcia Galeano
 * @fecha: 8/1072024
 * @descripcion: Primeros 30 elementos de la serie de fibbonanci
 */

public class Fibonacci {
    public static void main(String[] args) {
        int a = 0;
        int b = 1;
        int c;
        for (int i = 0; i <= 30; i++){
            System.out.println(a);
            c = a + b;
            a = b;
            b = c;
        }

    }
}
