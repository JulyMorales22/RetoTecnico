/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebatecnica;

/**
 *
 * @author Hp
 */
public class Punto6 {
    
    public int metodoQueHaceAlgo(int valor){
        if(valor<3){
            return valor;
        }
        return metodoQueHaceAlgo(valor-1)*metodoQueHaceAlgo(valor-2);
    }
    
}
