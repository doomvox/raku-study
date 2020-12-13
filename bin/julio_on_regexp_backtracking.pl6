#!/usr/bin/env perl6
# 
# julio_on_regexp_backtracking.pl6            13 Dec 2020 


use v6;

# https://stackoverflow.com/questions/65226308/why-do-i-get-different-backtracking-with-these-raku-regexes

# 'abc' ~~ m/(\w+) { dd $/ } /;
# 'abc' ~~ m/(\w+) { dd $0 } /;
'abc' ~~ m/(\w+) { say $0 } /;  # ｢abc｣
say "---";

if 'abc' ~~ m/ (\w+) <?{ $0 eq 'abc' }> / {
    say "matches!";  # matches!
}

if 'abc' ~~ m/ (\w+) <?{ $0 eq 'xyz' }> / {
    say "matches!";  # matches!
} else {
    say "nope, fails..."; # nope, fails...
}

say "===";

say 'abc'.chars;  # 3    there is no .length 

say 'abc'.substr(0); # abc
say 'abc'.substr(1); # bc
say 'abc'.substr(2); # c 
# say 'abc'.substr(3); # empty string
say "---";
say 'abc'.substr(1,2); # bc   offset and length
say 'abc'.substr(3-1); # c

say 'abc'.substr(*-1); # c 

say 'abc'.substr(*-1) eq 'b';  # False

'abc' ~~ m/(\w+) {say "$0"}  <?{ $0.substr(*-1) eq 'b' }>/;
say $0;

# ｢abc｣
# ｢ab｣

## abcdef

say "---";
'abc' ~~ m/  (\w+) {say "$0"}  <?{ $0.substr(*-1) eq 'b' }>/;
# abc
# ab 


## 'blue' ~~ m/^ (blah)|(bleh)|(blue) $/

say "===";
## bill ideas:
say 'abc' ~~ / ( \w+ ) { say $0 } / ;  
# ｢abc｣

# In effect the $/
# ｢abc｣
#  0 => ｢abc｣


say "---";
say 'abc' ~~ / ( \w+ ) { say $0 } <?{False}> / ;
# ｢abc｣
# ｢ab｣
# ｢a｣
# ｢bc｣
# ｢b｣
# ｢c｣

# Nil

say "===";

# https://docs.raku.org/language/regexes-best-practices
# my regex example {
#     <preamble>
#     [
#     || <choice_1>
#     || <choice_2>
#     || <choice_3>
#     ]+
#     <postamble>
# }

my regex example {
    Preamble
    (
    [
    || Choice_1
    || Choice_2
    || Choice_3
    ]+
    )
    { say $0 }    ##  ｢Choice_2｣
    Postamble
}

my $str = q :to :s /END/;  # :s adverb lets scalars interpolate
PreambleChoice_2Postamble
END

$str ~~ m/<example>/;
say $/;
# ｢PreambleChoice_2Postamble｣
#  example => ｢PreambleChoice_2Postamble｣
