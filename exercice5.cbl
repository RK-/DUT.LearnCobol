       program-id. equation-2nd-deg.

       1 a pic s999v99.
       1 b pic s999v99.
       1 c pic s999v99.
       1 x1 pic s999v99.
       1 x2 pic s999v99.
       1 xd pic s999v99.
       1 delta pic s999v99.
       1 suite pic x.

       screen section.
        1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Resolution d''une equation du second degre'.
        1 s-plg-coeff.
           2 line 8 col 1 'Saisir les coefficients :'.
           2 line 9 col 1 'a = '.
           2 s-a pic -zzz.zz to a required.
           2 line 10 col 1 'b = '.
           2 s-b pic -zzz.zz to b required.
           2 line 11 col 1 'c = '.
           2 s-c pic -zzz.zz to c required.
        1 a-plg-sol.
           2 line 14 col 1 'Solution : '.
        1 a-plg-res1.
           2 line 15 col 1 'Deux racines reelles'.
           2 line 16 col 5 'x1 = '.
           2 line 17 col 5 'x2 = '.
           2 a-x1 line 16 col 12 pic -zzz.zz from x1.
           2 a-x2 line 17 col 12 pic -zzz.zz from x2.
        1 a-plg-res2.
           2 line 15 col 1 'Une racine double'.
           2 line 16 col 5 'xd = '.
           2 a-xd line 16 col 12 pic -zzz.zz from xd.
        1 a-plg-res3.
           2 line 15 col 1 'Pas de racine reelle!'.
        1 s-plg-suite line 25 col 80 pic x to suite auto secure.

       procedure division.
           display a-plg-titre
           display s-plg-coeff
           accept s-a
           accept s-b
           accept s-c
           compute delta = b**2 - 4 * a * c
           display a-plg-sol
           evaluate true
               when delta < 0
                   display a-plg-res3
               when delta = 0
                   compute xd = -b / 2*a
                   display a-plg-res2
               when delta > 0
                   compute x1 = (-b - function SQRT(delta)) / 2*a
                   compute x2 = (-b + function SQRT(delta)) /2*a
                   display a-plg-res1
           end-evaluate
       end program equation-2nd-deg.




