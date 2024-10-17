assembly=
sample=
concoct_working_directory=
threads=
minimum_contig_size=
coverage=
# ^^^ put the path to your associated sorted.bam files for the binning. SEE NOTES BEFORE BINNING before running this script. 


cut_up_fasta.py $assembly -c 10000 -o 0 --merge_last -b $concoct_working_directory/$sample-10K.bed > $concoct_working_directory/$sample-10K.fna &&
concoct_coverage_table.py $concoct_working_directory/$sample-10K.bed $coverage >> $concoct_working_directory/$sample-coverage_table.tsv &&
concoct --threads $threads --length_threshold $minimum_contig_size --composition_file $concoct_working_directory/$sample-10K.fna --coverage_file $concoct_working_directory/$sample-coverage_table.tsv -b $concoct_working_directory/$sample &&
merge_cutup_clustering.py $concoct_working_directory/$sample/clustering_gt$minimum_contig_size.csv >> $concoct_working_directory/$sample/clustering_merged.csv &&
mkdir $concoct_working_directory/$sample/bins && extract_fasta_bins.py $assembly $concoct_working_directory/$sample/clustering_merged.csv --output_path $concoct_working_directory/$sample/bins &&
echo "concoct finished"
