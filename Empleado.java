import java.util.Scanner;

public class Empleado {
    public static void main(String[] args){
        String nombre;
        int identificacion;
        double salario;
        double salud;
        double pension;
        double salario_neto;

        Scanner sc;
        sc = new Scanner(System.in);
        System.out.println("Ingrese el nombre del empleado: ");
        nombre = sc.nextLine();
        System.out.println("Ingrese su identificacion: ");
        identificacion = sc.nextInt();
        System.out.println("Ingrese su salario base: ");
        salario = sc.nextDouble();
        System.out.println("El empleado " + nombre + " identificado " + identificacion);
        salud = salario * 0.04 / 100;
        pension = salario * 0.04 / 100;
        salario_neto = salario - salud - pension;
        System.out.println("El salario neto del neto empleado es: " + salario_neto);
        


    }
}
