#!/usr/bin/env perl6
# 
# unusual_perl_6_substitution_syntax.pl6            11 Aug 2019 


use v6;

### perl 5 example:
### my $stringy =~ s/Perl\s?6/Camelia/gi;
# should match:
#   perl6
#   Perl 6
#   perl 6
#   Perl6

## can choose other separators than the slash
# my $stringy =~ s^Perl\s?6^Camelia^gi;

## the /x option and braces is my favored form:
#    my $stringy =~ s{ Perl \s? 6 }{Camelia}xgi;

## with /x you've got flexible formatting with comments
# my $stringy =~
#   s{
#     Perl
#     \s?    # an optional single space
#     6
#   }{Camelia}xgi;


## One of the Raku syntaxes:
my $stringy = 'Actually, Perl 6 is pretty interesting.';
$stringy ~~ s:g:i[Perl \s? 6] = 'Camelia';
say $stringy;

$stringy = 'Actually, perl 6 is pretty interesting.';
$stringy ~~ s:g:i[Perl \s? 6] = 'Camelia';
say $stringy;

$stringy = 'Actually, perl6 is pretty interesting.';
$stringy ~~ s:g:i[Perl \s? 6] = 'Camelia';
say $stringy;

$stringy = 'Actually, Perl 6 is pretty interesting.';
$stringy ~~ s:g:i{Perl \s? 6} = 'Camelia';
say $stringy;


$stringy = 'Actually, Perl 6 is pretty interesting.';
$stringy ~~ s:g:i:s{Perl 6} = 'Camelia';
say $stringy;

