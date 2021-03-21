#!/usr/bin/env perl6
# 
# store_example_from_docs.raku            21 Mar 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

## Bill had trouble with this example:
##  https://docs.raku.org/routine/STORE
## See issue:
##  https://github.com/Raku/doc/issues/3824

class DNA {
    has $.chain is rw;
 
    method STORE ($chain where {
                         $chain ~~ /^^ <[ACGT]>+ $$ / and
                         $chain.chars %% 3
                     }, :$INITIALIZE --> DNA) {
        if $INITIALIZE {
            self = DNA.new( chain => $chain )
        } else {
            self.chain = $chain;
            self
        }
    }
 
    method Str(::?CLASS:D:) { return $.chain.comb.rotor(3) }
};
 
my @string is DNA = 'GAATCC';
say @string.Str;    # OUTPUT: «((G A A) (T C C))␤» 
@string = 'ACGTCG';
say @string.Str;    # OUTPUT: «((A C G) (T C G))␤» 





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





# ===
# Author:  doom@kzsu.stanford.edu

