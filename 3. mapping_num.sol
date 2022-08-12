// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Saldo {
    
    mapping(address => uint) public balance;
    // mapedo donde address es
    // unit para valor positivo que represent su balance
    // => para separar entre la clave (direccion) y valor ayuda memoria 

    enum Estado { Iniciado, Finalizado }
    // el enum es el estado de la transccion con 2 estados

    Estado public estadoDelContrato;
    // para poder simbolizar el estado debemos declarar una variable del tipo estado
    // donde almacenaremos el estado actual del contrato de forma TEMPORAL en el momento en que estamos trabajando

    constructor() {
        // logica para inicializar  balance y estado
    
        estadoDelContrato = Estado.Iniciado;
        
            balance[msg.sender] = 1000;
            // declaro un valor inicial para el balance.

            // este actua por mdio de una cuenta debemos enviar el mensaje.

            // sender crea el contrato para setearle un balance inicial en este caso de 1000

        estadoDelContrato = Estado.Finalizado;
    } 
}