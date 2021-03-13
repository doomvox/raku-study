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

    say $ret.WHAT; # (NumberUnits)  the docs say this is a Match object

    say $ret<number>;  # ｢9｣
    say $ret<units>;   # ｢million｣

#    say $ret.^methods;
    $ret.^methods>>.name.say; 


# (regex TOP { .*? <number> \s+ <units> .*? } regex number { \d+ } regex units  { \w+ } Submethod+{is-hidden-from-backtrace}.new subparse parsefile parse Submethod+{is-hidden-from-backtrace}.new digit space !dba ws OTHERGRAMMAR !fresh_highexpect !cursor_next !cursor_push_cstack replace-with INTERPOLATE xdigit Bool set_pragma set_package !cursor_start_all chunks cntrl !clear_highwater orig snapshot_braid WHICH !cursor_pass INTERPOLATE_ASSERTION alnum gist postmatch !cursor_more prune slang_grammar !reduce !cursor_capture !cursor_init ast after to prematch STR clone_braid_from wb !cursor_start CURSOR_OVERLAP at before make raku upper !shared_type !protoregex_table !BACKREF !LITERAL punct set_how how actions DYNQUANT_LIMITS pragma !set_highexpect made Num graph !cursor_start_fail !cursor_start_cur !DYNQUANT_LIMITS !protoregex caps CURSOR_MORE slang_actions switch_to_slang Str lower ww define_slang CURSOR_NEXT check_LANG_oopsies slangs blank INDRULE !highexpect clone check_PACKAGE_oopsies !protoregex_nfa print !precompute_nfas set_braid package know_how alpha !shared refine_slang pos CALL_SUBRULE !reduce_with_match ...)

    ## Hm:
    # say "666" ~~ m/$ret.number/;  # False  
    # say "abc" ~~ m/$ret.number/;  # False

}
