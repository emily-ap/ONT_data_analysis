sample=
min=1000
keep=90
input=
outdir=
output=$outdir/$sample.PC_FL.fastq

test -d $outdir || mkdir -p $outdir

filtlong --min_length $min --keep_percent $keep $input >> $output
