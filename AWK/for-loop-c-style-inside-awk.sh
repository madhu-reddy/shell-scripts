#https://www.gnu.org/software/gawk/manual/html_node/For-Statement.html

awk '{
total=0
for (i = 1 ; i < 4 ; i++) #for loop syntax in AWK, only single brackets have to be used
{
total += $i
}
print "Total value of each line is" total   #only print works in awk, echo does not work or not supported in awk
}' filename
