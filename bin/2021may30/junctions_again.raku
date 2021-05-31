#!/usr/bin/env perl6
# 
# junctions_again.raku            30 May 2021 

use v6;

## bruce gray suggestss
# my @pats = /abc/, /def/, /ghi/;
# my $combined_re = /@pats/;
# ... exclude => $combined_re ... 

my @monsters = < godzilla mothera ghidora gammera golem rhodan >;

my @skip = < mothera rhodan >;

my @skip_pats = /mothera/, /rhodan/;

my $combined_re = /@skip_pats/;
say $combined_re;  # /@skip_pats/

say @monsters ~~ $combined_re;  #  ｢mothera｣

# This actually works:
my @skip_patterns = @skip.map({ rx/ $_ / });

# But this is a .gist fail, it looks like you got literal interpolation of $_
# (and issue worth reporting, I think TODO)
say @skip_patterns;    # [rx/ $_ / rx/ $_ /]
say @skip_patterns[0]; # rx/ $_ /
dd @skip_patterns[0]; # rx/ $_ /
# Regex @skip_patterns = rx/ $_ /

say 'mothera' ~~ @skip_patterns[0];   # ｢mothera｣
say 'rutabega' ~~ @skip_patterns[0];  # Nil

say '---';
say ('alpha', 'mothera', 'megazoid') ~~ @skip_patterns;
# False;

my @fodder = 
  ('alpha', 'mothera', 'megazoid');

# # my $skip_pattern = rx/ { @skip.join('|') } /;
# # rx/ { @skip.join('|') } /

# my $skip_pattern = rx/ mothera | rhodan /;
# say $skip_pattern;

# say @monsters.grep({ m/$skip_pattern/ });
# # (mothera rhodan)

# say @monsters.grep({ ! m/$skip_pattern/ });
# # (godzilla ghidora gammera golem)

# say @monsters ~~ $skip_pattern;  # ｢mothera｣ ?


