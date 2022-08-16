// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


// Restringir el acceso a esta funcion, que solo el que hizo el deploy del contrto tenga acceso a esta funcion suma - restringimos peermisos!
contract Modificadores {
    // alamcenamos quien hizo el deply del contrato
    address private owner;
        // esta funcion privada guarda va a guardar el nombde del Owner que haga el deploy

    string private nombreOwner;

    constructor(string memory nombre) {
    // mediante el sender vamos a saber quien es el owner, almacenando en una variable privada.
        owner = msg.sender;
        nombreOwner = nombre;
    }
    
    function Suma(uint numero1, uint numero2) public view EsOwner() returns (uint) {
    // entes er pure y paso a view porque usa informacion de contrato
        return numero1 + numero2;
    }
    
    // EsOwner - > nombr del modificador y debe ser super descriptivo
    modifier EsOwner() {
    // este modificador chequea quien es el owner. este se ejecutara al principio de l funcion
        if (msg.sender != owner) revert();
        // revert nos mostrara al hacer un call que no se pudo al ser una cuenta diferente
        _;
        //si se cumple el if se interrrumpe y si o si el modificador debe tener un guion bajo ->  este indica que despues ejecutar el modificador se ejecutara el flujo normal del contrato si se cumple el if en este caso!
    }
}