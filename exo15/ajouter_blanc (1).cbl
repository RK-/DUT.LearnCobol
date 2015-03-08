       program-id. ajouter_blanc.

       working-storage section.
       1 i pic 99.
       1 nb pic 99.
       1 lch pic 99.
       1 j pic 99.
       1 k pic 99.

       linkage section.
       1 chaine pic x(20).
       1 chainemod pic x(30).

       procedure division using chaine, chainemod.
           move 0 to nb
           move length of chaine to lch
           move 30 to k

           perform test after varying i from 1 by 1
           until i >= lch
               if chaine(lch - i:1) is numeric then
                   compute nb = nb + 1
                   compute j = lch - i
                   compute k = k - 1
                   move chaine(j:1) to chainemod(k:1)
               end-if
               if nb = 3 then
                   compute k = k - 1
                   move ' ' to chainemod(k:1)
                   move 0 to nb
               end-if
           end-perform
       goback.


