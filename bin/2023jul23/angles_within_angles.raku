#!/usr/bin/env raku
# 
# angles_within_angles.raku            11 Jul 2023 

use v6;

{ # lead off with basic example:
  my @countries = < UK Latveria Mordor >;

}

{
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
