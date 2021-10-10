#!/usr/bin/env perl6
# 
# new_and_flattened_hashes.raku            10 Oct 2021 

use v6;


class Monster {
    has Str   $.name;
    has Int   $.threat;
    has Bool  $.authentic;
#     method gist { "name: $.name, threat level: $.threat " ~ " (really a knockoff)" unless $.authentic; };
#    method gist { "name: $.name, threat level: $.threat "; }
    method gist { my $mess = "name: $.name, threat level: $.threat ";
                  if $.authentic { $mess ~= " (really a knockoff)"; return $mess };
                }

}


my %record = ( name      => 'godzilla',
               threat    => 9,
               authentic => True,
             );

# dd %record;  # Hash %record = {:authentic(Bool::True), :name("godzilla"), :threat(9)}

my $o = Monster.new( name      => 'ghidora',
                     threat    => 10,
                     authentic => True,
                   );
dd $o;
# Monster $o = Monster.new(name => "ghidora", threat => 10, authentic => Bool::True)
## say $o; # This type cannot unbox to a native string: P6opaque, Slip

my $m = Monster.new: |%record;
dd $m;
## Monster $m = Monster.new(name => "godzilla", threat => 9, authentic => Bool::True)

say $m;  # name: godzilla, threat level: 9 

# ===
# Author:  doom@kzsu.stanford.edu

