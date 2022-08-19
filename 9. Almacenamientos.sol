// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Almacenamiento {
    
    string private nombre;
    // al ser private pasa a ser parte del storage
    
    constructor(string memory palabra) {
    // memory porque la funcion va a ser de uso temporal
        nombre = palabra;
        // palabra al ser el contenido de la variable nombre y nombre ser private => palabra pasa a ser parte del storage!
    }
// Cuando utilizar Storage?
// Cuando la informacion esta almacenada en alguna estructura desde algun contrato como strcuts, arrays, strings.
}