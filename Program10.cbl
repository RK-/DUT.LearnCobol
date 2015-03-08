       program-id. pg-appro-sinus.

       1 x pic 9v9(5).
       1 sin pic s9v9(5).
       1 signe pic s9.
       1 i pic 99.
       1 terme pic 9v9(5).

       screen section.

       1 a-plg-titre.
           2 blank screen background-colour 1.
           2 line 2 col 5 'Approximation de sin(x)'.
       1 s-plg-x.
           2 line 5 col 3 'Nombre x = '.
           2 s-x pic z.z(5) to x required.
       1 a-plg-res.
           2 line 10 col 5 'sin(x) = '.
           2 pic -z.z(5) from sin.

       procedure division.
           display a-plg-titre
           display s-plg-x
           accept s-x

           compute sin = 0
           compute signe = -1

           perform test after varying i from 1 by 2
           until terme < .00001
               compute terme = (x**i) / (function factorial(i))
               compute signe = signe * (-1)
               compute sin = sin + signe * terme
           end-perform
           display a-plg-res
       end program pg-appro-sinus.
