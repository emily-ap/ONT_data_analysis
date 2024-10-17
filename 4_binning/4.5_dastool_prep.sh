#Before running this, make sure your directory structure works with the commands below. All generated bins for a sample should be in a directory now called "dastool". Within that directory is a directory of the sample name. Within that directory are the bins from each binner in their respective binner's directory name. Make sure each bin has a unique ID including which binner it came from. 
#also, you will need to change the path to the "Fasta_to_Contig2Bin.sh" script. Figure out where your version of this script from dastools is. 


sample=
dastooldir=dastool/$sample

#MaxBin
maxbinsplitbins=$sample/maxbin2
maxbintsv=$dastooldir/$sample-maxbin2_scaffold2bin.tsv

#CONCOCT
concoctsplitbins=$sample/concoct
concocttsv=$dastooldir/$sample-concoct_scaffold2bin.tsv

#Metabat
metabatsplitbins=$sample/metabat2
metabattsv=$dastooldir/$sample-metabat2_scaffold2bin.tsv

/home/user/miniconda3/envs/dastool/bin/Fasta_to_Contig2Bin.sh -e fna -i $maxbinsplitbins > $maxbintsv &&

/home/user/miniconda3/envs/dastool/bin/Fasta_to_Contig2Bin.sh -e fna -i $concoctsplitbins > $concocttsv &&

/home/user/miniconda3/envs/dastool/bin/Fasta_to_Contig2Bin.sh -e fna -i $metabatsplitbins > $metabattsv &&

echo "Fasta_to_Scaffolds2Bin.sh is finished!"
