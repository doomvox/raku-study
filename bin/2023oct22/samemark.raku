#!/usr/bin/env raku
# 
# samemark.raku            22 Oct 2023 

use v6;


say 'åäö'.samemark('aäo');                        # OUTPUT: «aäo␤» 
say 'åäö'.samemark('a');                          # OUTPUT: «aao␤» 
 
say samemark('Räku', 'a');                        # OUTPUT: «Raku␤» 
say samemark('aöä', '');                          # OUTPUT: «aöä␤»





say 'åäö'.samemark('xyz');
