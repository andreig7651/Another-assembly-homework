# Gavriliu Andrei 323 CB

Task 1
    -avem doua bucle label1 si label2 in care parcurgem sirul;
    -efectuam diferenta dintre fiecare element si restul;cand gasim diferenta 1,ne oprim;
    -am gasit 2 numere consecutive pe care le vom lega in lista;
    -legam toate numerele consecutive din lista;
    -iteram din nou prin lista pentru a gasi valoarea de inceput 1;
    -salvam adresa lui 1 in eax;

Task 2
    -cmmmc:-ne vom folosi de 2 sume s1 si s2 in care vom tine multiplii lui a,respectiv b;
           -mai avem 2 contori cont 1 si cont 2 si inca o valoare de clear;
           -cele doua bucle label si label1 compara toti multiplii primului numar cu toti ai celui de
           al doilea(adica sumele);
           -cand cele doua sume sunt egale inseamna ca am gasit cmmmc pe care il punem in eax;
    
    -paranteze:-iteram prin sir,stiind lungimea sa;comparam fiecare caracter cu '(',in hexa 0x28;
               -daca gasim '(' incrementam l(left),altfel il incrementam pe r(right);
               -comparam l cu r,iar daca sunt egale afisam 1,altfel 0;