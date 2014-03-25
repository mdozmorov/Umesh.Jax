all:		results/all.txt results/NZB-X_2758-1_2410-X_2328-3.txt results/NZB-X_2758-3_2410-X_2328-1.txt results/NZB-X_2758-1_2410-3_2328-3.txt results/NZB-X_2758-3_2410-1_2328-1.txt
stats:		results/stats_SNP_type.txt results/genes_NZB-X_2758-1_2410-X_2328-3.txt results/genes_NZB-X_2758-3_2410-X_2328-1.txt results/genes_NZB-X_2758-1_2410-3_2328-3.txt results/genes_NZB-X_2758-3_2410-1_2328-1.txt


results/all.txt:	Custom_Result.zip
			unzip Custom_Result.zip
			-mv Custom_Result data
			-mkdir results
			for file in data/*.txt; do cat $$file | sed '1d' >> results/all.txt; done

# Column breakdown
# NZB_BlNJ: 2	NZM2410_J: 3 	N2M_2328: 4		N2M_2758: 5 

results/NZB-X_2758-1_2410-X_2328-3.txt:			results/all.txt
										@awk 'BEGIN {OFS="\t"} {if ($$5 == 1 && $$4 ==3) print $$0}' results/all.txt > results/NZB-X_2758-1_2410-X_2328-3.txt
										@wc -l results/NZB-X_2758-1_2410-X_2328-3.txt

results/NZB-X_2758-3_2410-X_2328-1.txt:			results/all.txt
										@awk 'BEGIN {OFS="\t"} {if ($$5 == 3 && $$4 ==1) print $$0}' results/all.txt > results/NZB-X_2758-3_2410-X_2328-1.txt
										@wc -l results/NZB-X_2758-3_2410-X_2328-1.txt
results/NZB-X_2758-1_2410-3_2328-3.txt:			results/all.txt
										@awk 'BEGIN {OFS="\t"} {if ($$5 == 1 && $$3==3 && $$4 ==3) print $$0}' results/all.txt > results/NZB-X_2758-1_2410-3_2328-3.txt
										@wc -l results/NZB-X_2758-1_2410-3_2328-3.txt
results/NZB-X_2758-3_2410-1_2328-1.txt:			results/all.txt
										@awk 'BEGIN {OFS="\t"} {if ($$5 == 3 && $$3==1 && $$4 ==1) print $$0}' results/all.txt > results/NZB-X_2758-3_2410-1_2328-1.txt
										@wc -l results/NZB-X_2758-3_2410-1_2328-1.txt

results/stats_SNP_type.txt:						results/all.txt
										cut -f17 results/all.txt | sort | uniq -c > results/stats_SNP_type.txt

results/genes_NZB-X_2758-1_2410-X_2328-3.txt:	results/NZB-X_2758-1_2410-X_2328-3.txt
										cut -f16 results/NZB-X_2758-1_2410-X_2328-3.txt | sort | uniq -c | sed -r 's/^ *([0-9]+)/\1\t/' | sort -k1,1hr -k2,2 > results/genes_NZB-X_2758-1_2410-X_2328-3.txt
results/genes_NZB-X_2758-3_2410-X_2328-1.txt:	results/NZB-X_2758-3_2410-X_2328-1.txt
										cut -f16 results/NZB-X_2758-3_2410-X_2328-1.txt | sort | uniq -c | sed -r 's/^ *([0-9]+)/\1\t/' | sort -k1,1hr -k2,2 > results/genes_NZB-X_2758-3_2410-X_2328-1.txt
results/genes_NZB-X_2758-1_2410-3_2328-3.txt:	results/NZB-X_2758-1_2410-3_2328-3.txt
										cut -f16 results/NZB-X_2758-1_2410-3_2328-3.txt | sort | uniq -c | sed -r 's/^ *([0-9]+)/\1\t/' | sort -k1,1hr -k2,2 > results/genes_NZB-X_2758-1_2410-3_2328-3.txt
results/genes_NZB-X_2758-3_2410-1_2328-1.txt:	results/NZB-X_2758-3_2410-1_2328-1.txt
										cut -f16 results/NZB-X_2758-3_2410-1_2328-1.txt | sort | uniq -c | sed -r 's/^ *([0-9]+)/\1\t/' | sort -k1,1hr -k2,2 > results/genes_NZB-X_2758-3_2410-1_2328-1.txt



