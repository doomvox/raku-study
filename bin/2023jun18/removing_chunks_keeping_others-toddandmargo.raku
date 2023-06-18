#!/usr/bin/env raku
# 
# removing_chunks_keeping_others-toddandmargo.raku            18 Jun 2023 

use v6;

## Looking at a Todd
## https://www.nntp.perl.org/group/perl.perl6.users/2023/06/msg10993.html


# #!/bin/raku

# print "\n";
# my Str $x = Q[wine-7.12-3.fc37.i686.rpm</a>    23-Jul-2022 19:11  11K 
# <a href="wine-7.12-3.fc37.x86_64.rpm];
# print "1 [$x]\n\n";

# $x~~s/ $( Q[</a>] )  *  $( Q[a href="] ) / /;
# print "2 [$x]\n\n";



# 1 [wine-7.12-3.fc37.i686.rpm</a>    23-Jul-2022 19:11  11K   <a 
# href="wine-7.12-3.fc37.x86_64.rpm]

# 2 [wine-7.12-3.fc37.i686.rpm</a>    23-Jul-2022 19:11  11K   < 
# wine-7.12-3.fc37.x86_64.rpm]



# My goal is to have `2` print the following out

# wine-7.12-3.fc37.i686.rpm wine-7.12-3.fc37.x86_64.rpm

my Str $input = Q:to/END_STR/; 
wine-7.12-3.fc37.i686.rpm</a>    23-Jul-2022 19:11  11K 
<a href="wine-7.12-3.fc37.x86_64.rpm
END_STR

say "|$input|";
# |wine-7.12-3.fc37.i686.rpm</a>    23-Jul-2022 19:11  11K 
# <a href="wine-7.12-3.fc37.x86_64.rpm
# |

# Note: heredoc (:to) includes the newline at the end

my Str $x = $input;

# ToddAndMargo@zoho.com
# perl6-users@perl.org

$x ~~ s:i/ ^ (.*?) '</a>' .*?  '<a href="' (.*?) $ /$0  $1/;

say "|$x|";
# |wine-7.12-3.fc37.i686.rpm wine-7.12-3.fc37.x86_64.rpm
#  |
