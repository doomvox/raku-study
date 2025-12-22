#!/usr/bin/env raku
# 
# pair_constructor_vs_named_arg.raku            21 Dec 2025 

use v6;


## https://stackoverflow.com/questions/79849852/too-many-positionals-passed-error-with-slurpy-hash

sub slurpy-hash($foo, *%bar) {
  say $foo;
  say %bar;
}


{ ## This works:
    slurpy-hash('FOO!', bar => 'BAR!'); 
    # FOO!
    # {bar => BAR!}
}

{ ## This crashes (the key is explicitly quoted to the pair constructor '=>'):
#    slurpy-hash('FOO!', 'bar' => 'BAR!'); 

# Too many positionals passed; expected 1 argument but got 2
#   in sub slurpy-hash at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025dec21/pair_constructor_vs_named_arg.raku line 10
#   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025dec21/pair_constructor_vs_named_arg.raku line 23

}


{ ## This also works:
    slurpy-hash('FOO!', :bar('BAR!') ); 
# FOO!
# {bar => BAR!}

}

{
    my %h = 
    'FOO', 'bar' => 'BAR'
    }
