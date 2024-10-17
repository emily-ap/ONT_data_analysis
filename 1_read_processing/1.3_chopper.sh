sample=
min=1000
phred=10
input=
outdir=
output=$outdir/$sample.PC_FL_CH.fastq

test -d $outdir || mkdir -p $outdir

chopper -q $phred -l $min -i $input >> $output
