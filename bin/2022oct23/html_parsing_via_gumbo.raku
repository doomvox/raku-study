#!/usr/bin/env perl6
# 
# html_parsing_via_gumbo.raku            23 Oct 2022 

use v6;

## Looked at this some time back (my personal notes):
##   /home/doom/End/Cave/RakuStudy/Notes/Topics/topic-gumbo_html_parser_with_p6_lib

# gumbo is a c-library for html5 parsing.
# installation on Debian linux:
#   sudo apt-get install libgumbo1 libhtml-gumbo-perl
#   zef install Gumbo

## Didn't need to do this (part of rakudo-star?):
#   zef install LWP::Simple

## https://github.com/Skarsnik/perl6-gumbo

use Gumbo;
use LWP::Simple;

my $xml = parse-html(
    LWP::Simple.get("https://www.google.com")
);
say $xml.lookfor(:TAG<title>); # Google;

# OUTPUT:
# [<title>Google</title>]

# https://www.modulargrid.net/e/modules/evaluationlists


my $eurorack_xml = parse-html(
    LWP::Simple.get("https://www.modulargrid.net/e/modules/evaluationlists")
);

say $eurorack_xml.WHAT;

# say $eurorack_xml;

## bg makes the point it's better not to hit the web resource each time while developing
