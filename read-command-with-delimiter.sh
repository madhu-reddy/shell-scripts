#read reads a single line from standard input.
#By default, read considers a newline character as the end of a line, but this can be changed using the -d option.
#After reading, the line is split into words according to the value of the special shell variable IFS, the internal field separator. By default, the IFS value is "space, tab, or newline"
#To preserve white space at the beginning or the end of a line, it's common to specify IFS= (with no value) immediately before the read command.
read  -d $'\n' INPUT_LINES <<EOF
/path/to/first file
/path/to/second file
/path/to/third file
fffff
EOF
echo $INPUT_LINES


read  -d '' INPUT_LINES <<EOF1
/path/to/first file
/path/to/second file
/path/to/third file
fffff
EOF1
echo $INPUT_LINES

read  INPUT_LINES <<EOF2
/path/to/first file
/path/to/second file
/path/to/third file
fffff
EOF2
echo $INPUT_LINES
