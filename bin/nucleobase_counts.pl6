#!/usr/bin/env perl6
# 
# nucleobase_counts.pl6            13 Dec 2020 


use v6;

# https://raku-musings.com/sequenced-multiplication.html

# Sequenced Multiplication
# with Raku and Perl
# by Arne Sommer
# Sequenced Multiplication with Raku and Perl

# This is my response to the Perl Weekly Challenge #090.

# Challenge #090.1: DNA Sequence

# DNA is a long, chainlike molecule which has two strands twisted
# into a double helix. The two strands are made up of simpler
# molecules called nucleotides. Each nucleotide is composed of
# one of the four nitrogen-containing nucleobases cytosine (C),
# guanine (G), adenine (A) and thymine (T).

# You are given DNA sequence, GTAAACCCCTTTTCATTTAGACAGATCGACTCCTTATCCATTCTCAGAGATGTGTTGCTGGTCGCCG.

# Write a script to print nucleiobase count in the given DNA
# sequence. Also print the complementary sequence where Thymine
# (T) on one strand is always facing an adenine (A) and vice
# versa; guanine (G) is always facing a cytosine (C) and vice
# versa.

# To get the complementary sequence use the following mapping:

# T => A
# A => T
# G => C
# C => G

# Let us start with the count, which boils down to counting the
# number of the individual letters in the string:

{
    my $dna = 'GTAAACCCCTTTTCATTTAGACAGATCGACTCCTTATCCATTCTCAGAGATGTGTTGCTGGTCGCCG';
    my $bag = $dna.comb.Bag;
    $bag.keys.sort.map({ say "$_ -> $bag{$_}" });

    # A -> 14
    # C -> 18
    # G -> 13
    # T -> 22
}

say "===";
{
    my $dna = 'GTAAACCCCTTTTCATTTAGACAGATCGACTCCTTATCCATTCTCAGAGATGTGTTGCTGGTCGCCG';
    my $bag = $dna.comb.Bag;  ## The bag structure gets you counts in one step...
    say $bag;
    ## Bag(A(14) C(18) G(13) T(22))

    # This is just for sorted output
    $bag.keys.sort.map({ say "$_ -> $bag{$_}" });
}

say "===";









# We turn the string into a list of individual characters (with
# comb), and turn that list into a «Bag» (with Bag). A «Bag» is
# a hash-like data structure, where the keys are the values in the
# input list, and the values are the frequency.

# See docs.raku.org/language/setbagmix for an introduction to the
# «Set», «Bag» and «Mix» hash-like data types.

# Let us have a go at a one-liner. (Replace $dna with 'GT…CG' to
# get a true one-liner.)

# > $dna.comb.Bag.kv.map({ say "$^a -> $^b" });
# G -> 13 C -> 18 A -> 14 T -> 22 (True True True True)

# The last line is courtesy of REPL, and will go away if we do this
# in a program. But we can get rid of it with sink:

# > sink $dna.comb.Bag.kv.map({ say "$^a -> $^b" });
# T -> 22 C -> 18 A -> 14 G -> 13

# See docs.raku.org/routine/sink for more information about sink.

# Note that the order of the lines is different. We look up keys in
# a hash-like structure, and Raku gives them in random order. The
# result is a program that does not give the same output each time
# we run it - which is bad from a testing perspective.

# We can always sort the keys:

# > sink $dna.comb.Bag.kv.sort.map({ say "$^a -> $^b" });
# 13 -> 14 18 -> 22 A -> C G -> T

# Oops. That sorted the keys and values.

# Let us sort the «Bag» instead:

# > $dna.comb.Bag.sort({ $^a[0] cmp $^b[0] })>>.say; # [1]
# A => 14 C => 18 G => 13 T => 22

#  [1] The comparison is done on two key/value pairs. We sort by
#      the key, which is the first item (index zero) in the pairs
#      given to sort.

# See docs.raku.org/routine/sort for more information about sort.

# The say statement is the last one to be executed, so REPL does
# not add any output for us (and the sink can go away).

# The complement sewuence is a matter of search and replace. We can
# use a hash and map:

# > my $dna = 'GTAAACCCCTTTTCATTTAGACAGATCGACTCCTTATCCATTCTCAGAGAT-
# > GTGTTGCTGGTCGCCG'; my %complement = ('T' => 'A', 'A' => 'T',
# > 'G' => 'C', 'C' => 'G'); # [1] say $dna.comb.map({
# > %complement{$_} }).join; # [2]
# CATTTGGGGAAAAGTAAATCTGTCTAGCTGAGGAATAGGTAAGAGTCTCTACACAACGACCAGC-
# GGC

#  [2] The mapping.

#  [3] Replace the individual characters with the
#      complementary one.

# This is not the optimal way of doing this, even if we did use map
# as the name implies - to map from one value to another.

# Character transliteration (with the TR/// operator) is more
# compact:

# > say TR/TAGC/ATCG/ with $dna; # [1]
# CATTTGGGGAAAAGTAAATCTGTCTAGCTGAGGAATAGGTAAGAGTCTCTACACAACGACCAGC-
# GGC

#  [4] TR is the non-destructive version of tr///. It does not
#      change $_ (as tr///), but returns the new string. Printing
#      the return value works out here. Note the use of with to set
#      the value of $_ for the attached (prefixed) block.

# See docs.raku.org/language/operators#TR///_non-
# destructive_transliteration for more information about TR///.

# See docs.raku.org/language/control#index-entry-control_flow_with
# for more information about with.

# Then the program. You can supply a custom DNA sequence on the
# command line, or let the program default to the one given in the
# challenge. File: dna-sequence

# #! /usr/bin/env raku

# unit sub MAIN ($dna
#   = 'GTAAACCCCTTTTCATTTAGACAGATCGACTCCTTATCCATTCTCAGAGATGTGTTGCT-
#   = GGTCGCCG');

# $dna.comb.Bag.sort({ $^a[0] cmp $^b[0] })>>.say;

# say TR/TAGC/ATCG/ with $dna;

# Running it:

# $ ./dna-sequence A => 14 C => 18 G => 13 T => 22 CATTTGGGGAAAAGT-
# AAATCTGTCTAGCTGAGGAATAGGTAAGAGTCTCTACACAACGACCAGCGGC

# Good so far... But what about illegal characters?

# $ ./dna-sequence 'CAT SCAN'
#   => 1
# A => 2 C => 2 N => 1 S => 1 T => 1 GTA SGTN

# We can prevent that with e.g. a where clause and a Junction:
# File: dna-sequence2

# #! /usr/bin/env raku

# unit sub MAIN ($dna where $dna.chars > 0 && all($dna.comb) eq
# ('T' | 'A' | 'G' | 'C')
#   = 'GTAAACCCCTTTTCATTTAGACAGATCGACTCCTTATCCATTCTCAGAGATGTGTTGCT-
#   = GGTCGCCG');

# $dna.comb.Bag.sort({ $^a[0] cmp $^b[0] })>>.say;

# say TR/TAGC/ATCG/ with $dna;

# Also note the requirement for at least one letter.

# Running it:

# $ ./dna-sequence2 CATc Usage: ./dna-sequence2 [<dna>]

# A Perl Version This is straight forward(ish) translation of the
# Raku version («dna-sequence2»).

# File: dna-sequence-perl

# #! /usr/bin/env perl

# use strict; use feature 'say';

# my $dna = $ARGV[0] // 'GTAAACCCCTTTTCATTTAGACAGATCGACTCCTTATCCAT-
# TCTCAGAGATGTGTTGCTGGTCGCCG';

# my %legal = ( G => 1, T => 1, A => 1, C => 1); my %count;

# map { $count{$_}++ } split("", $dna);

# for my $key (sort keys %count) { die "Illegal character $key"
# unless $legal{$key}; # [1] say "$key => " . $count{$key}; }

# $dna =~ tr/TAGC/ATCG/;

# say $dna;

#  [5] The error message given on illegal input can come after the
#      program has printed one or more legal letters, depending on
#      the alphabetical sort order.

# Running it gives the same result as the Raku version:

# $ ./dna-sequence-perl A => 14 C => 18 G => 13 T => 22 CATTTGGGGA-
# AAAGTAAATCTGTCTAGCTGAGGAATAGGTAAGAGTCTCTACACAACGACCAGCGGC

# Challenge #090.2: Ethiopian Multiplication You are given two
# positive numbers $A and $B.

# Write a script to demonstrate Ethiopian Multiplication using the
# given numbers.

# The trick is how to set up the loop, as both the initial and last
# value of $A should be considered for addition to the result.

# Here is a traditional loop, with the condition up front: File:
# ethiopian-multiplication-while

# #! /usr/bin/env raku

# subset PositiveInt of Int where * > 0; # [1]

# unit sub MAIN (PositiveInt $A is copy, # [2] PositiveInt $B is
# copy, :v(:$verbose));

# my $result = 0; # [3]

# while $A != 1 # [4] { $result += $B unless $A %% 2; # [5]

#   say ":: $A & $B" if $verbose; # [6]

#   $A = $A div 2; # [7] $B = $B * 2; # [8] }

# $result += $B unless $A %% 2; # [5a]

# say ":: $A & $B" if $verbose; # [6a]

# say $result;

#  [6] Only (positive) integers make sense, so the program will
#      protest if we pass it something else (in [2]).

#  [7] The is copy trait is used so that we can change the values
#      (in [7] and [8]).

#  [8] We are going to build up the answer here.

#  [9] As long as we haven't reached 1,

# [10] • Add the current $A value to the result, if it satisfies
#      the condition.

# [11] • Verbose output, mimicing the explanation.

# [12] • Integer division by 2 with div. Any remainder is
#      discarded.

# [13] • Update $B accordingly.

# The duplicate lines ([5a] and [6a]) are there to ensure that the
# last pair (where $A == 1) is taken into account.

# Running it:

# $ ./ethiopian-multiplication-while 14 12 168

# $ ./ethiopian-multiplication-while -v 14 12
# :: 14 & 12 7 & 24 3 & 48 1 & 96
# 168

# We got the same result as the page linked to in the challenge.

# Replacing while $A != 1 { … } with repeat { … } until $A ==
# 1; has the same problem (i.e. we must now check the first - or
# initial - pair manually, before the loop.

# The solution: place the check inside the loop: File: ethiopian-
# multiplication

# #! /usr/bin/env raku

# subset PositiveInt of Int where * > 0;

# unit sub MAIN (PositiveInt $A is copy, PositiveInt $B is copy,
# :v(:$verbose));

# my $result = 0;

# loop { $result += $B unless $A %% 2; # [a]

#   say ":: $A & $B" if $verbose;

#   last if $A == 1; # [1]

#   $A = $A div 2; $B = $B * 2; }

# say $result;

# [14] This ensures the the first pair is considerd for addition
#      (in [a]), as well as the last pair - as the check is done
#      after considering that one as well (also in [a]).

# Running it:

# $ ./ethiopian-multiplication 14 12 168

# $ ./ethiopian-multiplication -v 14 12
# :: 14 & 12 7 & 24 3 & 48 1 & 96
# 168

# Perl This is a straight forward translation of the Raku version.

# File: ethiopian-multiplication-perl

# #! /usr/bin/env perl

# use strict; use feature 'say'; use Getopt::Long;

# my $verbose = 0;

# GetOptions("verbose" => \$verbose);

# my $A = shift(@ARGV) // die 'Please specify $A'; my $B =
# shift(@ARGV) // die 'Please specify $B';

# die '$A: Please specify an integer > 0' unless $A =~ /^[1-
# 9]\d*$/; die '$B: Please specify an integer > 0' unless $B =~
# /^[1-9]\d*$/;

# my $result = 0;

# while (1) { $result += $B unless $A % 2 == 0; # [1]

#   say ":: $A & $B" if $verbose;

#   last if $A == 1;

#   $A = int($A / 2); # [2] $B = $B * 2; }

# say $result;

# [15] Perl does not have the divisibility operator «%%», so we
#      must check the result. Note that we can write is shorter, as
#      if $A % 2 (and I have done so in the included «ethiopian-multiplication-
#      perl2» program).

# [16] Perl does not have the integer division operator «div»,
#      but we can force the result to an int manually.

# Running it gives the same result as the Raku version:

# $ ./ethiopian-multiplication-perl 14 12 168

# $ ./ethiopian-multiplication-perl -v 14 12
# :: 14 & 12 7 & 24 3 & 48 1 & 96
# 168

# And that's it. Links About me Keyword Index Raku Courses
# Beginning Raku (book) RSS Feed Code (zip) Reddit Comments

# Copyright © Arne Sommer 2020. -- Contact: info@perl6.eu






# # ====
# #  sheet of cheats, as of Thu May 17, 2018 08:48 tango

# #  my @monsters = < garuda blob golem mothera godzilla tingler >;


# # use DBIish; my $dbh = DBIish.connect("Pg", database => 'doom',
# # :user<doom>, :port<5434>);

# # my $sth = $dbh.prepare(q:to/STATEMENT/); SELECT * FROM
# # funked_up STATEMENT

# # $sth.execute(); my @rows = $sth.allrows();



# # external commands without shell: my $arg = 'Hello'; my
# # $captured = run('echo', $arg, :out).out.slurp; my $captured =
# # run(«echo "$arg"», :out).out.slurp;


# # using shell: my $arg = 'Hello'; my $captured = shell("echo
# # $arg", :out).out.slurp; my $captured = qqx{echo $arg};





# # ===
# # Author: doom@kzsu.stanford.edu
