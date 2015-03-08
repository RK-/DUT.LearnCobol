       program-id. pg-factoriel.
       1 n pic 99.
       1 i pic 99.
       1 f pic 999.
       1 nl pic 99 value 14.
       1 suite pic x.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Cacul Factoriel'.
       1 a-plg-saisie.
           2 line 8 col 1 'Saisir le coefficient : '.
           2 line 9 col 1 'n = '.
           2 s-n pic zz to n required.
       1 a-plg-res.
           2 line nl col 1 'Le factoriel de '.
           2 a-n line nl col 18 pic zz from n.
           2 line nl col 22 'est : '.
           2 a-f line nl col 32 pic zzz from f.
       1 s-plg-suite line 25 col 80 pic x to suite auto secure.

       procedure division.
           display a-plg-titre
           display a-plg-saisie
           accept s-n
           perform test after varying i from 1 by 1 until i=n
               compute f = function Factorial(i)
               display a-plg-res
               compute nl = nl + 1
           end-perform
       end program pg-factoriel.
