       program-id. decompose-somme-argent.

       1 somme pic 9(5)v99.
       1 a pic 9(5).
       1 b pic 9(5).
       1 c pic 9(5).
       1 d pic 9(5).
       1 e pic 9(5).
       1 f pic 9(5)v99.
       1 suite pic x.

       screen section.
       1 a-plg-titre.
           2 blank screen.
           2 line 6 col 10 'Decomposition d''une somme d''argent'.
       1 s-plg-montant.
           2 line 9 col 1 'Saisir le montant de la somme : '.
           2 s-somme pic z(5).zz to somme required.
       1 a-plg-masc-res.
           2 line 12 col 8 'Resultat : '.
           2 line 13 col 8 'Somme = '.
           2 col 20 'x200 + '.
           2 col 31 'x100 + '.
           2 col 42 'x50 + '.
           2 col 50 'x20 + '.
           2 col 61 'x10 + '.
       1 a-plg-val-res.
           2 a-a line 13 col 14 pic z(4)9 from a.
           2 a-b line 13 col 24 pic z(4)9 from b.
           2 a-c line 13 col 36 pic z(4)9 from c.
           2 a-d line 13 col 44 pic z(4)9 from d.
           2 a-e line 13 col 55 pic z(4)9 from e.
           2 a-f line 13 col 67 pic z(5).zz from f.
       1 s-plg-suite line 24 col 80 pic x to suite auto secure.

       procedure division.
       display a-plg-titre
           display s-plg-montant
           accept s-somme
           compute a = somme / 200
           compute somme = somme - a * 200
           compute b = somme / 100
           compute somme = somme - b * 100
           compute c = somme / 50
           compute somme = somme - c * 50
           compute d = somme / 20
           compute somme = somme - d * 20
           compute e = somme / 10
           compute f = somme - e * 10
           display a-plg-masc-res
           accept s-plg-suite
           display a-plg-val-res
       end program decompose-somme-argent.



