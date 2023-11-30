#!/usr/bin/env raku
# 
# grep_for_first_matching_line.raku            29 Nov 2023 

use v6;

# create a file of test data
my $file = "/home/doom/tmp/monster.dat";
my $dat = q:to/ENDDAT/;
  godzilla    9
  mothera     7
  ghidora    10
  gammera     5
  golem       3
  rhodan      4
ENDDAT
$file.IO.spurt($dat);

my $target_pattern = "^g";

{
    ## An old line in my notes that looks sub-optimal:

    ## untested example:
    # my $first_match = $file.IO.open.readlines.map{ .lc }.grep({ m/$target_pattern/ });

    # Yup, this looked wrong:
    #   No such method 'readlines' for invocant of type 'IO::Handle'
    #   And map{} (no parens) looks like perl not raku

    # my $first_match = $file.IO.open.lines.map({ .lc }).grep({ m/$target_pattern/ });
    my $first_match = $file.IO.lines.map( *.lc ).grep({ m/^\s*g/ });

    say $first_match;
    # (  godzilla    9   ghidora    10   gammera     5   golem       3)
}

{
    say "---";
    my $first_match = $file.IO.lines.map( *.lc ).first({ m/^\s*g/ });
    my $first_match = $file.IO.lines.map( *.lc ).first: { m/^\s*g/ } ;
    say $first_match;  #   godzilla    9
}

{
    say "---";
    my $first_match = $file.IO.lines.map( *.lc ).first: { m/^\s*g/ } ;
    say $first_match;  #   godzilla    9
}


{
    say "---";
    my $first_match = gather
    for $file.IO.lines -> $line {
        my $tmp = $line.lc;
        if ( m/^\s*g/ ) {
            take $tmp 
            last LOOP;
        }
    }
    say $first_match;
}

