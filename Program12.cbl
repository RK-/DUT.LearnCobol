       program-id. occurence.
       1 texte pic x(50).
       1 motif pic x(10).
       1 taillemotif pic 99.
       1 posi pic 99 value 0.
       1 i pic 99.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 2 col 15 'Occurence'.
       1 s-plg-texte.
           2 line 5 col 3 'Entrer le texte : '.
           2 s-texte pic x(50) to texte required.
       1 s-plg-motif.
           2 line 7 col 3 'Entrer le motif : '.
           2 s-motif pic x(20) to motif required.
       1 a-plg-indice.
           2 line 15 col 2 'Place de la premiere occurence : '.
           2 line 15 col 35 pic zz from posi.
       1 a-nondispo.
           2 line 15 col 2 'N est pas dans le texte'.

       procedure division.
           display a-plg-titre
           display s-plg-texte
           accept s-texte
           display s-plg-motif
           accept s-motif
           compute taillemotif = 0
           inspect motif tallying taillemotif for characters
           before space
           perform test after varying i from 1 by 1 until i >
           length of texte or posi <> 0
               if texte(i:taillemotif) = motif(1:taillemotif)
                   then compute posi = i
                        compute posi = posi - 1
               end-if
           end-perform
           if posi = 0
               then display a-nondispo
           else display a-plg-indice
           end-if
       end program occurence.
