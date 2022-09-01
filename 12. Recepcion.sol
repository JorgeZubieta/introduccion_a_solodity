// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Contrato que se encargue de recibir transferencias
// agregamos 3 tipos de recepciones

// 1 recepcion limpia SIN parametros!

// 2 recepcion que RECIBA parametros pero que no correspondan a ninguna funcion!

// 3 llamada a una funcion (que corresponda con la firma de la funcion) y que ademas tenga un valor asociado en Ethers!

contract Recepcion {
    

    mapping(address => uint) balances;
    // Para hacer un ejemplo : creamos un mappinn relativo a balance, en base a la cantidad de saldo que le envio por transaccion. -> (*)

    uint public saldoEnviado;
    // para ver cuanto saldo recibimos creasmo esta variable publica -> y agregamos en recibir saldo : saldo enviado!

    receive() external payable {
    // recive obligatoriamente es una funcion del tipo externa y del tipo payable (recibe pagos) los dos si o si!
        balances[msg.sender] += msg.value;
        // (*) como primera linea de codigo le digo que al sender de la transaccion le agregue un saldo.
        // como se el saldo? el sender me trae el monto en weis! muchos ceros 000000000000001 weis
    }
    
    fallback() external payable {
    // funcion allback que no recive ningun parametro, va a ser external y payable.
    // como van a ir los parametros? los vamos acceder mediante el msg.data -> asociado a los datos que viene con el mensaje. como s en bytes o vamos a usarlo por el momento para saber que hacer si recibimos una trasnferencia con parametros.
    }
    
    function recibirSaldo(uint numero) public payable {
    // uint numero es solo para poner como parametro un numero x
    // funcion convencional de recibir saldo y no sea obligatorioriio que reciba saldo. la habilitamos y puede ser llamada aunque tenga saldo 0!
        saldoEnviado = msg.value; //para ver el saldo recibido -> saldo enviardo variable creada arriba!
        // value va a recibir el valor que le enviamos desde el deploy -> hacemos un call al contrato enviandole ese parametro (value del deploy)
        
        uint monto = numero; //aca hay un error ya que nos e una la variable monto, pero lo dejamos por ahora no afecta ya que nos interesa saber el saldo recivido que fue enviado!
    }
    
}