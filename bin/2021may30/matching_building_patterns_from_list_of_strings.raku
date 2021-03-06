#!/usr/bin/env perl6
# 
# matching_buidling_patterns_from_list_of_strings.raku         30 May 2021 

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

## sticking an array of regexps in a match works as an alternation
say @fodder.grep(/@skip_patterns/);
# (mothera)

## The array by itself doesn't work:
say @fodder.grep(@skip_patterns);  # ()
# (if you grep for an array what could that mean, though? TODO)

@fodder  = ('ha', 'ah', 'ja' );
# say @fodder.grep(  'hm', 'ha'  );  # ()
# Cannot resolve caller grep(Array:D: Str:D, Str:D); none of these signatures match:
#     ($: Bool:D $t, *%_)
#     ($: Mu $t, *%_)
say @fodder.grep(  ('hm', 'ha')  );  # ()
## I don't quite get why grep accepts a list of strings...
## it doesn't know what to do with them.   TODO

## but a junction of strings works with grep 
say @fodder.grep( any('hm', 'ha')  );  # (ha)


## Flailing around trying to create an alternation pattern from an array (not needed)
# # my $skip_pattern = rx/ { @skip.join('|') } /;
# # rx/ { @skip.join('|') } /

## Starting with a manually created alternation
my $skip_pattern = rx/ mothera | rhodan /;
say $skip_pattern;  # rx/ mothera | rhodan /
say @monsters.grep({ m/$skip_pattern/ });
# (mothera rhodan)

## grep works fine with just a pattern in a variable
say @monsters.grep({ $skip_pattern });
# (mothera rhodan)

## the code block isn't needed either
say @monsters.grep($skip_pattern);
# (mothera rhodan)

# negating it to use "skip" pattern to skip: this needs the m/$pat/ form
say @monsters.grep({ ! m/$skip_pattern/ });
# (godzilla ghidora gammera golem)


# negation is no good with just the pattern and no m//
say @monsters.grep({ ! $skip_pattern });
# (godzilla mothera ghidora gammera golem rhodan)
## TODO weird that it matches everything?  Maybe it's the negated form of nothing?

# Does that work without the code block?  (Nope.)
# say @monsters.grep( ! $skip_pattern );
## Cannot use Bool as Matcher with '.grep'.  Did you mean to use $_ inside a block?



say @monsters ~~ $skip_pattern;  # ｢mothera｣ ?
# ｢mothera｣

say @monsters !~~ $skip_pattern;  
# False
## TODO is that right?  I would expected everything except mothera


say @monsters ~~ ! m/$skip_pattern/;  
# False
## Hm.

## once again, I'd like to have a "(not: ... )" construct
