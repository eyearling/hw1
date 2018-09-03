#!/bin/bash
cd hw1
	#routes to hw1 repository
ls
	#list all files and directories

#Emilys-MacBook-Pro:hw1 emilyyearling$ mkdir data
	#create directory for data and conditions
#Emilys-MacBook-Pro:hw1 emilyyearling$ mkdir scripts
	#create directory for scripts

cat stimuli.log
	#view contents of stimuli.log

touch Sentences.1d Numbers.1d Letters.1d Words.1d
	#make files for each condition

grep ".*Sentences" stimuli.log | sed -e "s/ .*//" >> Sentences.1d
grep ".*Numbers" stimuli.log | sed -e "s/ .*//" >> Numbers.1d
grep ".*Letters" stimuli.log | sed -e "s/ .*//" >> Letters.1d
grep ".*Words" stimuli.log | sed -e "s/ .*//" >> Words.1d
	#finds lines based on condition and then pipes the output to sed program which removes the conditon collumn
	# then appends the line to the corresponding file
mv Sentences.1d Numbers.1d Letters.1d Words.1d data/
	#move timing files into condition folders
# Emilys-MacBook-Pro:hw1 emilyyearling$ ls
# Emilys-MacBook-Pro:hw1 emilyyearling$ cd data
# Emilys-MacBook-Pro:data emilyyearling$ ls
	#double check


