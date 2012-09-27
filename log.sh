
head -n 4 presidente.txt | sed -e "s/,//g" | sed "s/|/,/g" > summary.txt
head -n 6 presidente.txt | tail -n 1 > headers.txt
tail -n +7 presidente.txt |sed "s/|/,/g" > dataife.txt

# EOF