#!/usr/bin/env raku
# 
# dir_3.raku            29 Nov 2023 

# backing up and double-checking: are two tests and and or an or?
# answer, the last is an instead-of

use v6;

my $tmp_dir = "/home/doom/tmp/Alpha";
## mkdir unless -d ?
my @files = q:to/END/.split("\n");
  able.txt
  baker.txt
  charlie.txt
  delta.txt
  eigenvalue.txt
  foxtrot.txt
  END

chdir( $tmp_dir );
say @files;
for @files>>.chomp -> $f {
    run('touch', $f) if $f;
}


{ # dir with one "test" (filter criteria)
    say "===";
    my @items = dir( test => { /^<[ab]>/ } );  
    for @items -> $item {
        say $item.Str;
    }
  # able.txt
  # baker.txt
}


{ # dir with a different test
    say "===";
    my @items = dir( test => { /^<[ef]>/ } );  
    for @items -> $item {
        say $item.Str;
    }
   # eigenvalue.txt
   # foxtrot.txt
}


{ # dir with two tests (both of those together )
    say "===";
    my @items = dir( test => { /^<[ab]>/ }, test => { /^<[ef]>/ } );  
    for @items -> $item {
        say $item.Str;
    }
   # eigenvalue.txt
   # foxtrot.txt
   ## the second test *overrides* the first
}



{ # dir with one test, the two merged together
    say "===";
    my @items = dir( test => { /^<[abef]>/ } );  
    for @items -> $item {
        say $item.Str;
    }
   # able.txt
   # baker.txt
   # eigenvalue.txt
   # foxtrot.txt
}


