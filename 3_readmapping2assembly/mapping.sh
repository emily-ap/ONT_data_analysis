# assign all your variables
reads=
assembly=
output_sam=
output_bam=
output_sortedbam=
output_indexedbam=
threads=

# running the commands (no need to change anything below unless you NEED to) 
minimap2 -t $threads -ax map-ont $assembly $reads >> $output_sam &&
samtools view -b $output_sam -@ $threads >> $output_bam &&
samtools sort -@ $threads -O BAM $output_bam -o $output_sortedbam &&
samtools index --bai $output_sortedbam -o $output_indexedbam && 

echo "mapping all done!"
