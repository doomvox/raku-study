#!/usr/bin/env raku
# 
# angles_within_angles.raku            11 Jul 2023 

use v6;

{ # lead off with basic example:
  # a popular perl5 feature is "word" quoting:
  # my @countries = qw{ UK Latveria Mordor }; ## PERL5

  my @countries = < UK Latveria Mordor >;
  say @countries[0];
  # UK
}

{ # But, what if you have a space in an element?  Answer: quotes work.
  my @countries = << 'United Kingdom' Latveria Mordor >>;
  say @countries[0];
  # United Kingdom
}


{
  my @countries = << <United Kingdom> Latveria Mordor >>;
  say @countries[0];
  # <United
}


{
  my @countries = << q<United Kingdom> Latveria Mordor >>;
  say @countries[0];
  # q<United
}

{
  my @countries = << { <United Kingdom> } Latveria Mordor >>;
  say @countries[0];
  # United
}


{
  my @countries = << {q{United Kingdom}} Latveria Mordor >>;
  say @countries[0];
  # United
}

say "===";
