// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Eventos {
    
    uint[] public numeros;
    string public resultado;
    
    event NotificacionDeCondicion(bool condicion);
    // vamos a notificar que condicion entro por el constructor -> recibimos un parametro del tipo boleano y debemos emitir el evento con emit!

    constructor(bool condicion) {
        if (condicion) {
            resultado = "Condicion True";
        }
        else {
            resultado = "Condicion False";
        }
        
        emit NotificacionDeCondicion(condicion);
        // para llamar al evento con "emit" en este punto del codigo!
        // y le damos el Valor que queremos que quede registrado en este punto -> en este caso la condicion
        
        for (uint iterador = 0; iterador < 10; iterador++) {
            numeros.push(iterador);
        }
    }
    
}