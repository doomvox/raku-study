#!/usr/bin/env perl6
# 
# question_about_if_vs_ternary.raku            30 May 2021 

use v6;


say "---0---";
## Daniel Sockwell example via irc
say (1 ?? do { my $a = 0; $a+1 } !! 'false');
# 1

## William Michels was wondering about ternaries conditionals, 
## how they work, why you'd use them instead of if/else

## on basics of if:
## Yary Hluchan makes the point that "if" returns a value in the repl:
# > if (1) {'a'} else {'nope'};
# a

## notably if doesn't seem to do this quite so easily in a script:
# say if (1) {'a'} else {'nope'};
## Unsupported use of bare "say".  In Raku please use: .say if you meant
## to call it as a method on $_, or use an explicit invocant or argument,
## or use &say to refer to the function as a noun.

# Those are some unhelpful suggestions in that messaging
# .say if (1) {'a'} else {'nope'};
## Unexpected block in infix position (missing statement control word before the expression?)

## This can be fixed with a "do" (looking ahead a little)
say do if (1) {'a'} else {'nope'};
# a
say do if (0) {'a'} else {'nope'};
# nope 

say "---1---";

## Trying to capture a return from if like so at least gets us a useful error message:
# my $str = if (1) {'a'} else {'nope'};
# say $str;
## Word 'if' interpreted as a listop; please use 'do if' to introduce the statement control word
##                                    \----------------/
##                                          |          
##                                          \---->  just what we needed to hear

# This works:
my $str = do if (1) {'a'} else {'nope'};
say $str;
# a

say "---2---";
## stashing a ternary in a code_ref to execute later
my $moon_is_full = False;
my $code_ref = $moon_is_full ?? { load_sliver_bullets; hunt; } !! { rest_whole_night }; 

sub load_sliver_bullets { say "bang!"; }
sub hunt { say "tramp tramp tramp";}
sub rest_whole_night { say "zzzz"; }

$code_ref(); ## zzzz





# Bill's first stab...
# my $d = 0; ( if $d {my $a = 0; ($a+1).Bool} else {my $a = 0; ($a).Bool}).say;



## Bill questions

# # Starting with a series of Daniel Sockwell posts on IRC... 
# say (1 ?? do {my $a = 0; $a+1} !! 'false');
# # 1 

# # This is what I tried with if_else: 
# my $d = 0; ( if $d {my $a = 0; ($a+1).Bool} else {my $a = 0; ($a).Bool}).say;
# ## False 

# > my $d = 0; ( $d ?? {my $a = 0; ($a+1).Bool} !! {my $a = 0; ($a).Bool}).say
# -> ;; $_? is raw = OUTER::<$_> { #`(Block|140328649538984) ... } 
# > my $d = 1; ( $d ?? {my $a = 0; ($a+1).Bool} !! {my $a = 0; ($a).Bool}).say
# -> ;; $_? is raw = OUTER::<$_> { #`(Block|140328649539920) ... } 
# > my $d = 0; ( $d ?? do {my $a = 0; ($a+1).Bool} !! do {my $a = 0; ($a).Bool}).say
# False 

# say
#  (1 ?? do
#   { my $a = 0;
#     $a+1
#    } !! 'false');


say "---A---";
# Yary

# Related, since I got in the habit of not having ’switch’ 
# with classic Perl, I often chain terneries eg: 
#  $which == 1 ?? 'one' !! $which == 2 ?? 'two' !! $which == 3 ?? 'three' !! 'huh' 

for (0..5) -> $which {
   my $r = $which == 1 ?? 'one'
        !! $which == 2 ?? 'two'
        !! $which == 3 ?? 'three'
        !!                'huh'
       ; 
    say "when which is: $which, then r is $r"; 
}

# when which is: 0, then r is huh
# when which is: 1, then r is one
# when which is: 2, then r is two
# when which is: 3, then r is three
# when which is: 4, then r is huh
# when which is: 5, then r is huh

say "---B---";

## example of given/when (need do to capture a return from it)
for (0..5) -> $var {
    my $r = do  ## do rears it's head again
    given $var {
         when 1  {  'one'   }
         when 2  {  'two'   }
         when 3  {  'three' }
         default {  'zed'   }
    };
    say "demo B: $r";
}

say '---C---';
## that suggests to me using gather and take
for (0..5) -> $var {
    my $r = gather
    given $var {
         when 1  {  take 'one'   }
         when 2  {  take 'two'   }
         when 3  {  take 'three' }
         default {  take 'zed'   }
    };
    say "democ C: ", $r.WHAT, ' ', $r, " stringified: $r";
}
# democ C: (Seq) (zed) stringified: zed
# democ C: (Seq) (one) stringified: one
# democ C: (Seq) (two) stringified: two
# ...

## might seem funny it's returning single value lists
## but gather/take is intended to collect multiple values
say '---D---';
my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;
my @collection = gather 
  for @numbers -> $n {
    take $n if $n ~~ /^f/;
  }
say @collection; # [foah fahv]

say '---E---';
## first tried this:
# my $j0 = any( m/^b/, m/^g/ );
## Messaging here is LTA:  (TODO)
## Use of uninitialized value of type Any in string context.

## need "rx//" for this, because m// tries to match on $_ immediately
my $j = any( rx/^b/, rx/^g/ );
for ('alpha', 'beta', 'gamma' ) -> $g {
    given $j {
         when $g  {  say "$g: got b or g"   }
         default  {  say "$g: not matched by junction"   }
    };
}

# alpha: not matched by junction
# beta: not matched by junction
# gamma: not matched by junction

## That's confusing: expected two to match and only one to fail

## I had the given and when values backwards there, this is right:
my $j = any( rx/^b/, rx/^g/ );
for ('alpha', 'beta', 'gamma' ) -> $g {
    given $g {
         when $j  {  say "$g: got b or g"   }
         default  {  say "$g: not matched by junction"   }
    };
}

# alpha: not matched by junction
# beta: got b or g
# gamma: got b or g

