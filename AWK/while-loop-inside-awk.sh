# Iterating over each line with 3 fields each from a file and calculating total value by adding each field value in a line
awk '{
total=0
i=1
while (i < 4)
{
total+=$i
i++
}
print "Total value:" total
}' filename
