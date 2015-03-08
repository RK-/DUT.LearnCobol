       $set repository "update on"
       function-id. nb-chiffres.

       working-storage section.
       1 i pic 99.

       linkage section.
       1 chaine pic x(20).
       1 nb pic 99.

       procedure division using chaine giving nb.
           move 0 to nb

           perform test after varying i from 1 by 1
           until i >= length of chaine
               if chaine(i:1) is numeric then
                   compute nb = nb + 1
               end-if
           end-perform
           goback.
       end function nb-chiffres.
