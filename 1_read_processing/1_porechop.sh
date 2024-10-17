threads= 
reads= 
output=
verbosity=
# ^^^ normally I do 1 or 2, this is just how much output do you want to actually see.

porechop -t $threads -i $reads -o $output --verbosity $verbosity
