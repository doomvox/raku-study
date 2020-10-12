#!/usr/bin/env perl6
# 
# reduction_metaoperators.pl6            11 Oct 2020 


use v6;

my @a = (1, 2, 3, 7, 8, 9);  # ascending 
say [<] @a;  # True

my @b = (1, 2, 7, 3, 8, 9);  # not quite strictly ascending
say [<] @b;  # False

# bruce gray:
# [op] @list 
# @list[0] op @list[1] op @list[2] 
# 3 + 5 
# [+] 3, 5
say [+] 3, 5;  # 8

my @monsters = < blob tingler mothera wolfman garuda >;
# my $status = [ eq ] @monsters;
# say $status;
