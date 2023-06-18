#!/usr/bin/env raku
# 
# bill_michaels_unixstackexchange_rev_lines_in_block_blocks.raku            18 Jun 2023 

use v6;

~$ raku -ne 'BEGIN my @blk; if (/block/ && .put) { for lines() {
             if /\}/  { put join "\n", (@blk.pop xx @blk.elems, $_); last};  
             @blk.push: $_ }
             } else { .put };'   file

#OR (more simply)

~$ raku -ne 'BEGIN my @blk; if (/block/ & .put) { for lines() { 
             if /\}/ { .put for (@blk.pop xx @blk.elems, $_).flat; last};  
             @blk.push: $_ }
             };'  file


my $input = Q:to/END/;
x = {
   y = {
       z = {
           block = {
              line1
              line2
              line3
           }
        }
    }
}
x2 = {
     y2 = {
         block = {
              line4
              line5
         }
     }
}
xyz
block = {
      line6
}
END;
