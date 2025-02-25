with Ada.Numerics.Discrete_Random; -- paquete gen�rico predefinido
with Ada.Integer_Text_IO; USE Ada.Integer_Text_IO; 
with Ada.Text_IO; use Ada.Text_IO;

procedure ejercicio6 is
   subtype T_Digito is Integer range 0..9;
   -- crear instancia del paquete gen�rico predefinido
   package Pkg_DigitoAleatorio is new Ada.Numerics.Discrete_Random (T_Digito); 
   generador_digito : pkg_DigitoAleatorio.Generator; -- declarar generador de valores aleatorios tipo T_Digito 
   digito : T_Digito;
begin
   pkg_DigitoAleatorio.Reset (Generador_Digito); -- Inicializa generador n�meros aleatorios
   loop 
      digito := pkg_DigitoAleatorio.Random(generador_digito); -- generar n�mero aleatorio
      Put(digito);
      skip_line;
   end loop;
end ejercicio6;

-- 6.a) Genera numeros aleatorios hasta que interrumpamos su ejecuci�n.

-- 6.b) Se est� utilizando el paquete Ada.Integer_Text_IO ya que T_Digito es un subtipo de Integer.
