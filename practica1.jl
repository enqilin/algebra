using LinearAlgebra

"""Ejercicio1
Siendo A y B las matrices
A =[12 −3 125 4 23;
−43 9 13 −34 1;
2 43 6 12 9;
24 56 5 76 4]
1 −9 123 12 34]
B =[12 −5 7 98 1;
23 4 56 −86 9;
13 −8 3 7 5;
12 2 3 678 32;
1 24 −67 14 15]
calcular las matrices (A + B),(A − B), A2 − B2 y A2 + 2AB + B2
e interpretar el resultado."""
A = [12 -3 125 4 23; -43 9 13 -34 1; 2 43 6 12 9; 24 56 5 76 4; 1 -9 123 12 34]
B = [12 -5 7 98 1; 23 4 56 -86 9; 13 -8 3 7 5; 12 2 3 678 32; 1 24 -67 14 15]
print(A + B)
print(A - B)
print(A^2-B^2)
print(A^2 + 2A*B + B^2)

"""Ejercicio 2
Discutir el siguiente sistema según los diferentes valores de los parámetros a y b.
x + y + z = 3,
2x − ay + 3z = 4,
3x − 3y + 4z = 7,
5x − (a + b)y + 7z = 8 + b.resolverlo utilizando el método de Gauss para a=4 y b=4"""


using LinearAlgebra
using SymPy
@vars x y z a b real=true
A = [1 1 1; 2 -a 3; 3 -3 4; 5 -(a+b) 7]
b = [3; 4; 7; 8+b]
x=det(hcat(A,b))
s=solve(x)
print(s)
eq5= x + y + z - 3
eq6= 2x - 4*y + 3z - 4
eq7= 3x - 3y + 4z - 7
eq8= 5x - 8*y + 7z - 12
s1=solve([eq5, eq6, eq7, eq8], [x, y, z])
print(s1)


"""Ejercicio 3
En una granja hay vacas y avestruces. Se sabe que ningún animal es cojo y que la suma de las patas de todos los
nimales es 32. Una vaca consume diariamente 200 gramos de vitaminas, de las que se gastan en total, diariamante,
2400 gramos en toda la granja. Tras un huracán, murieron un avestruz y varias vacas y el número de animales
se redujo a la mitad, siendo entonces el consumo total de vitaminas de 1300 gramos diarios.
Sabiendo que la cantidad de vitaminas que necesita un avestruz es un numero entero de gramos, deducir el
número de animales de cada clase que había al principio y el consumo dario de vitaminas que necesita cada
avestruz."""

using SymPy
@vars vacas avestruces vitaminas y real=true
A1=[4*vacas 2*avestruces ;200*vacas vitaminas*avestruces ; 200(4-y) vitaminas*(avestruces-1)]
B1=[32; 2400; 1300]
x=det(hcat(A1,B1))
s2=solve(x)


"""4.  Sea el espacio vectorial de los polinomios de grado menor o igual que 3, con coeficientes en R.
i. Hallar la matriz del cambio de base entre la base Bc = {x^3, x^2, x, 1} 
y la base B1 = {x^3 − 1, x^2 + x − 3, x^3 −5x + 2x, x^2 − 4}.
ii. A partir de dicha matriz calcular las coordenadas del polinomio p(x) = x^3 en la base B1.
iii. Se considera la base B2 = {x^2 + x − 3, x^3 + 3x − 5,
 x^3 − 5x^2 + 2x, x^3 − x − 1}. Hallar la matriz del cambio
de base entre las bases Bc y B2.
iv. Hallar la matriz del cambio de base entre las bases B1 y B2."""


using SymPy
@vars x real=true
Bc = [1 0 0 0 ; 0 1 0 0; 0 0 1 0; 0 0 0 1]
B1 =[1 -1 0 0; 0 1 1 -3; 1 0 -5 2; 0 1 0 -4]
B2 = [0 1 1 -3; 1 0 3 -5; 1 0 -5 2; 1 0 0 -1]
p = [1 0 0 0]
print(B1*Bc^-1)
print(p*B1*Bc^-1)
print(B2*Bc^-1)
print(B1*Bc^-1*B2)

"""5. En R5 se considera una base {u1, u2, u3, u4, u5} y el subespacio L de ecuaciones paramétrias respecto a dicha
base
x1 = α + γ,
x2 = α + 2γ + η,
x3 = α + 3γ + 2η,
x4 = α + 4γ + 3η,
x5 = α + 5γ + 4η.
Si W es el subespacio vectorial de ecuaciones implicitas en dicha base
−94x1 − 18x2 − 38x3 + 33x5 = 0,
130x1 + 16x2 − 38x3 + 15x5 = 0, .Calcular una base y unas ecuaciones implicitas de L y W.
"""