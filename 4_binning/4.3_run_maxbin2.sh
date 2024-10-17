maxbin_working_directory=
threads=
assembly=

#don't touch below here
#Create a file with a list of abundance file paths (the -abund_list used in the run_MaxBin.pl command)
find ${maxbin_working_directory} -type f -name "abundance_file_*" > ${maxbin_working_directory}/abundance/abund_list &&
#Run Maxbin2 with bacteria and archaea marker set (40 marker genes)
run_MaxBin.pl -contig $assembly -out ${maxbin_working_directory}/bins/maxbin2_markerset40_bin -abund_list ${maxbin_working_directory}/abundance/abund_list -min_contig_length 2500 -thread $threads -prob_threshold 0.9 -markerset 40 && 
echo "finished a sample for maxbin2"
