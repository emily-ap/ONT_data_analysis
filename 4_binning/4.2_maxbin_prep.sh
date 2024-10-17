maxbin_working_directory=
depth=
joblog=
# ^^^ input where you'd like to put the log of this binning step

#don't touch anything below this
depthfile_ncol=$(awk -F'\t' '{print NF; exit}' ${depthfile}) 

#run it 
mkdir ${maxbin_workdir}/abundance && ${maxbin_workdir}/bins && ${maxbin_workdir}/bins/maxbin2_markerset40_bin &&
seq 4 2 ${depthfile_ncol} | parallel --jobs 20 --joblog $joblog cut -f1,{} -d"$'\t'" $depth '|' tail -n +2 '>' ${maxbin_working_directory}/abundance/abundance_file_{}
