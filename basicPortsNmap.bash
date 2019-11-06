#!/bin/bash
nmap -sP 10.1.10.2/24 -oG - | grep Up | cut -f2 -d":" | cut -f1 -d"(" > ping.txt
cat ping.txt
cat ping.txt | wc -l
nmap -iL ping.txt -sT -p 21,22,69,80,139,443,445 | grep -v filtered | grep -v closed | grep -v ":"| grep -v PORT | grep -v Host > results.txt
cat results.txt