library IEEE; --Importa una libreria de funciones que me permite usar algunos tipos de datos en el codigo.
use IEEE.std_logic_1164.all; --Define un paquete de funciones que me permite usar los tipos de datos logicos como std_logic.

entity Compuerta_AND is --Creamos una entidad llamada Compuerta_AND.
    port(
        A, B: in std_logic; --Definimos dos puertos de entrada de tipo std_logic.
        C: out std_logic --Definimos un puerto de salida de tipo std_logic.
    );
end Compuerta_AND; --Fin de la entidad Compuerta_AND.

architecture Compuerta_AND of Compuerta_AND is --Creamos una arquitectura llamada Compuerta_AND de la entidad Compuerta_AND.
    begin --Inicio de la arquitectura Compuerta_AND.
        C <= A and B; --Asignamos a C la operacion logica AND entre A y B.
end Compuerta_AND; --Fin de la arquitectura Compuerta_AND.