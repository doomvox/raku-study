#!/usr/bin/env perl6
# 
# catching_errors_converting_to_warning.pl6            20 Dec 2020 


use v6;

# Yary hint:
#  Experiment to turn ALL failures into warnings— at top level, “CATCH { default { .note; .resume } }” 

CATCH { default { say "CAUGHT: ", .Str; .resume } }

say '---';
# {
#    say 3/0;  # This exception is not resumable

    subset Trekoids of Str where * eq any(<< Kirk Spock McCoy Scotty Uhuru Chapel Chekov Sulu >>);
    my Trekoids $name;
    $name = "Bozo";
#    CATCH { default { say .Str } };
# }

say '---';
# {
    say "still alive";
#    CATCH { default { say .Str } };
# }
