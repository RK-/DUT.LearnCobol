       program-id. pg-factoriel-carre.
       1 n pic 99.
       1 i pic 99.
       1 f pic 999.
       1 nl pic 99 value 14.
       1 c pic 999.
       1 nc pic 99.
       1 suite pic x.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Cacul Factoriel et des carres'.
       1 a-plg-saisie.
           2 line 8 col 1 'Saisir le coefficient : '.
           2 line 9 col 1 'n = '.
           2 s-n pic zz to n required.
       1 a-plg-res.
           2 a-i line nl col nc pic zz from i.
           2 a-f line nl col 13 pic zzz from f.
           2 a-c line nl col nc pic zzz from c.
       1 s-plg-suite line 25 col 80 pic x to suite auto secure.

       procedure division.
           display a-plg-titre
           display a-plg-saisie
           accept s-n
           compute nc = 1
           perform test after varying i from 1 by 1 until i=n
               compute f = function Factorial(i)
               compute c = i **2
               display a-plg-res
               compute nl = nl + 1
               compute nc = nc - 4
               if nl=25
                then compute nc = nc + 14
                compute nl = 14
               end-if
           end-perform
       end program pg-factoriel-carre.
