// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Gas {
    
    uint public numero;
    //var de tipo publica para accederl sin funcion  a su valor

    function asignarNumero(uint entrada) public {
    // para poder cambiarle el valor de esa variable
        numero = entrada;
    
    }

// 1 se genera el deply del contrato para generar una instancia
// 2 cambiar el valor para ver como va afectando el gas en la medida que vamos utilizando estas operaciones en la red (computo)
}

