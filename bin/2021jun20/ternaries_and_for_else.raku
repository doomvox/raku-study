#!/usr/bin/env perl6
# 
# ternaries_and_for_else.raku            14 Jun 2021 

use v6;

# William Michels  suggests looking at ternary ifs to do the for/else
# job that Damian Conway describes here:
# 
#   http://blogs.perl.org/users/damian_conway/2019/09/itchscratch.html


# { # damian conway's example is a little hard to figure out with just what he's given us.
#     my \DEBUG = 1;
#     my $compilation; # ?
#     my @errors = <mayonnaise velveta wonderbread>;
#     for @errors -> $error {
#         note $error if DEBUG;
#         LAST die X::CompilationFailed.new( :@errors );
#     }
#     if !@errors {
#         note 'Compilation complete' if DEBUG;
#         return $compilation;
#     }
# }

say "=== 1 ===";
{ # stripped down version of damian conway's example
    say "---";
    my @errors = ();
    echo_errors( @errors );
    say "---";
    @errors = <mayonnaise velveta wonderbread>;
    echo_errors( @errors );
    say "---";
    sub echo_errors ( @errors ){
        for @errors -> $error {
            note $error;
            LAST warn @errors.join(" ");
        }
        if !@errors {
            note 'Compilation complete';
        }
    } 
}

say "=== 2 ===";
{ # doing the same with a ternary ala bill's suggestion
    say "---";
    my @errors = ();
    echo_errors( @errors );
    say "---";
    @errors = <mayonnaise velveta wonderbread>;
    echo_errors( @errors );
    say "---";

    sub echo_errors ( @errors ){
        !@errors ??
           note 'Compilation complete'
        !!
        do for @errors -> $error {
            note $error;
            LAST warn @errors.join(" ");
        }
    } 
}

say "=== 3 ===";
{ # william michels

    my @errors = ();
    errorism( @errors );

    @errors = <<ham sandwich ERROR DEBUG lettuce>>;
    put @errors.raku, "\n____\n";
    errorism( @errors );

    sub errorism ( @errors ) { 
        if
           !@errors
        ?? 'Compilation complete'.say
        !! (
            for  @errors -> $error {
                note $error; #add 'eq "DEBUG"' for T/F
                # LAST warn "" if True;
                LAST warn @errors.join(" ");
            }
        ) -> $end { $end.say };

    }
}




