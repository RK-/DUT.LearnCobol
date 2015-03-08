       program-id. pg-exo9.

       1 n pic 9(3).
       1 nl pic 9(3).
       1 i pic 9(3).
       1 res pic 9(5).
       1 nc pic 9(5).

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 2 col 15 'N premiers entiers et leurs carrées'.
       1 s-plg-n.
           2 line 8 col 1 'N = '.
           2 s-n pic z(3) to n.
           2 line  10 col 1 'entier et son carre :'.
       1 a-plg-res.
           2 a-res line nl col nc pic z(9) from res.
       1 a-plg-i.
           2 a-i line nl col nc pic z(3) from i.

       procedure division.
           display a-plg-titre
           display s-plg-n
           accept s-n
           compute nl = 12
           compute nc = 1
               perform test before varying i from 1 by 1 until i>n
                   compute res = i * i
                   display a-plg-i
                   compute nc = nc + 4
                   display a-plg-res
                   compute nl = nl + 1
                   compute nc = nc - 4
                   if nl = 25 then
                       compute nc = nc + 14
                       compute nl = 12
                   end-if
               end-perform

       end program pg-exo9.

