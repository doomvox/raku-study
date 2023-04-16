awk 'NF>3{gsub(/D/,"E"); for (i=1; i<=NF; i++) if ($i != $i+0) print "not a number:", $i}' file
