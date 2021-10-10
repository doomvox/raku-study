#!/usr/bin/env perl6
# 
# new_and_flattened_hashes.raku            10 Oct 2021 

use v6;


class Monster {
    has Str   $.name;
    has Int   $.threat;
    has Bool  $.authentic;
    method gist { "name: $.name, threat level: $.threat " ~ " (really a knockoff)" unless $.authentic;
                };
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
    say $o; # This type cannot unbox to a native string: P6opaque, Slip

    my $m = Monster.new: !%record;
    ## Default constructor for 'Monster' only takes named arguments
    say $m;




# ====
#  sheet of cheats

# A unicode paste board:
# «
# »
# π
# 𝑒

# use DBIish;
# my $dbh = DBIish.connect("Pg", database => 'doom', :user<doom>, :port<5434>);

# my $sth = $dbh.prepare(q:to/STATEMENT/);
#     SELECT * FROM funked_up
# STATEMENT

# $sth.execute();
# my @rows = $sth.allrows();



# external commands without shell:
# my $arg = 'Hello';
# my $captured = run('echo', $arg, :out).out.slurp;
# my $captured = run(«echo "$arg"», :out).out.slurp;


# using shell:
# my $arg = 'Hello';
# my $captured = shell("echo $arg", :out).out.slurp;
# my $captured = qqx{echo $arg};


## Try to make errors into warnings
#   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# ===
# Author:  doom@kzsu.stanford.edu

