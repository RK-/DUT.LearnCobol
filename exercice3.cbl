       program-id. hypotenuse.

       1 cote1 pic 9(5)v99.
       1 cote2 pic 9(5)v99.
       1 hypo pic 9(5)v99.
       1 suite pic x.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Hypotenuse d''un triangle rectange'.
       1 s-plg-cote1.
           2 line 9 col 1 'Entrer la longueur du cote 1 : '.
           2 s-cote1 pic z(5).zz to cote1 required.
       1 s-plg-cote2.
           2 line 11 col 1 'Entrer la longueur du cote 2 : '.
           2 s-cote2 pic z(5).zz to cote2 required.
       1 a-plg-masc-res.
           2 line 13 col 8 'L''hypotenuse est egale a : '.
       1 a-plg-val-res.
           2 a-hypo line 13 col 34 pic z(5).zz from hypo.
       1 s-plg-suite line 24 col 80 pic x to suite auto secure.

       procedure division.
       display a-plg-titre
           display s-plg-cote1
           accept s-cote1
           display s-plg-cote2
           accept s-cote2
           compute hypo = function SQRT(cote1**2 + cote2**2)
           display a-plg-masc-res
           accept s-plg-suite
           display a-plg-val-res
       end program hypotenuse.

