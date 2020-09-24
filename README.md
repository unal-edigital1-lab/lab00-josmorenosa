# Lab01 - Sumador 

*Esttudiante: Jonathan Smit Moreno Sánchez 

# Entregables

Una vez clone el repositorio y lea la anterior guia, realice lo siguiente:

# Sumador de 1 BIT

* Comprenda cada línea del código HDL del archivo sum1bcc_primitive.v y  sum1bcc.v que se encuentra en la carpera src. Si cree necesario realice los respectivos comentarios en el mismo archivo y comente las diferencias entre las dos descripciones.

```verilog

module Laboratorio00 (A, B, Ci,Cout,S); //NOMBRE DEL MÓDULO

 //DEFINIMOS ENTRADAS
 
  input  A;
  input  B;
  
  //DEFINIMOS SALIDAS
  input  Ci;
  output Cout;
  output S;
   
  //DEFINIMOS LOS CLABLES
  wire a_ab;
  wire x_ab;
  wire cout_t;
   
  //ESTABLECEMOS LAS COMPUERTAS LÓGICAS CORRESPONDIENTES 
  //  A LOS RESULTADOS DE LA TABLA DE VERDAD DE LA SUMA.
  and(a_ab,A,B);
  xor(x_ab,A,B);

  xor(S,x_ab,Ci);
  and(cout_t,x_ab,Ci);

  or (Cout,cout_t,a_ab);

endmodule
```

```verilog

module sum1bcc (A, B, Ci,Cout,S); //NOMBRE DEL MÓDULO
   
  //DEFINIMOS ENTRADAS
  input  A;
  input  B;
  input  Ci;
  //DEFINIMOS SALIADAS
  output Cout;
  output S;
  
  //ALMACENAMOS LOS DATOS EN UN REGISTRO
  reg [1:0] st;
  assign S = st[0];
  assign Cout = st[1];

  always @ ( * ) begin
  	st  = 	A+B+Ci;
  end
  
endmodule


endmodule
```

Observamos los resultados arrojados en la simulación del sumador de 1 bit, corresponden correctamente a la suma de las respectivas entradas.
![Sumador 1bit](https://github.com/unal-edigital1-lab/lab00-josmorenosa/blob/master/Figuras/Sum1b.PNG)

# Sumador de 4 BIT'S

* Se crea el nuevo proyecto HDL para el sumador de 4 bit.
![Sumador 4bbit](https://github.com/unal-edigital1-lab/lab00-josmorenosa/blob/master/Figuras/sum4b.PNG)
* Archivo "testbench.v"
![TB](https://github.com/unal-edigital1-lab/lab00-josmorenosa/blob/master/Figuras/crear_Tb.PNG)
* Genera la simulación, Revise que el sistema funciona como usted lo esperaba. Realice lo comentarios necesarios en el archivo README.md.
Se realiza la simulación correspondiente al sumador de 4 bits y observamos como respuestas al ingresar las variables A=10 y B=2 obtenemos como resultado la suma 12.
![Sumador 4bit](https://github.com/unal-edigital1-lab/lab00-josmorenosa/blob/master/Figuras/Resutlado%20sumador%20de%204%20bits.PNG)

Ahora re realuza un sumador que va variando el valor correspondiente a las entradas después de un intervalo de tiempo obteniendo así diferentes sumas y con ellas diferentes respuestas.
![Sumador 4bit_conciclo](https://github.com/unal-edigital1-lab/lab00-josmorenosa/blob/master/Figuras/R2.PNG)


