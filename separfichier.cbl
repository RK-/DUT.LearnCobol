       program-id. pg-separfichier.

       file-control.
           select FProprietaire assign 'proprietaire1.dat'
           organization record sequential.

           select f-proprio assign 'proprio.dat'
           organization indexed
           access random
           record key Pnumprop.

           select f-appart assign 'appart.dat'
           organization indexed
           access random
           record key Anumappart
           alternate key Anumprop.

       data division.

       file section.
       fd FProprietaire.
       1 Proprietaire.
           2 NomProp pic x(20).
           2 PrenomProp pic x(20).
           2 VilleProp pic x(20).
           2 TelProp pic x(20).
           2 tab.
               3 appart occurs 5.
                   4 nbpiece pic 99.
                   4 Etage pic 99.
                   4 NbPersMax pic 99.
                   4 tarifHT pic 9999.
                   4 tarifBS pic 9999.
                   4 vue pic x(20).
                   4 Ville pic x(20).

       fd f-proprio.
       1 proprio.
           2 Pnumprop pic 9999.
           2 PNomProp pic x(20).
           2 PPrenomProp pic x(20).
           2 PVilleProp pic x(20).
           2 PTelProp pic x(20).

       fd f-appart.
       1 appartement.
           2 Anumprop pic 9999.
           2 Anumappart pic 9999.
           2 Anbpiece pic 99.
           2 AEtage pic 99.
           2 ANbPersMax pic 99.
           2 AtarifHT pic 9999.
           2 AtarifBS pic 9999.
           2 Avue pic x(20).
           2 AVille pic x(20).

       working-storage section.
       1 v-fin-FProprietaire pic x value 'N'.
           88 fin-FProprietaire value 'O' false 'N'.
       1 nump pic 9999 value 1.
       1 numa pic 9999 value 1.
       procedure division.
           open input FProprietaire
           open output f-proprio
           open output f-appart
           read FProprietaire end set fin-FProprietaire to true
           end-read
           perform until fin-FProprietaire
               move nump to PnumProp
               move NomProp to PNomProp
               move PrenomProp to PPrenomProp
               move VilleProp to PVilleProp
               move TelProp to PTelProp
               write proprio
               read FProprietaire end set fin-FProprietaire to true
               end-read
               compute nump = nump + 1

           end-perform
           close FProprietaire
           close f-proprio
           close f-appart

       end program pg-separfichier.
