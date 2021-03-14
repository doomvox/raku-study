#!/usr/bin/env perl6
# 
# regex_pattern_with_captures_stored_in_var.pl6            10 Mar 2021 

use v6;

{ #  From a code example in the "Parsing" book by Moritz Lenz, p. 48, section 5.2
   my $input = 'There are 9 million bicycles in beijing.'; 
   if $input ~~ / (\d+) \s+ (\w+) / {
       say $0.^name;  # Match
       say $0;        # ｢9｣
       say $1.^name;  # Match
       say $1;        # ｢million｣
       say $/; 
        # ｢9 million｣
        #  0 => ｢9｣
        #  1 => ｢million｣
   }
}

say '---';

{ # Moving the pattern to var which we interpolate into match
   my $input = 'There are 9 million bicycles in beijing.'; 
   my $pattern = rx{ (\d+) \s+ (\w+) };
   if $input ~~ / <$pattern> / {
       say $0.^name;  # Nil
       say $0;        # Nil
       say $1.^name;  # Nil
       say $1;        # Nil
       say $/;        # ｢9 million｣
   }
}

## Posted question to perl6-users list:
# https://www.nntp.perl.org/group/perl.perl6.users/2021/03/msg9786.html
# 
# > Does this behavior make sense to anyone?  When you've got a regex
# > with captures in it, the captures don't work if the regex is
# > stashed in a variable and then interpolated into a regex.

say "===";

{ # A workaround via Brad Gilbert: make it a named capture
   my $input = 'There are 9 million bicycles in beijing.'; 
   my $pattern = rx{ (\d+) \s+ (\w+) };
   if $input ~~ / <pattern=$pattern> / {
       say $0.^name;  # Nil
       say $0;        # Nil
       say $1.^name;  # Nil
       say $1;        # Nil
       say $/;
       # ｢9 million｣
       #   pattern => ｢9 million｣
       #     0 => ｢9｣
       #     1 => ｢million｣
   }
}

say "---";
# A Moritz Lenz, in email, suggests there's an alternate name for $/ to use
{ 
   my $input = 'There are 9 million bicycles in beijing.'; 
   my $pattern = rx{ (\d+) \s+ (\w+) };
   if $input ~~ / <$pattern> / {
       # could it be something like this has the zeroth capture?
       say $pattern[0]; # rx{ (\d+) \s+ (\w+) }
       say $input[0]; # There are 9 million bicycles in beijing.
   }
   say '...';
   # Moritz Lenz was probably trying to say that this works:
   if $input ~~ / <pattern=$pattern> / {
       say $<pattern>[0]; # ｢9｣
       say $<pattern>[1]; # ｢million｣

       # or the slightly more explicit
       say $/<pattern>[0]; # ｢9｣
       say $/<pattern>[1]; # ｢million｣
   }
}

say "---";
{ # using named regex (which was also another Brad Gilbert suggestion)
   my $input = 'There are 9 million bicycles in beijing.'; 
   my regex pattern { (\d+) \s+ (\w+) }
    if $input ~~ / <pattern>  / {
        say $/;
        # ｢9 million｣
        #   pattern => ｢9 million｣
        #     0 => ｢9｣
        #     1 => ｢million｣
    }
}

say "---";

{
    my $input = 'There are 9 million bicycles in beijing.'; 
    my
    grammar NumberUnits {
        regex TOP { .*? <number> \s+ <units> .*? }
        regex number { \d+ }
        regex units  { \w+ }
    }

    my $ret = NumberUnits.parse( $input );
    say $ret;
    # ｢There are 9 million bicycles in beijing.｣
    #  number => ｢9｣
    #  units => ｢million｣

    # The docs say parse returns a Match object, but:
    say $ret.WHAT; # (NumberUnits)  
    say $ret.^mro; # ((NumberUnits) (Grammar) (Match) (Capture) (Cool) (Any) (Mu))

    # This acts somewhat like a Match
    say $ret<number>;  # ｢9｣
    say $ret<units>;   # ｢million｣

    say "keys: ",   $ret.keys;   # keys: (units number)
    say "values: ", $ret.values; # values: (｢million｣ ｢9｣)
}

say "===";
say "---";
{

    my $text = q:to/END_TEXT/;
    There are 9 million bicycles in beijing.
    There are 76 trombones in the big parade.
    There are 40 top songs in the hit parade.
    There are 660 feet in a furlong.
    Sky-diver terminal velocity is around 120 mph.
    END_TEXT

#     # say $text;
#     for $text.lines -> $l {
#         say $++, ' ', $l;
#     }

    my
    grammar NumberUnits {
#        regex TOP {  <line>+ % \n } 
#        token TOP { <line>* }
#        regex TOP {  <line>**5 % \n  } 
        regex TOP {  <line>+ .*? } 
        regex line { ^^ .*? <number> \s+ <units> .*? $$ \n }
        regex number { \d+ }
        regex units  { \w+ }
    }
    say "and now we parse...";

#     $text = chomp( $text );
#     say $text.chars;

    my $ret = NumberUnits.parse( $text );
    say $ret;
    say "---";
    say 'line: ', $ret<line>;
    say 'number: ', $ret<number>;  
    say 'units: ', $ret<units>;   
}





    ## METHODICAL APPROACH
    ## groping around in the list of available methods:
    #    .say for $ret.^methods>>.name;

     ## names of some of the sub-patterns?
     # TOP
     # number
     # units
     # 
     # ws
     # ident
     # space
     # cntrl
     # alpha
     # alnum
     # xdigit
     # punct
     # ast
     # digit
     # blank
     # wb
     # 
     # after
     # before
     # postmatch
     # prematch
     # at
     # pos
     # 
     # subparse
     # parsefile
     # parse
     # 
     ## Some things about "braids"?
     # braid
     # clone_braid_from
     # set_braid
     # set_braid_from
     # snapshot_braid
     # 
     ## and "slang"s 
     # slangs
     # define_slang
     # refine_slang
     # switch_to_slang
     # slang_grammar
     # slang_actions
     # 
     # graph
     # made
     # chunks
     # 
     # how
     # 
     # actions
     # set_actions
     # 
     # make
     # package
     # know_how
     # 
     # replace-with
     # 
     # orig
     # set_pragma
     # 
     # to
     # same
     # grammar
     # 
     # upper
     # prune
     # pragma
     # ww
     # 
     # clone
     # caps
     # 
     # target
     # 
     # set_how
     # 
     # kv
     # keys
     # values
     # pairs
     # antipairs

    ## But the sub-pattern names look like patterns
    # say $ret.^methods;
    # (regex TOP { .*? <number> \s+ <units> .*? } regex number { \d+ } regex units  { \w+ } Submethod+{is-hidden-from-backtrace}.new subparse parsefile parse Submethod+{is-hidden-from-backtrace}.new digit space !dba ws OTHERGRAMMAR !fresh_highexpect !cursor_next !cursor_push_cstack replace-with INTERPOLATE xdigit Bool set_pragma set_package !cursor_start_all chunks cntrl !clear_highwater orig snapshot_braid WHICH !cursor_pass INTERPOLATE_ASSERTION alnum gist postmatch !cursor_more prune slang_grammar !reduce !cursor_capture !cursor_init ast after to prematch STR clone_braid_from wb !cursor_start CURSOR_OVERLAP at before make raku upper !shared_type !protoregex_table !BACKREF !LITERAL punct set_how how actions DYNQUANT_LIMITS pragma !set_highexpect made Num graph !cursor_start_fail !cursor_start_cur !DYNQUANT_LIMITS !protoregex caps CURSOR_MORE slang_actions switch_to_slang Str lower ww define_slang CURSOR_NEXT check_LANG_oopsies slangs blank INDRULE !highexpect clone check_PACKAGE_oopsies !protoregex_nfa print !precompute_nfas set_braid package know_how alpha !shared refine_slang pos CALL_SUBRULE !reduce_with_match ...)

    ## But they don't seem to work that way:
    # say "666" ~~ m/$ret.number/;  # False  
    # say "abc" ~~ m/$ret.number/;  # False

    ## Just checking:
    # say "666" ~~ m/(\d+)/;  
    ## ｢666｣
    ##  0 => ｢666｣

