# Assembly 

## Flye 

input=
sample=
threads=
outdir=
min=1000

flye --nano-raw $input --min-overlap $min --threads $threads --meta --out-dir $outdir && tail $outdir/flye.log >> $sample-base_stats.log

#Gives Mean Coverage (etc.) at the end in new file (sample-base_stats.log).
