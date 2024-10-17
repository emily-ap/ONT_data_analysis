## NanoPlot
reads=
sample=
threads=
outdir=
output= 


NanoPlot --threads $threads --prefix $sample --tsv_stats --outdir $outdir --loglength --color blue --format jpeg --plots kde dot --legacy hex --title $sample --fastq $reads
