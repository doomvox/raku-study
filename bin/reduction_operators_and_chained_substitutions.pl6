#!/usr/bin/env perl6
# 
# reduction_operators_and_chained_substitutions.pl6            10 Jan 2021 

use v6;

## Make errors into warnings
##   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# These two are equivalent: 
say [+] 1, 2, 3;                # 6
say reduce &infix:<+>, 1, 2, 3; # 6

### trying things at random:
##  say reduce('+'), 1, 2, 3; # 6
### (1, 2, 3).reduce('+');

say (1..4).reduce(&infix:<+>);   # 10
say reduce &infix:<+>, 1..4;     # 10
say reduce &min, 1..4;           # 1
 

## that &infix jazz bothers me... this works:
say (1..4).reduce({ $^a + $^b });  # 10


## https://stackoverflow.com/questions/65066358/concatenating-s-in-raku/65077600#65077600

say "===";
my $w = "Hello world";
my $a = do given $w {S/Hello/Hola/ andthen S/world/mundo/};
say $a; # Hola mundo

my $caesar = "Gallia est omnis divisa in partes tres";
my $trans1 = do given $caesar {
 S/Gallia/Gaul/     andthen
 S/est/is/          andthen
 S/omnis/a_whole/   andthen
 S/divisa/divided/  andthen
 S/in/into/         andthen
 S/partes/parts/    andthen
 S/tres/three/ 
};
put $caesar;  # Gallia est omnis divisa in partes tres
put $trans1;  # Gaul is a_whole divided into parts three

say "---";
my $str = "Hello world, already.";
$str ~~ /world/ andthen say "$_ is good";  # world is good
$str ~~ /sky/   andthen say "$_ is good";  # doesn't match

$str ~~ /world/ orelse say "not so good";  # doesn't match
$str ~~ /sky/   orelse say "not so good";  # not so good

$str ~~ /sky/   orelse say "not so good: " ~ $/.gist; # not so good: Nil
##  A Nil match object means you can't check *what* failed: no metadata

my $s = "The rat messes with the cat";
say  $s ~~ s/rat/RAT/;  # ｢rat｣

say "===";
{
    my $w = "Hello world";
    my $a = do given $w {S/Hello/Hola/ andthen S/world/mundo/};
    say $a; # Hola mundo

    my $caesar = "Gallia est omnis divisa in partes tres";
    my $trans1 = do given $caesar {
        { printf "%-40s, %-40s\n", $caesar, $_; s/Gallia/Gaul/    };
        { printf "%-40s, %-40s\n", $caesar, $_; s/est/is/         };
        { printf "%-40s, %-40s\n", $caesar, $_; s/omnis/a_whole/  };
        { printf "%-40s, %-40s\n", $caesar, $_; s/divisa/divided/ };
        { printf "%-40s, %-40s\n", $caesar, $_; s/in/into/        };
        { printf "%-40s, %-40s\n", $caesar, $_; s/partes/parts/   };
        { printf "%-40s, %-40s\n", $caesar, $_; s/tres/three/     } 
    };
    put $caesar;  # Gallia est omnis divisa in partes tres
    put $trans1;  # Gaul is a_whole divided into parts three
}


{
    say "---";
    my $caesar = "Gallia est omnis divisa in partes tres";
    my $trans1 = do given $caesar {
        s/Gallia/Gaul/    &&
        s/est/is/         &&
        s/omnis/a_whole/  &&
        s/divisa/divided/ &&
        s/in/into/        &&
        s/partes/parts/   && 
        s/tres/three/     
    };

    put $caesar;
    put $trans1; 
}

{
    my @rabbits  = < bugs peter easter >;
    my $r_str = @rabbits.join(" ");
    given  $r_str {
        say $_;  # bugs peter easter
        $_ = $_.uc;
        say $_;  # BUGS PETER EASTER
    }
    say $r_str;  # BUGS PETER EASTER
}


{
    say "---";
    my $txt = "alpha beta gamma delta";
    my $trans = do given $txt {
        s/alpha/aaa/ &&
        s/beta/bbb/  &&
        s/gamma/ccc/ &&
        s/delta/ddd/ 
    };

    put $txt;     #  aaa bbb ccc ddd
    put $trans;   #  delta
}

{ 
    say "---";
    my $monster_str = "godzilla mothera rhodan";
    $_ = $monster_str;
    s/mothera/MONKEY/ && s/rhodan/WILLARD/;
    say $_;  # godzilla MONKEY WILLARD

    $_ = $monster_str;
    say s/mothera/MONKEY/ && s/rhodan/WILLARD/;  # ｢rhodan｣

    $_ = $monster_str;
    my $obj = s/mothera/MONKEY/ && s/rhodan/WILLARD/;  #
    say $obj.WHAT; # (Match)
    dd $obj;
    # Match $obj = Match.new(:orig("godzilla MONKEY rhodan"), :from(16), :pos(22))
    say $obj.Str;  # rhodan
    ## Note this oddity:  the match object from a s/// stringifies to the original value that's been replaced
    ## you don't, for example, get $_, the state of the string *after* the replacement.
}

{
    say "---";
    my $txt = "alpha beta gamma delta";
    my $trans = do given $txt {
        s/alpha/aaa/ &&
        s/beta/bbb/  &&
        s/gamma/ccc/ &&
        s/delta/ddd/;
        $_
    };

    put $txt;     #  aaa bbb ccc ddd
    put $trans;   #  aaa bbb ccc ddd
}
