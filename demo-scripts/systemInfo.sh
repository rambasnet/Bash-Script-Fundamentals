#!/bin/bash
TITLE="System Report for $HOSTNAME"
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"

system_ds() {
    echo "<H2>Disk space utilization</H2>"
    echo "<pre>"
    df -h
    echo "</pre>"
}

system_uptime() {
    #cat <<- _EOF_
    echo   "<H2>System Uptime</H2>"
    echo   "<pre>$(uptime)</pre>"
    #_EOF_ # no leading whitespace
}

function home_space {
    #only superuser can get this information
    if [[ $(id -u ) == 0 ]]; then
        echo "<H2>Home directory space by user</H2>"
        echo "<pre>"
        echo "Bytes Directory"
        echo   "$(du -s /home* | sort -nr)"
        echo "</pre>"
    fi
} # end of home_space

system_info()
{
    echo "<h2>System release info</h2>"
    echo "<p>Function not yet implemented</p>"
}

cat <<- _EOF_
    <!DOCTYPE html>
    <html>
    <head>
        <title>$TITLE</title>
    </head>
    <body>
        <h1>$TITLE</h1>
        <p><strong>$TIME_STAMP</strong></p>
        $(system_info)
        $(system_uptime)
        $(system_ds)
        $(home_space)
        </body>
    </html>
_EOF_