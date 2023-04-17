# solution posted to unixstackexchange in awk
# https://unix.stackexchange.com/a/742940/227738
awk 'NF>3{gsub(/D/,"E"); for (i=1; i<=NF; i++) if ($i != $i+0) print "not a number:", $i}' file
