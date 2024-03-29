#!/usr/bin/env raku
# 
# trial_runs_dir_2.raku            26 Nov 2023 

use v6;

# SYNOPSIS
#  cd /home/doom/tmp/TreeBeta
# 
#  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023dec03/trial_runs_dir.raku

# Contents of TreeBeta: multilevel tree, files with different extensions

say "current working directory: ", $*CWD.Str;

{
    my @items = dir( test => {/^a/} );   # (1) this "exhausts" the Seq  (2) test filters against *name*
    for @items -> $item {
        say $item.Str;
    }
    # a.txt
    # a.dat
}

{
    # you can have multiple test blocks, they act in series
    say "===";
    my @items = dir( test => { /^a/ }, test => { /\.dat$/ } );  
    for @items -> $item {
        say $item.Str;
    }
    # a.dat
}

# Note: there's a "default" test block that filters out "." and ".."
# Can you disable that somehow?  It's still in effect if you define your own "test".

{
    say "===";
    # Yes, this code example is in the docs ((doesn't make much sense to me, though)):
    for dir(test => *) -> $file {
        say $file;
    }

    # ".".IO
    # "..".IO
    # "a.txt".IO
    # "a.dat".IO
    # "b.txt".IO
    # "c.txt".IO
    # "d.txt".IO
    # "e.txt".IO
    # "Sub1".IO
    # "Sub2".IO
}

{
    # you can disable the default, and define one of your own
    say "===";
    # Yes, this code example is in the docs ((doesn't make much sense to me, though)):
    for dir(test => * ,  test => {/^\./} ) -> $file {
        say $file;
    }

    # ".".IO
    # "..".IO
}


{
    # note, if you reverse the order, you disable the one you defined also
    say "===";
    for dir( test => {/^\./}, test => * ) -> $file {
        say $file;
    }

    # ".".IO
    # "..".IO
    # "a.txt".IO
    # "a.dat".IO
    # "b.txt".IO
    # "c.txt".IO
    # "d.txt".IO
    # "e.txt".IO
    # "Sub1".IO
    # "Sub2".IO
}



{
    # Ah: essentially *any* "test" overrides the built-in default
    # When you got two "test" keys, the last always wins.
    say "AAA===BBB";
    # Yes, this code example is in the docs ((doesn't make much sense to me, though)):
    for dir( test => {/^\./} ) -> $file {
        say $file;
    }

    # ".".IO
    # "..".IO
}





{
    # again, relaxing the default test, and this time adding a negative test    
    say "===";
    for dir(test => * ,  test => { ! /^<[a..d]>/ } ) -> $file {
        say $file;
    }

    # ".".IO
    # "..".IO
    # "e.txt".IO
    # "Sub1".IO
    # "Sub2".IO
}


{
    # two negative tests don't combine as "not *this* and not *that*"?
    say "===";
    for dir(test => * ,  test => { ! /^<[a..d]>/ },  test => { ! /^Sub/ } ) -> $file {
        say $file;
    }

    # ".".IO
    # "..".IO
    # "a.txt".IO
    # "a.dat".IO
    # "b.txt".IO
    # "c.txt".IO
    # "d.txt".IO
    # "e.txt".IO

    ## the *second* negative test causes the first to be ignored?
}


{
    # This *one* negative test *also* disables the default test
    say "===";
    for dir( test => { ! /^<[a..d]>/ } ) -> $file {
        say $file;
    }

    # ".".IO
    # "..".IO
    # "e.txt".IO
    # "Sub1".IO
    # "Sub2".IO
}


{
    # Is a "*" just an empty code block?  No, an empty block discards everything
    say "===";
    for dir( test => {} ) -> $file {
        say $file;
    }
    # NO OUTPUT
}

{
    # A block that just echoes $_ acts like a "*"
    say "===";
    for dir( test =>  { $_ } ) -> $file {
        say $file;
    }
    # ".".IO
    # "..".IO
    # "a.txt".IO
    # "a.dat".IO
    # "b.txt".IO
    # "c.txt".IO
    # "d.txt".IO
    # "e.txt".IO
    # "Sub1".IO
    # "Sub2".IO
}
