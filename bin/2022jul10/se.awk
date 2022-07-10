
awk 'BEGIN { FS=" " }
           { c[$5]++; l[$5,c[$5]]=$0 }
       END { for (i in c) {
               if (c[i] == 3)
                   for (j = 1 ; j <= c[i]; j++)
                       print l[i,j] } }' $0
