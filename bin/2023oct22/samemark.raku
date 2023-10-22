#!/usr/bin/env raku
# 
# samemark.raku            22 Oct 2023 

say 'åäö'.samemark('aäo');                        # OUTPUT: «aäo␤» 
say 'åäö'.samemark('a');                          # OUTPUT: «aao␤» 
 
say samemark('Räku', 'a');                        # OUTPUT: «Raku␤» 
say samemark('aöä', '');                          # OUTPUT: «aöä␤»

say "===";

say 'åäö'.samemark('xyz'); # aao

say 'xyz'.samemark('åäö'); # x̊ÿz̈
