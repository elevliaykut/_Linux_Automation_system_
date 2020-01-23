df | awk '
BEGIN{
    print "\n <html>\n <Body>\n<table border=2 bgcolor='#87CEEB' align=center>"
    }
    {print "<tr>"
    for(i=1;i<=NF;i++)
        print "<td>" $i"</td>"
    print "</tr>"
    }
END{
    print "\n</Body>\n</html>\n</table>"
    }'