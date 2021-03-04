#!/usr/bin/env perl6
# 
# role_with_submethod_and_methods_introspection.pl6            04 Mar 2021 

## Playing with a code-example supplied by Jonathan Stowe:
##   https://github.com/rakudo/rakudo/issues/4207

use v6;

class Foo {

    role Z {
        method gist {
            'whatever';
        }
    }

    multi sub trait_mod:<is> ( Method $m, :$z! ) {
        $m does Z;
    }

    method vlub is z {
    }

    submethod TWEAK {
        self.^add_method('blah', method () {});
    }
}


my $foo = Foo.new;

say $foo.^methods;
## (whatever TWEAK Submethod+{is-hidden-from-backtrace}.new <anon>)

say $foo.^method_names;



## Make errors into warnings
## CATCH { default { say "CAUGHT: ", .Str; .resume } }

