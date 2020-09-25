#for i in `awk "{print $1}" acc_input.txt`
#do
#echo $i
#efetch -db=nuccore -format=fasta -id=$i > $i.fa
#done
cat acc_input.txt | while read line
do
id=`echo $line | awk '{print $2}'`; name=`echo $line | awk '{print $1}'`; efetch -db=nuccore -format=fasta -id=$id >$name.fa
done
