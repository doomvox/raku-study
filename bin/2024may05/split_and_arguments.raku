#!/usr/bin/env raku
# 
# split_and_arguments.raku            05 May 2024 

use v6;

my $file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024may05/data/issue_423.dat";

#  raku -ne 'BEGIN my @lines; 
#                push @lines, $_; 
#                splice @lines, 0, 3 if /banana/; 
#                put shift @lines if @lines > 2; 
#              END .put for @lines;'  file


# Output:
# 1
# 5
# 9
# 10
# 11


## TODO not really seeing the *point* of the operations.


# Foreach line of data, we first add it to @lines
#                push @lines, $_; 

# Then, for the special case of a "banana" line
#                splice @lines, 0, 3 if /banana/; 
# A chunk of 3 lines at the beginning will be deleted.

# Then extract the first element, but only if there's more than 2, and print
#                put shift @lines if @lines > 2; 


                put shift @lines if @lines > 2; 



my @dat = $file.IO.slurp;
# say @lines;

my @lines;
for @dat {
    push @lines, $_; 
    splice @lines, 0, 3 if /banana/; 
    put shift @lines if @lines > 2; 
}
.put for @lines;
