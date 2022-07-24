#!/usr/bin/env perl6
# 
# ini_file_parsing_grammar_example.raku            24 Jul 2022 

use v6;

# This is from the docs, but the *regex* page, not the grammars.
# Compare this to Moritz Lenz in "Fundamentals"

# https://docs.raku.org/syntax/regex

my regex header { \s* '[' (\w+) ']' \h* \n+ }
my regex identifier  { \w+ }
my regex kvpair { \s* <key=identifier> '=' <value=identifier> \n+ }
my regex section {
    <header>
    <kvpair>*
}
 
my $contents = q:to/EOI/; 
    [passwords]
        jack=password1
        joy=muchmoresecure123
    [quotas]
        jack=123
        joy=42
EOI
 
my %config;
if $contents ~~ /<section>*/ {
    for $<section>.list -> $section {
        my %section;
        for $section<kvpair>.list -> $p {
            %section{ $p<key> } = ~$p<value>;
        }
        %config{ $section<header>[0] } = %section;
    }
}
say %config.raku;
 
# OUTPUT: «{:passwords(${:jack("password1"), :joy("muchmoresecure123")}), 
#           :quotas(${:jack("123"), :joy("42")})}»
