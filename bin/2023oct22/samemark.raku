#!/usr/bin/env raku
# 
# samemark.raku            22 Oct 2023 

say 'åäö'.samemark('aäo');    # aäo
say 'åäö'.samemark('a');      # aao
 
say samemark('Räku', 'a');    # Raku
say samemark('aöä', '');      # aöä

say "===";
say 'åäö'.samemark('xyz'); # aao
say 'xyz'.samemark('åäö'); # x̊ÿz̈
