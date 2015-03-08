       program-id. cercle.

       1 rayon pic 9(5)v99.
       1 perimetre pic 9(5)v99.
       1 surface pic 9(5)v99.
       1 suite pic x.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Cercle'.
       1 s-plg-rayon.
           2 line 9 col 1 'Rayon du cercle : '.
           2 s-rayon pic z(5).zz to rayon required.
       1 a-plg-masc-res.
           2 line 12 col 8 'Périmètre : '.
           2 line 14 col 8 'Surface : '.
       1 a-plg-val-res.
           2 a-perimetre line 12 col 19 pic z(5).zz from perimetre.
           2 a-surface line 14 col 18 pic z(5).zz from surface.
       1 s-plg-suite line 24 col 80 pic x to suite auto secure.

       procedure division.
       display a-plg-titre
           display s-plg-rayon
           accept s-rayon
           compute perimetre = 2 * function pi * rayon
           compute surface = function pi * rayon * rayon
           display a-plg-masc-res
           accept s-plg-suite
           display a-plg-val-res
       end program cercle.
