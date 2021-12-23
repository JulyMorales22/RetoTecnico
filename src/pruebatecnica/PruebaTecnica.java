/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebatecnica;

import java.util.Scanner;

/**
 *
 * @author Hp
 */
public class PruebaTecnica {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        // punto #5, palabra o frase palindroma
        
        Palindroma palabra = new Palindroma();
        System.out.println("Por favor ingrese una palabra o frase para verificar si es palindrome: ");
        String palabraFrase=sc.nextLine();
        palabra.palindroma(palabraFrase);
        
        
        //punto #6, metodo que hace algo
        Punto6 valor = new Punto6();
        int resultado =valor.metodoQueHaceAlgo(5);
        System.out.println("el resultado de ejecutar metodo que hace algo segun el pseudo-codigo es: "+resultado);
        
        
        //punto #7 metodo para division de 2 numeros
        Punto7 division = new Punto7();
        System.out.println("Vamos a realizar una division");
        System.out.println("por favor ingrese el primer numero");
        float numeroUno=sc.nextInt();
        System.out.println("por favor ingrese el segundo numero");
        float numeroDos=sc.nextInt();
        float resultado2 = division.division(numeroUno, numeroDos);
        System.out.println("en resultado de dividir: " +numeroUno+" y "+ numeroDos+" es "+ resultado2);
        
        
        //punto #8 Numeros del 1 al 100
        Punto8 numeros = new Punto8();
        numeros.numeros();
        
        
        
    }
    
}
