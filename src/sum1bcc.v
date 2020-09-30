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

