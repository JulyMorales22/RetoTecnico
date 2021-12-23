/*
8- Escriba un algoritmo que imprima los números del 1 al 100. 
Pero para los múltiplos de 3 imprima "Fizz" en lugar del número y 
para los múltiplos de 5 imprima "Buzz". Para los
números que son múltiplos de ambos imprima "FizzBuzz".
 */
package pruebatecnica;

/**
 *
 * @author Hp
 */
public class Punto8 {
    
    public void numeros(){
        for (int i=1; i<=100;i++){
            if (i % 3 == 0 && i % 5 == 0) {
                System.out.println("FizzBuzz");
            } else if (i % 5 == 0) {
                System.out.println("Buzz");
            } else if (i % 3 == 0) {
                System.out.println("Fizz");
            } else {
                System.out.println(i);
            }
        }
    }
    
    
}
