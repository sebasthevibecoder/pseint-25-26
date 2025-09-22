Algoritmo PatataCaliente
	// 0) Zona de preparación de datos del programa
		Definir pregunta Como Texto //¿Año en que el tercer Reich terminó?
		pregunta = "Año en que el tercer Reich Terminó"
		Definir respuesta Como Entero // 1945 tras el suicidio de Adolf Hitler
		respuesta = 1945
		// 1º) Entrada de Datos
		Escribir "Bievenido al juego de la Patata Caliente"
		Escribir pregunta
		Definir fecha Como Entero
		Definir acierto Como Logico
		acierto = Verdadero
		acierto = Falso

		Repetir
			Leer fecha
			// 2º) Lógica del Juego
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
		// 3º) Salida de Datos
	
FinAlgoritmo
