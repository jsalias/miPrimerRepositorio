//Realizar un programa que permita visualizar el resultado del producto de una matriz de 
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden 
//inicializarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se 
//realiza la multiplicación entre matrices consultar el siguiente link: 
//https://es.wikibooks.org/wiki/%C3%81lgebra_Lineal/Matriz_por_vector

/
Algoritmo EjercicioExtra14Guia4
	Definir m1, n,m, i ,j,v1,re,re1,re2,re3 Como Entero
	
	n=3
	m=3
	Dimension m1(n,m)
	Dimension v1(3),re(3)
	para i = 0 hasta n-1 Hacer
		para j=0 hasta m-1 Hacer
			
			m1(i,j)=Aleatorio(0,9)
		FinPara
	FinPara
	para i = 0 hasta 2 Hacer
	
			
		v1(i)=Aleatorio(0,9)
		re(i)=0
		re1=0
		re2=0
		re3=0
		Escribir v1(i) sin saltar
		
	FinPara
	Escribir ""
	para i = 0 hasta n-1 Hacer
		para j=0 hasta m-1 Hacer
			
			si i =0 Entonces
				re(i)=m1(i,j)*v1(j)
				re1=re1+re(i)
			FinSi
			si i =1 Entonces
				re(i)=m1(i,j)*v1(j)
				re2=re2+re(i)
			FinSi
			si i =2 Entonces
				re(i)=m1(i,j)*v1(j)
				re3=re3+re(i)
			FinSi
			
		FinPara
	FinPara
	
	
	
	para i=0 hasta n-1 Hacer
		para j=0 hasta m-1 Hacer
			
			Escribir Sin Saltar " " ,m1(i,j)
		FinPara
		Escribir " "
	FinPara
	
Escribir re1," " re2," " re3
	
FinAlgoritmo
