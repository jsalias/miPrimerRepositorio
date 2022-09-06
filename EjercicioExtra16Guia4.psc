//6. Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina 
//ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas: 
//		Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas 
//		estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un 
//	programa que lea el monto de las ventas de los representantes en cada zona y calcule luego: 
//		a) el total de ventas de una zona introducida por teclado
//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas 
//		c) el total de ventas de todos los representantes.

////
algoritmo Ejercicio16Extra16Guia
	Definir i,j,ventas,l Como Entero
	Definir vende,zona,p Como cadena
	Definir op Como Caracter
	op=""
	p=""
	Dimension ventas(4,5)
	Dimension vende(4), zona(5)
	
	vende(0)="Juan"
	vende(1)="Carla"
	vende(2)="Jose"
	vende(3)="Cintia"
	zona(0)="Norte"
	zona(1)="Sur"
	zona(2)="Este"
	zona(3)="Oeste"
	zona(4)="Centro"
	
	
	para i=0 hasta 3 Hacer
		vende(i)=Minusculas(vende(i))
	FinPara
	Para i=0 hasta 3 Hacer
		Escribir "Ingrese ventas de " vende(i) 
		para j=0 hasta 4 hacer
			Escribir " Zona " zona(j) " : " Sin Saltar
			  ventas(i,j)=Aleatorio(1,9)
			Escribir ventas(i,j)
		FinPara
	FinPara
	Escribir ""
	Escribir "Presione una tecla para continuar"
	leer p
	Limpiar Pantalla
	hacer
	Escribir "a) el total de ventas de una zona introducida por teclado"
	Escribir "b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas "
	Escribir "c) el total de ventas de todos los representantes."
	Escribir "s) para salir"
	Escribir ""
	Escribir "Ingrese su opcion"
	leer op
	Limpiar Pantalla
	op=Minusculas(op)
	Segun op Hacer
		"a":
			ventasxzona(ventas,vende,zona)
			
		"b":ventasxvendedor(ventas,vende,zona)
			
		"c":ventastotales(ventas,vende,zona)
			
		De Otro Modo:
			Escribir "Adios!!"
	Fin Segun
	
	mientras que op <> "s"
	
FinAlgoritmo

SubProceso ventasxzona(ventas,vende,zona)
	definir i,j, s1,s2,s3,s4,s5 Como Entero
	definir op1, p Como caracter
	Escribir "Ingrese su opcion segun la zona 1)Norte, 2)Sur, 3)Este, 4)Oeste y 5)Centro."
	leer op1
	s1=0
	s2=0
	s3=0
	s4=0
	s5=0
	p=""
	Segun op1 Hacer
		"1"	:
			para i= 0 hasta 3 hacer
				para j=0 hasta 0 Hacer
					s1=s1+ventas(i,j)
					
				FinPara
			FinPara
			Escribir "El total de ventas de produsctos de la la zona " zona(0) " es " s1
			Escribir ""
			Escribir "Presione una tecla para continuar"
			leer p
			Limpiar Pantalla
			
			
		"2":para i= 0 hasta 0 hacer
			para j=0 hasta 4 Hacer
				s2=s2+ventas(i,j)
			FinPara
		FinPara
		Escribir "El total de ventas de produsctos de la la zona " zona(1) " es " s2
		Escribir ""
		Escribir "Presione una tecla para continuar"
		leer p
		Limpiar Pantalla
			
		"3":para i= 0 hasta 0 hacer
			para j=0 hasta 4 Hacer
				s3=s3+ventas(i,j)
			FinPara
		FinPara
		Escribir "El total de ventas de produsctos de la la zona " zona(2) " es " s3
		Escribir ""
		Escribir "Presione una tecla para continuar"
		leer p
		Limpiar Pantalla
		
		"4":para i= 0 hasta 0 hacer
			para j=0 hasta 4 Hacer
				s4=s4+ventas(i,j)
			FinPara
		FinPara
		Escribir "El total de ventas de produsctos de la la zona " zona(3) " es " s4
		Escribir ""
		Escribir "Presione una tecla para continuar"
		leer p
		Limpiar Pantalla
		"5"	:para i= 0 hasta 0 hacer
			para j=0 hasta 4 Hacer
				s5=s5+ventas(i,j)
			FinPara
		FinPara
		Escribir "El total de ventas de produsctos de la la zona " zona(4) " es " s5
		Escribir ""
		Escribir "Presione una tecla para continuar"
		leer p
		Limpiar Pantalla
		De Otro Modo:
		
	Fin Segun
	
	
FinSubProceso


SubProceso ventasxvendedor(ventas,vende,zona)
	
	definir i ,j ,vxv, cont Como Entero
	definir vendedor,p como cadena
	definir validacion Como Logico
	Escribir "Ingrese el nombre del vendedor para saber sus ventas por zonas"
	Leer vendedor
	vxv=0
	validacion=falso
	cont=2
	p=""

	para i=0 hasta 3 Hacer
	
		si vendedor=vende(i)  Entonces
			validacion=Verdadero
			Para i=i hasta i Hacer
				para j=0 hasta 4 Hacer
					vxv=vxv+ventas(i,j)
				FinPara
			FinPara
		
		FinSi
		
		
	FinPara
	si validacion= Falso Entonces
		Escribir " Vendedor incorrecto"
		Escribir "Presione una tecla para continuar"
		leer p
	sino
		
		Escribir "El total de ventas de " vendedor " es: " vxv
		Escribir ""
		Escribir "Presione una tecla para continuar"
		leer p
	FinSi

Limpiar Pantalla
FinSubProceso

SubProceso ventastotales(ventas,vende,zona)
	
	definir i ,j ,vxv Como Entero
	Definir p Como Caracter
	p=""
	vxv=0
	
	Para i=0 hasta 3 Hacer
		para j=0 hasta 4 Hacer
			vxv=vxv+ventas(i,j)
		FinPara
	FinPara
	
	Escribir "El total de ventas de todas las zonas es : " vxv
	Escribir ""
	Escribir "Presione una tecla para continuar"
	leer p
	Limpiar Pantalla
FinSubProceso
	