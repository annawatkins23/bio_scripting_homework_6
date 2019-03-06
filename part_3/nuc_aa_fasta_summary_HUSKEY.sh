#!/bin/bash

#FILE=`echo $1`
#echo $FILE

for FILE in /home/aubcls66/bio_scripting_homework_6/part_3/CDS/*.cds
do
    base_name=`basename $FILE`

    awk '{if ($1~/^>/) {print $1} else {print $0}}' $FILE > $base_name.fa

    get_fasta_stats.pl -g -T $base_name.fa > $base_name.DNAstats.txt

    transeq -sequence $base_name.fa -sformat pearson -outseq $base_name.pep
done

for FILE in /home/aubcls66/bio_scripting_homework_6/part_3/*.pep
do

    base_name=`basename $FILE`

    get_fasta_stats.pl -t $base_name > $base_name.AAstats.txt
done
