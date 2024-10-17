#If you're running this on a server with R version after 4.4.0, you'll need to use the following command first adn then use the newly created "cut" files in the below script. 
#cut -f1,2 $sample-metabat2_scaffold2bin.tsv >> $sample-metabat2_scaffold2bin_cut.tsv && cut -f1,2 $sample-maxbin2_scaffold2bin.tsv >> $sample-maxbin22_scaffold2bin_cut.tsv && cut -f1,2 $sample-concoct_scaffold2bin.tsv >> $sample-concoct_scaffold2bin_cut.tsv

#get rid of the --score_threshold=0 first and try running without it!!!

sample= 
assembly=
searchengine=
# ^^^ normally I would use diamond or blastp. You an try out both. See dastool help pages for more information. 

DAS_Tool --score_threshold=0 -i $sample-concoct_scaffold2bin.tsv,$sample-maxbin2_scaffold2bin.tsv,$sample-metabat2_scaffold2bin.tsv -l concoct,maxbin2,metabat2 -c $assembly -o $sample-$searchengine-dastool-out --threads 20 --write_bins --search_engine $searchengine
