	Autor: Soare Ion-Alexandru
	Universitatea Politehnica din Bucuresti
	Facultatea de Automatica si Calculatoare
	Specializarea CTI, Grupa 313 CD
	Data: 2 Aprilie 2017


TEMA 1- METODE NUMERICE

joc() 
{

Functia joc constituie un simulator de X si 0 prin intermediul unei matrice de dimensiuni 3x3, umpluta la inceput, conventional cu "-".
La inceput, jucatorul trebuie sa aleaga cu ce vrea sa joace, X sau 0 (X-ul incepe intotdeauna), ori sa apese tasta q (quit), pentru a iesi din joc.
Comenzile nu sunt case sensitive, deci utilizatorul le poate introduce si cu caps lock-ul pornit. Variabila moveturn este setata implicit pe 0 pentru
tura user-ului si pe 1 pentru tura calculatorului, schimbandu-se alternativ la fiecare valoare VALIDA a unuia dintre cei doi. Miscarile calculatorului
sunt random (prin intermediul functiei randi), nerespectand conditia de a face intotdeauna minim remiza, dar scutind jocul de previzibilitate.
	La finalul fiecarei partide este afisat scorul cu ajutorul celor doua variabile scorEU si scorPC, care cresc cu o unitate la fiecare victorie
a respectivului.

}
	
baza(sursa,b1,b2)
{
	
Functia baza primeste ca argument un string de caractere (sursa), ce reprezinta un numar in baza b1. Nu s-au pus conditii pentru apartenenta numarului
la baza specificata (in pdf-ul temei este specificat ca programul trebuie sa ruleze pentru orice valori VALIDE, oricat de mari). Numerele din string sunt case sensitive,
deci numarul 'a31f3das2' va fi valid, in timp ce 'A31F3DAS2' nu va fi.
	S-au initializat de la inceput: lungimea argumentului sursa; un vector pentru fiecare caracter din sursa, ce contine pozitiile in care elementul respectiv apare
in string si length-ul fiecarui vector pentru a-l putea parcurge cu un aux (ce va merge implicit de la 1 la length - 1).
	Prima oara, este transformat numarul din b1 in baza 10 (daca este in baza 10 deja, ramane in baza 10). Astfel, cu ajutorul pozitiilor fiecarui caracter, determinate
mai sus, este efectuata o suma de: numar_respectiv*b^(length_sursa - pozitie_numar_respectiv) => numarul in baza 10.
	Dupa aceea, din baza 10 este transformat in baza b2, prin metoda clasica: se imparte numarul la b2, catul devine noul deimpartit, urmand ca toate resturile sa fie
afisate in ordine inversa pana cand primul cat este egal cu 0. De asemenea, pe parcurs se verifica daca un rest este > 9 si daca da, este scris cu echivalentul sau in baza
de numeratie respectiva ( ex: pentru rest = 11, restul este notat cu 'b' ).
	La final, prin intermediul functiei flip, string-ul de resturi rezultat este intors pentru a satisface cerinta exercitiului, numarul in baza b2.

}

zigzag(n)
{
	Functia este abordata matematic, fiind observate multiple relatii de recurenta intre elementele matricei. Regulile au fost observate de la gradul 3 incolo, deci primele 3 diagonale
secundare vor fi completate automat. Pentru n > 3 vom umple diagonalele secundare din din partea superioara. Pentru cea mai din stanga pozitie a unui element de pe respectiva diagonala,
daca numarul este par, are formula: ( n^2 + n - 2 ) / 2 ; si pentru impare: ( n^2 - n ) / 2 ; *este folosit k pentru a nu modifica n-ul*
	De asemenea, daca diagonala are la inceput un numar impar, elementele urmatoare cresc liniar cu 1, in timp ce daca elementul este par, elementele scad cu 1.
	Acum ca toata partea superioara, inclusiv diagonala secundara este umpluta, tot ce mai ramane este partea inferioara.
	Ultimul element, de pe pozitia (n,n) este = n^2 - 1. In stanga lui, elementele dispun de urmatoarea recurenta: de la pozitia n la pozitia n-1, intotdeauna, se scade 1.
Dupa aceea, se scade 4*count, unde count reprezinta numarul de dati de cate ori s-a scazut 4 pana acum + 1. *prima oara cand se va scadea are valoarea 1, deci 0 + 1*
De asemenea, sunt utilizate variabilele verif si verif2 pentru a asigura alternanta de -1 si -4*count, cand una este pe 0, cealalta fiind pe 1. Analog ca mai devreme, elementele de pe
diagonale cresc si scad in functie de paritatea elementului tocmai aflat, urmand sa se completeze restul matricei dupa aceeasi regula.

}
