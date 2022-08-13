// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EstructuraDeControl {
    
    uint[] public numeros;
    // array de numeros -> numeros

    string public resultado;
    // para almacenar para ver si la condicion del array, se cumplio o no

    //NOTA -> las hacemos publicas para poder verlas depues de haber hecho la implementacion (deploy)

    constructor(bool condicion) {
    // como no vimos funciones necesitamos setear/agregamos un parametro booleano para darle esta info al hacer el deploy!
    // comdicion es booleana porque -> (bool condicion) -> y se puede poner cualquier otra condicion que de T o F!

        if (condicion) {
            resultado = "Condicion True";
        }
        else {
            resultado = "Condicion False";
        }
        
        for (uint iterador = 0; iterador < 10; iterador++) {
        // definimos un for que tenga 10 iteracones
            numeros.push(iterador);
            // push del numero actual en cada iteracion se agrega al array la iteracion actual 0,1,2...9! 
        }
    }
}