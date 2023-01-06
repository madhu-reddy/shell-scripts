#!/bin/bash

read -r -d '' string << EOF   # Heredoc treats backslash as special character, so need to escape them with another backslash in the below lines
username madhu \\
married	 yes \\
working yes
EOF

#i \        --->Insert text, which has each embedded newline preceded by a backslash (from "man sed")
# escaping backslash of (i \) with a backslash
sed -i "/age/i \\${string}" mytestfile2



#Explanation for code inside heredoc
'''
username madhu \\  # newline has to preceded with a backslash for sed to insert text using "i \"
married  yes \\    # same as above comment
working yes  # this is the end line, there is no newline after this, so no need for backslash as in the case of above 2 lines
'''


# what this code does?
'''
This basically adds a multiline string in to the file "mytestfile2" just before a matched line (Here the matched line is any line which contains the word "age")


