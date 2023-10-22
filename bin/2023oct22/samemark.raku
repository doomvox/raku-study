#!/usr/bin/env raku
# 
# samemark.raku            22 Oct 2023 

## https://docs.raku.org/type/Str#routine_samemark

# Returns a copy of $string with the mark/accent information for
# each character changed such that it matches the mark/accent of
# the corresponding character in $pattern.

say 'åäö'.samemark('aäo');    # aäo
say 'åäö'.samemark('a');      # aao
 
say samemark('Räku', 'a');    # Raku
say samemark('aöä', '');      # aöä

say "===";

say 'åäö'.samemark('xyz'); # aao
say 'xyz'.samemark('åäö'); # x̊ÿz̈
