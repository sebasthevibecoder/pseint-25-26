Algoritmo PatataCaliente
	// 0) Zona de preparaci�n de datos del programa
		Definir pregunta Como Texto //�A�o en que el tercer Reich termin�?
		pregunta = "A�o en que el tercer Reich Termin�"
		Definir respuesta Como Entero // 1945 tras el suicidio de Adolf Hitler
		respuesta = 1945
		// 1�) Entrada de Datos
		Escribir "Bievenido al juego de la Patata Caliente"
		Escribir pregunta
		Definir fecha Como Entero
		Definir acierto Como Logico
		acierto = Verdadero
		acierto = Falso

		Repetir
			Leer fecha
			// 2�) L�gica del Juego
			Si (fecha > respuesta) Entonces
				Escribir "La fecha es mayor.... No has acertado"
			SiNo
				Si (fecha < respuesta)
					Escribir "La fecha es menor ... No has acertado"
					Sino
						Escribir "Enhorabuena!Has acertado!"
						Escribir "Termina el juego..."
						acierto = Verdadero
					
				FinSi
			FinSi
		Hasta Que (acierto == Verdadero)	
		// 3�) Salida de Datos
	
FinAlgoritmo
