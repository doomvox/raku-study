#!/usr/bin/env raku
# 
# removing_chunks_keeping_others-toddandmargo.raku            18 Jun 2023 

use v6;

## Looking at a ToddAndMargo problem:
## https://www.nntp.perl.org/group/perl.perl6.users/2023/06/msg10993.html

# ToddAndMargo@zoho.com, perl6-users@perl.org

# Subject: Re: Need regex in the middle wildcard help

# References: <d183015a-d171-3352-81f1-28a86e15e9e8@zoho.com>


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


$x ~~ s:i/ ^ (.*?) '</a>' .*?  '<a href="' (.*?) $ /$0  $1/;

say "|$x|";
# |wine-7.12-3.fc37.i686.rpm wine-7.12-3.fc37.x86_64.rpm
#  |


# Replied:
# 
# References: <d183015a-d171-3352-81f1-28a86e15e9e8@zoho.com>

# Try something like this, perhaps:

#      $x ~~ s:i/ ^ (.*?) '</a>' .*?  '<a href="' (.*?) $ /$0  $1/;

# Some explanations:

#    s:i

# The :i modifier makes it case insensitive, so data with upper-case html won't break things.

# In general, you want to break it down into chunks, and just keep the chunks you want. 

# ^   begin matching at the start of the string

# (.*?)   match anything up to the next pattern, *and* capture it to a variable

# '...'   I'm using single quotes on the literal strings

# $  match all the way to the end of the string. 

# Pinning the match with ^ and $ means a s/// will replace the entire string. 

# There are two captures, so they load $0 and $1, and here we're using them in the replace string:    s/.../$0 $1/

