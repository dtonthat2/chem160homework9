#!/bin/bash 
if [ $# -eq 0 ]; then
echo "This script requires a protein file"
exit 1

elif [ ! -f $1 ]; then
echo "Cannot find protein file"
exit 1

else
	for i in ALA ARG ASN ASP CYS GLU GLN GLY HIS ILE LEU LYS MET PHE PRO SER THR TRP TYR VAL
	do
		cat $1 | grep $i | grep CA | wc -l | tr -d '\n'
		echo " $i"
	done
fi
