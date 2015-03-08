       $set repository "update on"
       function-id. nbchifsuite.
       linkage section.
       1 chaine pic x(50).
       1 nb pic 99.

       procedure division using chaine giving nb.
            compute nb = 0
            inspect chaine tallying nb for characters
            before space
       end function nbchifsuite.
