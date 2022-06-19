#!/usr/bin/env perl6
# 
# controlling_range_of_regex_capture.raku            19 Jun 2022 

use v6;


# *** raku's '<(' and ')>' control the range of the default capture

# # zoffix example, 2018 talk
# my regex quoted { \" <( <-["]>+ )> \" } ; #]



# # change the quoted string, but leave quotes alone
# $str ~~ s/<quoted>/that/; ## untested  TODO


# perl5's \K is to "keep" the part in front and substitute the remainder
# $str =~ s{ $prefix_pat \K this }{that}xms;




