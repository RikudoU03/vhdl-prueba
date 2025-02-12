library IEEE;
use IEEE.std_logic_1164.all;

entity Prueba is --Creamos una entidad llamada Prueba la cual se encargara de probar la compuerta AND.
end Prueba;

architecture Simulacion of Prueba is --Creamos una arquitectura llamada Simulacion de la entidad Prueba la cual se encargara de simular la compuerta AND del archivo Compuerta_AND.vhdl.
    signal A_p : std_logic := '0'; --Declaramos una señal llamada A_p de tipo std_logic y le asignamos el valor '0'.
    signal B_p : std_logic := '0'; --Declaramos una señal llamada B_p de tipo std_logic y le asignamos el valor '0'.
    signal C_p : std_logic; --Declaramos una señal llamada C_p de tipo std_logic.

    begin --Inicio de la arquitectura Simulacion.
        DUT: entity work.Compuerta_AND
            port map(
                A => A_p,
                B => B_p,
                C => C_p
            ); --Instanciamos la entidad Compuerta_AND y le asignamos los valores de las señales A_p, B_p y C_p a los puertos A, B y C respectivamente.

        process --Proceso que se encarga de cambiar los valores de las señales A_p y B_p para probar la compuerta AND.
        begin
            A_p <= '0'; B_p <= '0'; wait for 10 ns; --Asignamos a A_p y B_p el valor '0' y esperamos 10 ns.
            A_p <= '0'; B_p <= '1'; wait for 10 ns; --Asignamos a A_p el valor '0' y a B_p el valor '1' y esperamos 10 ns.
            A_p <= '1'; B_p <= '0'; wait for 10 ns; --Asignamos a A_p el valor '1' y a B_p el valor '0' y esperamos 10 ns.
            A_p <= '1'; B_p <= '1'; wait for 10 ns; --Asignamos a A_p y B_p el valor '1' y esperamos 10 ns.
            wait; --Esperamos indefinidamente para que la simulacion no termine.
        end process; --Fin del proceso.
end Simulacion; --Fin de la arquitectura Simulacion.