#!/usr/bin/env perl6
# 
# hyperism.pl6            26 Feb 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;


## I'm in a mood to reveiw hypers.  


# https://docs.raku.org/language/operators#index-entry-hyper_method_call_operator

# methodop ». / methodop >>.

# This is the hyper method call operator. Will call a method on
# all elements of a List out of order and return the list of
# return values in order.

# my @a = <a b c>;
# my @b = @a».ord;                  # OUTPUT: «[97, 98, 99]␤» 
# # The first parameter of a method is the invocant. 
# sub foo(Str:D $c){ $c.ord * 2 };
# # So we can pretend to have a method call with a sub that got a good 
# # first positional argument. 
# say @a».&foo;
# # Blocks have an implicit positional arguments that lands in $_. The latter can 
# # be omitted for method calls. 
# say @a».&{ .ord};

# Hyper method calls may appear to be the same as doing a map call, however along with being a hint to the compiler that it can parallelize the call, the behavior is also affected by nodality of the method being invoked, depending on which either nodemap or deepmap semantics are used to perform the call.

# The nodality is checked by looking up whether the Callable provides nodal method. If the hyper is applied to a method, that Callable is that method name, looked up on List type; if the hyper is applied to a routine (e.g. ».&foo), that routine functions as that Callable. If the Callable is determined to provide nodal method, nodemap semantics are used to perform the hyper call, otherwise duckmap semantics are used.

# Take care to avoid a common mistake of expecting side-effects to occur in order. The following say is not guaranteed to produce the output in order:

# @a».say;  # WRONG! Could produce a␤b␤c␤ or c␤b␤a␤ or any other order 




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

