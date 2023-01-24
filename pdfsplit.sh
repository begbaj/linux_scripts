#!/bin/bash
#
file=$1
parts=$2

pages=$(strings < $file | sed -n 's|.*/Count -\{0,1\}\([0-9]\{1,\}\).*|\1|p' | sort -rn | head -n 1)
step=$((pages/parts))
echo "total number of pages: $pages"
echo "each document will contain $step"

mkdir ./temp_splitting/
cd ./temp_splitting/

# separate EACH page
pdfseparate -f 1 -l $pages "../$file" "${file}_%d.pdf"

first=1
last=$step
# and then UNITE them
for (( part=1; part<=$parts; part++ ))
do
    to_unite=""
    united_name="${file}_part-${part}.pdf"
    for (( i=$first; i<=$last; i++ ))
    do
	to_unite+="${file}_${i}.pdf "
    done
    pdfunite $to_unite ../$united_name
    echo "united from $first to $last in $united_name"
    first=$((last+1))

    if [ $((part+1)) = $parts ]; then
	last=$pages
    else
	last=$((last+step))
    fi
done
cd ../
rm -r temp_splitting/
