#!/usr/bin/env raku
# 
# bill_michaels_unixstackexchange_set_ops_on_two_files.raku            18 Jun 2023 

use v6;


# raku -e 'my Set $a .= new(.comb(/<alpha>+/)>>.lc) given "declaration.txt".IO.words; 
#             my Set $b .= new(.comb(/<alpha>+/)>>.lc) given "preamble.txt".IO.words; 
#            .sort>>.keys.put given $a (|) $b; #returns 100 words'


## bruce gray argues for looping over the two file names

my @files = ("declaration.txt", "preamble.txt");


my @sets = gather 
for @files -> $f {
     take $f.IO.words.lines.lc.comb(/<alpha>+/).Set;
}

my $diff = @sets[0] (|) @sets[1];



my Set $a .=
 new( .comb(/<alpha>+/)>>.lc) given "declaration.txt".IO.words; 
 my Set $b .= new(.comb(/<alpha>+/)>>.lc) given "preamble.txt".IO.words; 
           .sort>>.keys.put given $a (|) $b;



## bruce gray draft:
raku -e 'my ($a, $b) = @*ARGS.map({ Set.new(.IO.words>>.lc) }); .sort>>.keys.put given $a (&) $b;' declaration.txt preamble.txt
