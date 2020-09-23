# Lab01 - Sumador 

*Esttudiante: Jonathan Smit Moreno Sánchez 

# Entregables

Una vez clone el repositorio y lea la anterior guia, realice lo siguiente:

* Comprenda cada línea del código HDL del archivo sum1bcc_primitive.v y  sum1bcc.v que se encuentra en la carpera src. Si cree necesario realice los respectivos comentarios en el mismo archivo y comente las diferencias entre las dos descripciones.



* Analice la simulación de cada uno de los archivos y compruebe que el sumador funciona correctamente.
Observamos los resultados arrojados en la simulación del sumador de 1 bit.
![Sumador 1bit](https://github.com/unal-edigital1-lab/lab00-josmorenosa/blob/master/Figuras/Sum1b.PNG)

* Cree el nuevo proyecto HDL para el sumador de 4 bit, onde el top sea sum4bcc.v e instancie el sumador de 1 bit ***sum1bcc.v***
* Creer el archivo testbench.v
* Genera la simulación, Revise que el sistema funciona como usted lo esperaba. Realice lo comentarios necesarios en el archivo README.md.
Se realiza la simulación correspondiente al sumador de 4 bits y observamos como respuestas al ingresar las variables A=10 y B=2 obtenemos como resultado la suma 12.
![Sumador 4bit](https://github.com/unal-edigital1-lab/lab00-josmorenosa/blob/master/Figuras/Resutlado%20sumador%20de%204%20bits.PNG)
Ahora re realuza un sumador que va variando el valor correspondiente a las entradas después de un intervalo de tiempo obteniendo así diferentes sumas y con ellas diferentes respuestas.
![Sumador 4bit_conciclo](https://github.com/unal-edigital1-lab/lab00-josmorenosa/blob/master/Figuras/R2.PNG)
* Realice la respectiva publicación del repositorio antes de la fecha dada con todo el código  fuente 


