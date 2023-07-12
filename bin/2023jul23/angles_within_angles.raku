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

{ # Another topic, double quotes?
  my @countries = << "United Kingdom" Latveria Mordor >>;
  say @countries[0];
  # United Kingdom
}

{ # ... with interpolation?
  my $adj = 'United';
  my @countries = << "$adj Kingdom" "$adj Snakes" Mordor >>;
  say @countries[0];
  # United Kingdom

  @countries>>.say;
  # United Kingdom
  # United Snakes
  # Mordor
}

say "===";
{ # note, without the double quotes, you get interpolation, but as a separate element
  my $adj = 'United';
  my @countries = << $adj Kingdom $adj Snakes Mordor >>;
  say @countries[0];
  # United

  @countries>>.say;
  # United
  # Kingdom
  # United
  # Snakes
  # Mordor
}

say "===";
{ # Q: single quotes inside << >> suppress interpolation, correct?
  my $adj = 'United';
  my @countries = << '$adj Kingdom' '$adj Snakes' Mordor >>;
  say @countries[0];
  # United Kingdom

  @countries>>.say;
  # United Kingdom
  # United Snakes
  # Mordor
}
