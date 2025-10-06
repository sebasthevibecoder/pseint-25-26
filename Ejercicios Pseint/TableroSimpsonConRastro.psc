Algoritmo TableroSimpsonConRastro
	//1º) Definir Variables Entrada y Variables de Programa
	Definir MURO Como Caracter;
	MURO<- 'M';
	Definir matriz Como Caracter;
	Dimension matriz[10,10];
	Definir POS_FILA_BART Como Entero;
	Definir POS_COLUMNA_BART Como Entero;
	// 2º) FLUJO DE INSTRUCCIONES
	//2.1. RELLENAR tableroSimpson
	Para fila<-1 Hasta 10 Con Paso 1 Hacer
		Para columna<-1 Hasta 10 Con Paso 1 Hacer
			matriz[fila,columna]<- '*';
		FinPara
	FinPara
	Definir filaAleatorio Como Entero;
	Definir columnaAleatorio Como Entero;
	Definir contMuros Como Entero;
	////////////////////////////////
	Para contMuros<-1 Hasta 10 Con Paso 1 Hacer
	Repetir
		filaAleatorio<-Aleatorio(1,10); //
		columnaAleatorio<-Aleatorio(1,10);//
	Hasta Que (matriz[filaAleatorio,columnaAleatorio]=='*');
	matriz[filaAleatorio,columnaAleatorio]<-MURO;
FinPara
Para contPocimas<-1 Hasta 5 Con Paso 1 Hacer
	Repetir
		filaAleatorio<- Aleatorio(1,10); //
		columnaAleatorio<- Aleatorio(1,10);//
	Hasta Que (matriz[filaAleatorio, columnaAleatorio]=='*');
	matriz[filaAleatorio, columnaAleatorio]<- 'P';
FinPara
Para contSimpson<-1 Hasta 1 Con Paso 1 Hacer
	Repetir
		filaAleatorio<- Aleatorio(1,10); //
		columnaAleatorio<- Aleatorio(1,10);//
	Hasta Que (matriz[filaAleatorio, columnaAleatorio]=='*');
	matriz[filaAleatorio, columnaAleatorio]<- 'B';
	//Guardar Coordenadas Bart Simpson
	POS_FILA_BART<- filaAleatorio;
	POS_COLUMNA_BART<- columnaAleatorio;
	//Fin Guardar COORDENADAS Bart Simpson
	
FinPara

////////////////
Para contFilas<-1 Hasta 10 Con Paso 1 Hacer
	Para contColumnas<-1 Hasta 10 Con Paso 1 Hacer
		Escribir matriz[contFilas, contColumnas], " " Sin Saltar;
	FinPara
	Escribir "";
FinPara
//////////////////////////////////////
////////EMPIEZA EL JUEGO: DEL CALAMAR
//////////////////////////////////////	
Repetir
	Escribir "Desplaza a Bart con las teclas wasd";
	// VAMOS CON LA "D"
	Leer desplazamiento;
	Si (desplazamiento =='D') Entonces
		filaDesplazamiento<- POS_FILA_BART;
		columnaDesplazamiento<- POS_COLUMNA_BART+1;
	Fin Si
	// VAMOS CON LA "A"

	Si (desplazamiento =='A') Entonces
		filaDesplazamiento<- POS_FILA_BART;
		columnaDesplazamiento<- POS_COLUMNA_BART-1;
	Fin Si
	// VAMOS CON LA "W"

	Si (desplazamiento =='W') Entonces
		filaDesplazamiento<- POS_FILA_BART - 1;
		columnaDesplazamiento<- POS_COLUMNA_BART;
	Fin Si
	
	// VAMOS CON LA "S"

	Si (desplazamiento =='S') Entonces
		filaDesplazamiento<- POS_FILA_BART+1;
		columnaDesplazamiento<- POS_COLUMNA_BART;
	Fin Si 
	
	matriz[filaDesplazamiento, columnaDesplazamiento] = 'B';
	
	Para contFilas<-1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas<-1 Hasta 10 con paso 1 Hacer
			Escribir Sin Saltar matriz[contFilas,contColumnas], " ";
		FinPara
		Escribir "";
	FinPara
Hasta Que (POS_FILA_BART==10 y POS_COLUMNA_BART==10)
FinAlgoritmo
