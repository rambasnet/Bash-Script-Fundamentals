#!/bin/bash
# Here Script/Document
# command << token
# text
# token
# <<- the shell will ignore\preserve leading tab chars
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Created by $USER on $RIGHT_NOW"

function home_space
{
    # Only the superuser can get this information
    if [[ $(id -u) == 0 ]]; then
        echo "<h2>Home directory space by user</h2>"
        echo "<pre>"
        echo "Bytes        Directory"
            du -s ~ | sort -nr
        echo "</pre>"
    fi
}   # end of home_space

title="Directory Report"
cat << _EOF_
    <!DOCTYPE html>
    <html>
    <head>
        <title>
        	$title
        </title>
    </head>

    <body>
    <h1>$title</h1>
    <p>$TIME_STAMP</p>
    $(home_space)
    </body>
    </html>
_EOF_


