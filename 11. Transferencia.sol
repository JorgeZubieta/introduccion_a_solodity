// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Transferencia {

	// 3 tipos de trasferencias 
	
	constructor() payable {
		// (*) sin parametrso a modo de que simplemente funcione enviar saldo.
		// Esto se aplica para Call y rasnfer
	}
	
	function transferenciaPorSend(address destino, uint monto) public returns(bool) {
		// la direccion de destino que recibimos la vamos a trasformar a payable -> indica que esa cuenta va a recibir pagos.
		bool salida = payable(destino).send(monto);
		return salida;
		// con send -> le indicamos el monto pero no indicamos desde donde salen los fondos
		// los fondos salen desde el contrato, debemos darle fondos al DEPLOYD PARA REALIZAR la transaccion! -> para eso agregamos un constructor al contrato para enviar saldo al contrato desde el momento de su creacion! (*)
		// tiene un valor de retorno V o F -> bool = salida;
	}
	
	function transferenciaPorTransfer(address destino, uint monto) public {
		payable(destino).transfer(monto);
		// no tiene valor de retorno bool!
		//cuando falla se iterrumpe
	}
	
	function transferenciaPorCall(address destino, uint monto) public returns (bool) {
		// Tupla -> salida con dos valores V o F, respuesta -> nos devuelve un valor(valor de otro contrato si se llamara)!
		
		(bool salida, bytes memory respuesta) = destino.call{value:monto}("");
		
		// (bool salida, bytes memory respuesta) = destino.call{value:monto, gas: 1000}("");
		// // gas : 1000 es el limite de gas establecemos y es mas seguro
		//vamos a poder limitr el gas a nuestro criterio
		//("") -> es ....
		return salida;
		// retorn V o F si falla la operacion!
    }
}