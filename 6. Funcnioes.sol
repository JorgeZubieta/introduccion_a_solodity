// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Funciones {
    // el grado de acceso publico y estado puro ya que la funcnion no modifica el estado del contrato -> pure (opcional pero el compilador me va a sugerir usarla)
    function Suma(uint numero1, uint numero2) public pure returns (uint) {
        // en el encabezado de la funcion va returns plural, pero cuano devuelve el valor va en singular por regla!
        return sumaInterna(numero1,numero2);
        // llama la funcnion sumaInterna
    }
    
    // solo para fines practicos funcnio de grado privadp y pure (no accede a ningunvalor de las variables del contrato)
    // para que? para ser reutilizable dentro del contrato
    function sumaInterna(uint numero1, uint numero2) private pure returns(uint) {
        return numero1 + numero2;
    }
    
    uint private resultado;
        // variable privada y la unica forma de accederlo es mediante una funcion

    // grado de acceso publico y solo de lectura (view) porque no modifica el contrato -> cambio en las variables, vamos a acceder a datos que estan dentro del conrato.
    function ObtenerResultado() public view returns (uint) {
    // devuelve un numero entero uint
        return resultado;
    }   
}