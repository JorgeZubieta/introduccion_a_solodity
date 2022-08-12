// SPDX-License-Identifier: GPL - 3.0
// General Public License 

pragma solidity >=0.7.0 <0.9.0;

contract Clase {
// Clase nombre del contrato -> representa una clase de alumnos "ESTRUCTURADO"
    struct Alumno{
        string nombre;
        uint documento;
        //uuint solo numeros positivos 
    }

    // Alumno[] alumnoNuevo;
            // creamos un listado por medio de un array "DINAMICO" sin limite
            // pero no podemos ver el contenido de la lista Aluno ya que no esta definido como publico

        Alumno[] public alumnoNuevo;
            // nos deja acceder despues de hacer el deploy desde remix
            //  agregamos una accesibilidad chaciendola publica

    constructor(){
        // alumno.push();
        // agregra un elemento al final del array
        alumnoNuevo.push(
            Alumno({ 
                nombre: "Kaito",
                documento: 92505833 
            })
        );	
    }
}