#!/usr/bin/env perl6
# 
# G5-dualmap-numerics_with_codeblock.raku             Jul 11, 2021 

use lib '/home/doom/End/Cave/DualMap/Wall/Data-DualMap/lib';
use Data::DualMap::Numerics;

{
  # HoH:  year -> month -> country -> value
  my $gross = { 2015 => {1 => { de => 77.00,
                                fr => 191.25, },
                         2 => { de => 39.00,
                                fr => 555.50, },
                        },
                2016 => {1 => { de => 35.00,
                                fr => 191.01, },
                         2 => { de => 935.00,    
                                fr => 16.39, },
                        },
              };
   my $costs = { 2015 => {1 => { de => 72.00,
                                 fr => 72.27, },
                          2 => { de => 191.70,
                                 fr => 81.18, },
                      },
                 2016 => {1 => { de => 31.00,
                                 fr => 137.37, },
                          2 => { de => 35.00,    
                                 fr => 187.87, },
                         },
               };

  ## This code adds two placeholders, then rounds to nearest 10
  my $code = { 
               my $n = $^a + $^b;
               my $r = $n.round( 10 );
             };

  my $result = dualmap-numerics( $code, $gross, $costs );
  dd $result;
  # Hash $result = ${"2015" => ${"1" => ${:de(150), :fr(260)}, "2" => ${:de(230), :fr(640)}}, "2016" => ${"1" => ${:de(70), :fr(330)}, "2" => ${:de(970), :fr(200)}}}

  say $gross{2015}{1}{'de'}; # 77
  say $costs{2015}{1}{'de'}; # 72
  # 77 + 72 = 149
  say $result{2015}{1}{'de'}; # 150   (rounded to nearest 10)

  my $result2 = dualmap-numerics( '+', $gross, $costs );
  say $result2{2015}{1}{'de'}; # 149

  ## That's the magic of multisubs: the code form found the Block multi, 
  ## the string form found the Str
  ## See:  
  ##  /home/doom/End/Cave/DualMap/Wall/Data-DualMap/lib/Data/DualMap/Recurse/Numerics.rakumod
}
