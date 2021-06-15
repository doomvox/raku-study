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

{ # stripped down version of damian conway's example
    say "---";
    my @errors;
    @errors = ();
    echo_errors( @errors );
    say "---";
    @errors = <mayonnaise velveta wonderbread>;
    echo_errors( @errors );
    say "---";

    sub echo_errors ( @errors ){
        for @errors -> $error {
            note $error;
#            LAST die @errors.join(" ");
        }
        if !@errors {
            note 'Compilation complete';
        }
    } 

}


{ # william michels

    my @errors;

    @errors = <<ham sandwich ERROR DEBUG lettuce>>;
    put @errors.raku, "\n____\n";

    exit;

    if !@errors
    ?? 'Compilation complete'.say
    !! (
        for  @errors -> $error {
            note $error; #add 'eq "DEBUG"' for T/F
            LAST die if True;
        }
    ) -> $end { $end.say };
}


