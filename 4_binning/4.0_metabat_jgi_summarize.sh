sample=
assembly= 

#for the path to coverage files, you'll want to use the sorted bams associated with the binning.
coverage_files=

#run it 
jgi_summarize_bam_contig_depths --outputDepth $sample.depth.txt --pairedContigs $sample.paired.txt --referenceFasta $assembly $coverage_files
