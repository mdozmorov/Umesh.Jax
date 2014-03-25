Jax SNP subset analysis 
=======================================

Prerequisites - ``Custom_Result.zip``.

Extract comparison-specific SNP sets:

.. code-block:: bash

    make

Extract summary statistics of SNP numbers per gene

.. code-block:: bash

    make stats

Extracted data stored in ``data/`` folder, results are in ``results/`` folder.


- ``all.txt`` - Merged results, 1,445,932 SNPs total
    
    - ``NZB-X_2758-1_2410-X_2328-3.txt`` - 9412 SNPs
    
    - ``NZB-X_2758-3_2410-X_2328-1.txt`` - 13974 SNPs
    
    - ``NZB-X_2758-1_2410-3_2328-3.txt`` - 5057 SNPs
    
    - ``NZB-X_2758-3_2410-1_2328-1.txt`` - 6607 SNPs
    
- ``stats*.txt`` - Genes sorted by the number of SNPs in them

    - ``stats_NZB-X_2758-1_2410-3_2328-3.txt`` - 223 genes
    
    - ``stats_NZB-X_2758-1_2410-X_2328-3.txt`` - 535 genes
    
    - ``stats_NZB-X_2758-3_2410-1_2328-1.txt`` - 231 genes
    
    - ``stats_NZB-X_2758-3_2410-X_2328-1.txt`` - 606 genes



Stats about # of SNPs per region
---------------------------------
11075	3'UTR

32	3'UTR 5'UTR

3	3'UTR 5'UTR Coding Exon( nonsynonymous)

12	3'UTR 5'UTR Exon(Coding Exon(Coding synonymous) synonymous)

4	3'UTR 5'UTR Exon(Coding synonymous)

3	3'UTR 5'UTR Intron

3	3'UTR Coding Exon( Exon( Coding nonsynonymous) Intron nonsynonymous)

9	3'UTR Coding Exon( Exon( Coding nonsynonymous) nonsynonymous)

6	3'UTR Coding Exon( Intron nonsynonymous)

67	3'UTR Coding Exon( nonsynonymous)

3	3'UTR Exon (non protein coding transcript)

69	3'UTR Exon( Coding nonsynonymous)

12	3'UTR Exon(Coding Exon(Coding synonymous) Intron synonymous)

39	3'UTR Exon(Coding Exon(Coding synonymous) synonymous)

12	3'UTR Exon(Coding Intron synonymous)

226	3'UTR Exon(Coding synonymous)

6	3'UTR Exon(Coding synonymous) Intron

1252	3'UTR Intron

1299	5'UTR

6	5'UTR Coding Exon( Exon( Coding nonsynonymous) nonsynonymous)

69	5'UTR Coding Exon( nonsynonymous)

3	5'UTR Exon (non protein coding transcript)

25	5'UTR Exon( Coding nonsynonymous)

3	5'UTR Exon( Coding nonsynonymous) Exon(Coding synonymous)

3	5'UTR Exon(Coding Exon(Coding synonymous) Intron synonymous)

60	5'UTR Exon(Coding Exon(Coding synonymous) synonymous)

9	5'UTR Exon(Coding Intron synonymous)

203	5'UTR Exon(Coding synonymous)

304	5'UTR Intron

26	Coding Exon( Exon( Coding nonsynonymous) Intron nonsynonymous)

1398	Coding Exon( Exon( Coding nonsynonymous) nonsynonymous)

6	Coding Exon( Exon(Coding Exon(Coding synonymous) nonsynonymous) synonymous)

6	Coding Exon( Exon(Coding Intron nonsynonymous) synonymous)

20	Coding Exon( Exon(Coding synonymous) nonsynonymous)

185	Coding Exon( Intron nonsynonymous)

575	Exon (non protein coding transcript)

3	Exon (non protein coding transcript) Exon(Coding synonymous)

103	Exon (non protein coding transcript) Intron

5231	Exon( Coding nonsynonymous)

38	Exon( Coding nonsynonymous) Exon(Coding synonymous)

311	Exon( Coding nonsynonymous) Intron

120	Exon(Coding Exon(Coding synonymous) Intron synonymous)

3719	Exon(Coding Exon(Coding synonymous) synonymous)

246	Exon(Coding Intron synonymous)

10820	Exon(Coding synonymous)

335	Exon(Coding synonymous) Intron

886887	Intergenic

521077	Intron



