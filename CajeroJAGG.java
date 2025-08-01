import java.util.Scanner;

/**
 * @autor: Julian Andres Garcia Galeano
 * @fecha: 15/10/2024
 * @descripcion: Prograa que simula las operaciones basicas de un cajero automatico
 */
public class CajeroJAGG {

    
    private static String [] cuentasJAGG = {"4321", "5432", "6543", "8765", "9876"};
    private static String[] clavesJAGG = {"1234","2345","3456", "4567", "5678"};
    private static double[] saldosJAGG = {12000.0, 5000.0, 10000.0, 72000.0, 0.0};
    public static void main(String[] args) {
        int iOpcionJAGG;
        
        do {
            menuJAGG();
            iOpcionJAGG = validarOpcionJAGG(1,5);
            switch (iOpcionJAGG) {
                case 1:
                    retirarJAGG();
                    break;
                case 2:
                    consignarJAGG();
                    break;
                case 3:
                    tranferirJAGG();
                    break;
                case 4: 
                    CambiarClave();
                    break;
                case 5:
                    System.out.println("Gracias por utilizar el cajero automatico");
                    break;
                default:
                    break;
            }
        }while(iOpcionJAGG < 5);
        
    }//fin del metodo main
    public static void menuJAGG(){

        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("|           Cajero Automatico             |");
        System.out.println("|─────────────────────────────────────────|");
        System.out.println("| 1. Retiro                               |");
        System.out.println("| 2. Consignacion                         |");
        System.out.println("| 3. Transferencia                        |");
        System.out.println("| 4. Cambio de clave                      |");
        System.out.println("| 5. Salir                                |");
        System.out.println("└─────────────────────────────────────────┘");
        
    }

    public static void menuRetiroJAGG(){
        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("|                 Retiros                 |");
        System.out.println("|─────────────────────────────────────────|");
        System.out.println("| 1. 10.000                               |");
        System.out.println("| 2. 20.000                               |");
        System.out.println("| 3. 50.000                               |");
        System.out.println("| 4. 100.000                              |");
        System.out.println("| 5. 500.000                              |");
        System.out.println("| 6. Otro valor                           |");
        System.out.println("└─────────────────────────────────────────┘");
        
    }
    public static void menuConsignacionJAGG(){
        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("|             Consignaciones              |");
        System.out.println("|─────────────────────────────────────────|");
        System.out.println("| 1. 10.000                               |");
        System.out.println("| 2. 20.000                               |");
        System.out.println("| 3. 50.000                               |");
        System.out.println("| 4. 100.000                              |");
        System.out.println("| 5. 500.000                              |");
        System.out.println("| 6. Otro valor                           |");
        System.out.println("└─────────────────────────────────────────┘");
        
    }
    public static void menuTransferenciaJAGG(){
        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("|             Transeferencia              |");
        System.out.println("|─────────────────────────────────────────|");
        System.out.println("| 1. 10.000                               |");
        System.out.println("| 2. 20.000                               |");
        System.out.println("| 3. 50.000                               |");
        System.out.println("| 4. 100.000                              |");
        System.out.println("| 5. 500.000                              |");
        System.out.println("| 6. Otro valor                           |");
        System.out.println("└─────────────────────────────────────────┘");
        
    }


    public static void retirarJAGG() {
        int iOpcionRetirarJAGG;
        Scanner scJAGG;

        scJAGG = new Scanner(System.in);
    
        menuRetiroJAGG();
        iOpcionRetirarJAGG = validarOpcionJAGG(1,6);
        switch (iOpcionRetirarJAGG) {
            case 1:
                retiroMontoJAGG(10000);
                break;
            case 2:
                retiroMontoJAGG(20000);
                break;
            case 3:
                retiroMontoJAGG(50000);
                break;
            case 4:
                retiroMontoJAGG(100000);
                break;
            case 5:
                retiroMontoJAGG(500000);
                break;
            case 6:
                retiroMontoJAGG(3000000);
                break;
        
            default:
                break;
        }
        
    }

    public static void retiroMontoJAGG(int montoJAGG) {
        validaMontoCuenta(montoJAGG);

    }

    public static void validaMontoCuenta(int montoJAGG) {
        String clave;
        Scanner scJAGG = new Scanner(System.in);
        System.out.print("Ingrese su clave: ");
        clave = scJAGG.nextLine();
        int i = validaCuentaContraseña(clave);
        if (i != -1) {
            if (saldosJAGG[i] >= montoJAGG){
                saldosJAGG[i] -= montoJAGG;
                System.out.println("Accion Exitosa. El nuevo saldo es: $" + saldosJAGG[i]);
            } else{
                System.out.println("No hay suficiente saldo");
            }
            
        }else{
            System.out.println("Clave incorrecta");
        }
        
    }

    public static int validaCuentaContraseña(String clave){
  
        int i = 0;
        boolean bEncontrada = false;



        while (!bEncontrada && i < clavesJAGG.length ){
            if (clavesJAGG[i].equals(clave)){
                bEncontrada = true;
                return i;
            }
            i++;

        }
        System.out.println("Clave incorrecta");
        return -1;

    }

    public static void consignarJAGG() {
        int iOpcionConsignarJAGG;
        Scanner scJAGG;

        scJAGG = new Scanner(System.in);
    
        menuConsignacionJAGG();
        iOpcionConsignarJAGG = validarOpcionJAGG(1,6);
        switch (iOpcionConsignarJAGG) {
            case 1:
                consignaMontoJAGG(10000);
                break;
            case 2:
                consignaMontoJAGG(20000);
                break;
            case 3:
                consignaMontoJAGG(50000);
                break;
            case 4:
                consignaMontoJAGG(100000);
                break;
            case 5:
                consignaMontoJAGG(500000);
                break;
            case 6:
                consignaMontoJAGG(3000000);
                break;
        
            default:
                break;
        }
        
    }

    public static void consignaMontoJAGG(int montoJAGG) {
        Scanner scJAGG = new Scanner(System.in);

        System.out.printf("Consignando $%d ...", montoJAGG);
        scJAGG.next();
    }
    
    public static void tranferirJAGG(){
        int iOpcionTranferirJAGG;
        menuTransferenciaJAGG();
        iOpcionTranferirJAGG = validarOpcionJAGG(1, 6);
        switch(iOpcionTranferirJAGG){
            case 1:
                transferirMonto(10000);
                break;
            case 2:
                transferirMonto(20000);
                break;
            case 3:
                transferirMonto(50000);
                break;
            case 4: 
                transferirMonto(100000);
                break;
            case 5:
                transferirMonto(500000);
                break;
            case 6:
                transferirMonto(3000000);
                break;
            default:
                break;
        }


    }

    public static void transferirMonto(int montoJAGG){
        int iCuentaPropia;
        int iVerificacionCuentaDestino;
        int iMontoTranferenciaJAGG;
        String sCuentaDestino;
        String clave;
        Scanner scJAGG;

        scJAGG = new Scanner(System.in);

        System.out.print("Ingrese su clave: ");
        clave = scJAGG.nextLine();
        iCuentaPropia = validaCuentaContraseña(clave);

        if (iCuentaPropia != -1){ //significa que la cuenta esta encontrada
            System.out.print("Ingrese la cuenta de destino: ");
            sCuentaDestino = scJAGG.nextLine();
            iVerificacionCuentaDestino = validaCuentaNumero(sCuentaDestino);

            if (iVerificacionCuentaDestino != -1) {
                System.out.print("Ingrese el monto a tranferir: ");
                iMontoTranferenciaJAGG = scJAGG.nextInt();
                validaMontoCuenta(iMontoTranferenciaJAGG);
            }else{
                System.out.println("La cuenta de destino no existe");
            }
        }

    }

    public static int validaCuentaNumero(String iNumeroCuenta){
        int i = 0;
        boolean bEncontrada = false;
        while (!bEncontrada && i < clavesJAGG.length ){
            if (cuentasJAGG[i].equals(iNumeroCuenta)){
                bEncontrada = true;
                return i;
            }
            i++;
        }
        System.out.println("Cuenta incorrecta");
        return -1;
    }


    public static int validarOpcionJAGG(int op1, int op2){
        Scanner scJAGG = new Scanner(System.in);
        int iOpcionJAGG;

        System.out.printf("Ingrese una opcion [%d - %d]: ", op1, op2);
        iOpcionJAGG = scJAGG.nextInt();

        while ((iOpcionJAGG < op1) || (iOpcionJAGG > op2)) {
        System.out.println("Opcion no valida");
        System.out.printf("Ingrese una opcion [%d - %d]", op1, op2);
        iOpcionJAGG = scJAGG.nextInt();
        }
        return iOpcionJAGG;

    }

    public static void CambiarClave(){
        Scanner scJAGG = new Scanner(System.in);
        int iVerificacionCuentaPropia;
        int iCuentaPropia;
        String sClaveActual;
        String sClaveNueva;
        String sConfirmacionClaveNueva;
        

        System.out.print("Ingrese su contraseña actual: "); 
        sClaveActual = scJAGG.nextLine();
        iCuentaPropia = validaCuentaContraseña(sClaveActual);

        if (iCuentaPropia != -1) {
            System.out.print("Ingrese su nueva contraseña: ");
            sClaveNueva = scJAGG.nextLine();
            System.out.print("Confirme su nueva contraseña: ");
            sConfirmacionClaveNueva = scJAGG.nextLine();
            
            if (sClaveNueva.equals(sConfirmacionClaveNueva)) {
                clavesJAGG[iCuentaPropia] = sClaveNueva;
                System.out.printf("La clave fue cambiada con exito, su nueva clave es: %s\n", sClaveNueva);
            }else{
                System.out.println("Las contraseñas no coinciden");
            }
        }else{
            System.out.println("Contraseña incorrecta");
        }
    }

}
