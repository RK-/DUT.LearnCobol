       program-id. pg-exo13.

       1 chaine1 pic x(50).
       1 chaine2 pic x(50).
       1 chaine3 pic x(50).
       1 j pic 9(9).
       1 i pic 9(9).
       1 nb2 pic 9(9).

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Inverse un mot saisie au clavier'.
       1 s-plg-chaine1.
           2 line 9 col 1 'Entrer le mot :'.
           2 s-chaine1 pic x(50) to chaine1 required.
       1 a-plg-chaine2.
           2 line 13 col 1 'Le du mot est :'.
           2 a-chaine2 line 13 col 30 pic x(50) from chaine2.
       1 a-plg-chaine3.
           2 line 15 col 1 'Son inverse :'.
           2 a-chaine3 line 15 col 30 pic x(50) from chaine3.
       1 a-plg-palin.
           2 line 18 col 15 'Cette phrase est un palindrome.'.
       1 a-plg-nonpalin.
           2 line 18 col 15 'Cette phrase n est pas un palindrome.'.


       procedure division.
       display a-plg-titre
           display s-plg-chaine1
           accept s-chaine1
           compute nb2 = length of chaine1
           compute i = 1
           compute j = 1
           perform test after varying i from 1 by 1 until i>nb2
               if (chaine1(i:1) <> " ") then
                   move chaine1(i:1) to chaine2(j:1)
                   compute j = j + 1
               end-if
           end-perform
           compute j = j - 1
           display a-plg-chaine2
           move function reverse(chaine2(1:j)) to chaine3
           display a-plg-chaine3
           if(chaine3(1:j) = chaine2(1:j)) then
               display a-plg-palin
           else
               display a-plg-nonpalin
           end-if

       end program pg-exo13.





