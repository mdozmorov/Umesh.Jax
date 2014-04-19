




















Analysis of mutated genes
========================================================




We are analyzing genes_NZB-X_2758-1_2410-3_2328-3.txt, genes_NZB-X_2758-1_2410-X_2328-3.txt, genes_NZB-X_2758-3_2410-1_2328-1.txt, genes_NZB-X_2758-3_2410-X_2328-1.txt gene lists. 

"X" indicates we do not care about a mutation in that particular mouse (e.g., NZB-X indicates the status of a mutation in the NZB mouse is not important). "1" indicates that, for a given mouse, this is a wild-type mutation (same as reference). "3" indicates reliably detected non-wild type mutation. "2" is uncertain detection, and is not considered here.







First, we check how, for example, 1X3 and 133 gene lists overlap. The latter contains more stringent mutation selection, hence, 133 gene list should be a subset of the more relaxed 1X3 gene list.

<img src="img/venn133vs1X3.png" title="plot of chunk venn133vs1X3" alt="plot of chunk venn133vs1X3" width="700" />


Yes, the second list is a subset of the first one.

Comparing 133 vs 311 gene sets
-------------------------------
Now, we compare gene sets mutated in 2410 & 2328 mice (133 list) with genes mutated in 2756 mouse (311 list).

<img src="img/venn133vs311.png" title="plot of chunk venn133vs311" alt="plot of chunk venn133vs311" width="700" />


We see that 80 genes have mutations in both conditions.

Next step:

1) All condition-specific genes, without caring for overlap? E.g., 220 genes for "133" condition vs. 230 genes for "311" condition.

2) Unique for a condition genes, e.g., 140 vs. 150 genes?

3) Genes mutated in both conditions (80 genes)?

4) All the above? 

Genes mutated in both conditions (80 genes)
=====================================================================================================================
The genes mutated in both conditions were mapped to gene names and descriptions. Some may have synonyms, thus, multiple genes may resolve to a single gene name. This is why the dable shows less than 80 number of genes


<img src="img/133and311.png" title="plot of chunk 133and311" alt="plot of chunk 133and311" width="700" />


Enriched gene ontologies
-------------------------

```
## The number of enriched GO :155
```

<img src="img/GO_133and311.png" title="plot of chunk GO.133and311" alt="plot of chunk GO.133and311" width="700" />


Enriched KEGG pathways
----------------------

```
## The number of enriched KEGG :5
```

<img src="img/KEGG_133and311.png" title="plot of chunk KEGG.133and311" alt="plot of chunk KEGG.133and311" width="700" />


Enriched Reactome pathways
--------------------------

```
## The number of enriched Reactome pathways:2
```

<img src="img/Reactome_133and311.png" title="plot of chunk Reactome.133and311" alt="plot of chunk Reactome.133and311" width="700" />

