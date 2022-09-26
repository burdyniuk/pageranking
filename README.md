# Burdîniuc Ilie, 311CD, Tema 2 - Metode Numerice - PageRank

## Iterative:
	- am citit datele din fisierele de intrare
	- am lasat 0  pe diagonala, fiindca nu se ia in considerare link-ul catre ele
	  insasi
	- am calculat variabile pentru prima iteratie
	- am intrat in bucla calculand de fiecare date vectorul, pana nu ajung la 
	  precizia dorită

## Algebraic:
	- am citit datele din fisierele de intrare
	- am lasat 0  pe diagonala, fiindca nu se ia in considerare link-ul catre ele
	  insasi
	- am calculat variabile pentru calcularea vectorului de iesire
	- am folosit algoritmul Gram-Schimdt pentru a descompune in QR, am folosit 
	  algoritmul SST pentru calcularea ecuatiilor. In final am aflat inversa
	  necesara la calcularea vectorul PR

## PageRank:
	- am apelat functiile descrise mai sus si am inscris numărul de pagini web 
	  analizate si rezultatele functiior in fisierul de tip nume".out"
	- am sortat vectorul rezultat la functia Algebraic
	- am scris numerele si indicii la care nod apartine gradul de apartenenta
	- am scris o functie noua care calcula gradul de apartenenta
	- si am scris acestea in fisier langa indicile nodului
	- am returnat vectorii calculati de functiile anterioare