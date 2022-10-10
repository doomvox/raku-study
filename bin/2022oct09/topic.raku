#!/usr/bin/env raku
use v6.d;

=begin comment

From "language/variables#The_$__variable"

The $_ variable
$_ is the topic variable. A fresh one is created in every block.

The first two sentences are LTA.

$_ is the general _default_variable_; as such, it is often used
as a _topic_variable_.  $_ is available at every _scope_. It is
either cloned from the containing scope or created as another
_lexical_ variable, which makes the outer scope's instance
unaccessable.

=end comment

constant N = '\N';

say "As provided at file scope:";
say " 0 ", .WHICH, " ", .WHERE, " ", .WHAT, " '", $_ // N, "' in file";
my $dog;
say "           my \$dog; ", $dog.WHICH, " ", $dog.WHERE, " ", $dog.WHAT, " '",
                        $dog // N, "' in file";
my Str $cat;
say "           my Str \$cat; ", $cat.WHICH, " ", $cat.WHERE, " ", $cat.WHAT, " '",
                        $cat // N, "' in file";
say "Set in file scope";
$_ = 'FILE-SCOPE';
say " 1 ", .WHICH, " ", .WHERE, " ", .WHAT, " '", $_ // N, "' in file";
$dog = 'Dog';
say "           \$dog ='Dog'; ", $dog.WHICH, " ", $dog.WHERE, " ", $dog.WHAT, " '",
                        $dog // N, "' in file";

{
    say "Inside a bare block:";
    say " 2 ", .WHICH, " ", .WHERE, " ", .WHAT, " '",
            $_ // N, "' in block";
    say "Explicit my and assigned:";
    quietly my $_ = 'MY-IN-BLOCK';      # XXX is noisy
    say " 3 ", .WHICH, " ", .WHERE, " ", .WHAT, " '",
            $_ // N, "' my in block";
    say 'Get OUTER::{$_}:';
    say " 4 ", OUTER::{$_}.WHICH, " ", 
            OUTER::{$_}.WHERE, " ", OUTER::{$_}.WHAT, " '",
            OUTER::{$_} // N, '\' OUTER::{$_} from block';
    say 'Get OUTER::OUTER::{$_}:';
    say " 4a", OUTER::OUTER::{$_}.WHICH, " ",
                OUTER::OUTER::{$_}.WHERE, " ",
                OUTER::OUTER::{$_}.WHAT, " '",
                OUTER::OUTER::{$_} // N,
                '\' OUTER::OUTER::{$_} from block';
}
say 'To file scope:';

sub x () {
    say 'To sub x() scope:';
    say " 5 ", .WHICH, " ", .WHERE, " ", .WHAT, " '",
            $_ // N, "' untouched in sub x()";
    say 'Assigned in sub x() scope:';
    $_ = 'SUB X()';
    say " 6 ", .WHICH, " ", .WHERE, " ", .WHAT, " '",
            $_ // N, "' explicit assign in sub x()";

    my multi sub x-in-x() {
        say 'To multi sub x-in-x() scope:';
        say " 7 ", .WHICH, " ", .WHERE, " ", .WHAT, " '",
            $_ // N, "' untouched in my sub x-in-x()";
    };
    my multi x-in-x(Str) {
    # container created with type constraint ?!
        say 'To multi sub x-in-x("XINX") scope:';
        say " 8 ", .WHICH, " ", .WHERE, " ", .WHAT, " '",
            $_ // N, "' anon arg as called my sub x-in-x(Str)";
        say 'Assigned to Int.new(1)';
        $_ = Int.new(1);
        say " 9 ", .WHICH, " ", .WHERE, " ", .WHAT, " '",
            $_ // N, "' anon arg assign in my sub x-in-x(Str)";

    };
    x-in-x();
    x-in-x( 'XINX');
}
x();

sub anon-arg(Real) {  # Any is type default for container default 
    say "11 ", .WHERE, " ", .WHAT, " '",
            $_ // N, "' in sub anon-arg(Real)";
    say "12 ", .WHERE, " ", .WHAT, " '",
            $_ // N, "' in sub anon-arg(Real)";
}
anon-arg( (616).Real );
# anon-arg('helo');

=finish
my Str $_;
$_.WHAT;

