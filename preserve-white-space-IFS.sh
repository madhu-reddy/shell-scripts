cat test.file |
while read data
do
    echo "$data"
done


IFS=
cat test.file |
while read data
do
    echo "$data"
done
