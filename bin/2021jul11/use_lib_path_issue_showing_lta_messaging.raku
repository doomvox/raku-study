#!/usr/bin/env perl6
# 
# use_lib_lta_messaging.raku            10 Jul 2021 

use v6;

# TODO 
# use lib "/home/doom/End/Cave/DataMathRaku/lib/";
        # /home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual/lib/Data/Qualify.rakumod
# use lib "/home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual/lib";

# my $lib_loc = $*PROGRAM.parent.add('../lib');
# use lib "$lib_loc";  # compile time error, complains of an empty string

# BEGIN { 
# #  my $lib_loc = $*PROGRAM.parent.add('../lib');
# #  use lib "$lib_loc";  

#  # Still a complie time error:
#  # Use of uninitialized value $lib_loc of type Any in string context.
#  # Repository specification can not be an empty string.  Did you mean 'use lib "."' ?

# # *This* actually works:
#     use lib $*PROGRAM.parent.add('../lib');
# }

# code example for the lib pragma:
# use lib ('.', '.'.IO, './lib'.IO);

## But this doesn't work:
#   use lib ('../lib'.IO);
# 
#    file#/home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual/../lib
# ## *This works, but only as long as cwd is
# ##   /home/doom/End/Cave/DataMathRaku/Wall/Data-MapDual
# use lib ('./lib'.IO);

# This works, even without a BEGIN



## We are here:
#   /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021jul11/use_lib_lta_messaging.raku
## The module I want to use is here:
# /home/doom/End/Cave/Perl6/Wall/raku-study/lib/Data/Stub.rakumod

# relative path from script location:   "../../lib"


# ## This works:
# use lib $*PROGRAM.parent.add('../../]lib');
# use Data::Stub;
# say whun();  #  1

# I originally thought this would work:

# my $lib_loc = $*PROGRAM.parent.add('../../lib');
# use lib "$lib_loc";
# # compile time error:
# # Use of uninitialized value $lib_loc of type Any in string context.
# # Repository specification can not be an empty string.  Did you mean 'use lib "."' ?
# say whun();  #  1

# And further, after I hit that problem, I *thought* it could be fixed with the BEGIN phasor,
# but you get the same errors:

# BEGIN { 
#     my $lib_loc = $*PROGRAM.parent.add('../../lib');
#     use lib "$lib_loc";
#     say whun();  #  1
# }


# Same deal:
# BEGIN { 
#     my $lib_loc = $*PROGRAM.parent.add('../../lib');
# }
# use lib "$lib_loc";
# say whun();  #  1

# {
#     # Verifying I'm not crazy:
#     my $lib_loc = $*PROGRAM.parent.add('../../lib');
#     say "lib_loc: $lib_loc";
#     # lib_loc: /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021jul11/../../lib
# }

# {
#     my $lib_loc = $*PROGRAM.parent.add('../../lib').resolve;
#     say "lib_loc: $lib_loc";
#     # lib_loc: /home/doom/End/Cave/Perl6/Wall/raku-study/lib
# }

# {
#     my $lib_loc = $*PROGRAM.parent(3).add('lib');
#     say "lib_loc: $lib_loc";
#     # lib_loc: /home/doom/End/Cave/Perl6/Wall/raku-study/lib
# }


# ## Again, uninit/empty string error:
# BEGIN { 
#     my $lib_loc = $*PROGRAM.parent(3).add('lib');
# #    use lib "$lib_loc";
# #    use lib $lib_loc;
#      use lib ($lib_loc);
#      say whun();  #  1
# }
