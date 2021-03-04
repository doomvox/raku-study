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
        self.^add_method('blah', method () { return 'Blah!'; });
    }
}


my $foo = Foo.new;

say $foo.^methods;
## (whatever TWEAK Submethod+{is-hidden-from-backtrace}.new <anon>)

say $foo.^method_names;
## (vlub TWEAK BUILDALL blah)

say $foo.^methods>>.name;

say .name for $foo.^methods;
# vlub
# TWEAK
# BUILDALL
# <anon>

say "---";
# verifying you can actually call this routine with "blah"
say $foo.blah;
# Blah!


## my $foo2 = Foo.new;

## Make errors into warnings
## CATCH { default { say "CAUGHT: ", .Str; .resume } }

