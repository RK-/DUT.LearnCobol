       program-id. calculsommeproduit.
       working-storage section.
       1 i pic 99.

       linkage section.
       1 chaine pic x(50).
       1 somme pic 9(5).
       1 produit pic 9(10).

       procedure division using chaine somme produit.
           compute produit = 1
           compute somme = 0
           perform test after varying i from 1 by 1 until i > length of
           chaine
               if (chaine(i:1) <> ' ') then
               compute somme = somme + function numval(chaine(i:1))
               compute produit = produit * function numval(chaine(i:1))
           end-perform
       goback.
       end program calculsommeproduit.
