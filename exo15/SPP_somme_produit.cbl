       program-id. somme_produit.

       working-storage section.
       1 i pic 99.

       linkage section.
       1 chaine pic x(20).
       1 somme pic 9(3).
       1 produit pic 9(10).

       procedure division using chaine, somme, produit.
           move 0 to somme
           move 1 to produit

           perform test after varying i from 1 by 1
           until i >= length of chaine
               if chaine(i:1) is numeric then
                   compute somme = somme + function numval(chaine(i:1))
                   compute produit = produit *
                   function numval(chaine(i:1))
               end-if
           end-perform
       goback.
