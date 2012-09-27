#!/bin/bash

head -n 4 presidente.txt  | sed -f replace_commas.sed > summary.txt
head -n 6 presidente.txt  | tail -n 1 | sed -f replace_commas.sed > headers.txt
tail -n +7 presidente.txt | sed -f replace_commas.sed > dataife.txt
awk -f entidades.awk entidades.dat > entidades.sql
awk -f summary.awk summary.txt > summary.sql

# EOF