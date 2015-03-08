       program-id. pg-inverse-char.

       1 mot pic x(20).
       1 mot2 pic x(20).
       1 nb1 pic 9(3).

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 2 col 15 'Inversion'.

       1 s-plg-mot.
           2 line 5 col 3 'Entrer le mot a inverser : '.
           2 s-mot pic x(20) to mot required.

       1 s-plg-mot2.
           2 line 7 col 3 'le mot est : '.
           2 a-mot2 line 7 col 20 pic x(20) from mot2.

       procedure division.
           display a-plg-titre
           display s-plg-mot
           accept s-mot
           compute nb1 = 0
           inspect mot tallying nb1 for characters before space
           move function reverse (mot(1:nb1)) to mot2
           display s-plg-mot2

       end program pg-inverse-char.
