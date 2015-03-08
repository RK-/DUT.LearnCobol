       program-id. somme-moyenne.

       1 nb1 pic 9(10).
       1 nb2 pic 9(10).
       1 somme pic 9(10).
       1 moyenne pic 9(10)v999.
       1 suite pic x.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Somme et moyenne'.
       1 s-plg-nombre1.
           2 line 9 col 1 'Entrer le 1er nombre : '.
           2 s-nb1 pic z(10) to nb1 required.
       1 s-plg-nombre2.
           2 line 11 col 1 'Entrer le 2eme nombre : '.
           2 s-nb2 pic z(10) to nb2 required.
       1 a-plg-masc-res.
           2 line 14 col 8 'La somme est : '.
           2 line 16 col 8 'La moyenne est : '.
       1 a-plg-val-res.
           2 a-somme line 14 col 23 pic z(10) from somme.
           2 a-moyenne line 16 col 24 pic z(10).zzz from moyenne.
       1 s-plg-suite line 24 col 80 pic x to suite auto secure.

       procedure division.
       display a-plg-titre
           display s-plg-nombre1
           accept s-nb1
           display s-plg-nombre2
           accept s-nb2
           compute somme = nb1 + nb2
           compute moyenne = somme / 2
           display a-plg-masc-res
           accept s-plg-suite
           display a-plg-val-res
       end program somme-moyenne.

