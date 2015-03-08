       program-id. pg-principal.
       repository.
       function nbchifsuite.

       data division.
       working-storage section.
       1 chaine pic x(20).
       1 chainemod pic x(30).
       1 n pic 99.
       1 somme pic 9(5).
       1 produit pic 9(10).

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 2 col 15 'Programme principal'.
       1 s-plg-chaine.
           2 line 3 col 3 'Chaine ? '.
           2 s-chaine pic x(20) to chaine required.
       1 a-plg-n.
           2 line 5 col 5 'Nombre de chiffres: '.
           2 pic 99 from n.
       1 a-plg-chaine.
           2 line 7 col 5 'Suite: '.
           2 pic x(20) from chaine.
       1 a-plg-produit.
           2 line 9 col 5 'Produit: '.
           2 pic 9(10) from produit.
       1 a-plg-somme.
           2 line 11 col 5 'Somme: '.
           2 pic 9(5) from somme.
       1 a-plg-chainemod.
           2 line 13 col 5 'Suite modifie: '.
           2 pic x(30) from chainemod.


       procedure division.
           display a-plg-titre
           display s-plg-chaine
           accept s-chaine
           compute n = function nbchifsuite(chaine)
           display a-plg-n
           call 'Program15-1' using chaine somme produit end-call
           display a-plg-somme
           display a-plg-produit

       end program pg-principal.
