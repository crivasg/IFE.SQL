
head -n 4 presidente.txt > summary.txt
sed "s/,//g" summary.txt> summary.txt.old
sed "s/|/,/g" summary.txt.old > summary.txt

head -n 6 presidente.txt > summary.txt.old
tail -n 1 summary.txt.old > headers.txt

tail -n +7 presidente.txt > rawdataife.txt
sed "s/|/,/g" rawdataife.txt > dataife.txt

rm summary.txt.old
