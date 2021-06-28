use v6;
use Test;

# use Data::MapDual;
## Getting some familiarity with messing with data structures in raku (no tests here yet)
## Things works exactly as I expected... 
## except in my early attempts at modifying a structure via an alias (created via :=)
## I kept getting immutable errors that are still mysterious too me.

## plunge ahead, assuming it's going to work.  maybe you'll get more data...

{
   # HoH:  year -> month -> country -> value
   my $gross = { 2015 => {1 => { de => 77.00,
                                fr => 191.25, },
                       2 => { de => 39.00,
                                fr => 555.50, },
                       3 => { de => 725.00,
                                fr => 99.03, },
                        tax_rate => { de => 0.07,
                                      fr => 0.08, },
                      },
              2016 => {1 => { de => 35.00,
                                fr => 191.01, },
                       2 => { de => 935.00,    # the check value for gross
                                fr => 16.39, },
                       3 => { de => 37.00, },
                       4 => { de => 39.00,
                                fr => 7.17, },
                        tax_rate => { de => 0.07,
                                      fr => 0.08, },
                      },
              source  => 'doomvox',
              comment => 'fictional numbers',
             };
   my $costs = { 2015 => {1 => { de => 72.00,
                                fr => 72.27, },
                       2 => { de => 191.70,
                                fr => 81.18, },
                       3 => { de => 37.00,
                                fr => 191.91, },
                        tax_rate => { de => 0.07,
                                      fr => 0.08, },
                      },
              2016 => {1 => { de => 31.00,
                                fr => 137.37, },
                       2 => { de => 35.00,      # the check value for costs
                                fr => 187.87, },
                       3 => { de => 39.00, },
                       4 => { de => 33.00,
                                fr => 1974.76, },
                        tax_rate => { de => 0.07,
                                      fr => 0.08, },
                      },
              source  => 'doomvox',
              comment => 'dummy numbers',
             };


   my $thing = $gross{2016};
   my $thing_alias :=  $gross{2016};
   say $thing;
   say $thing_alias;

   # {1 => {de => 35, fr => 191.01}, 2 => {de => 935, fr => 16.39}, 3 => {de => 37}, 4 => {de => 39, fr => 7.17}, tax_rate => {de => 0.07, fr => 0.08}}


   say $gross{2016}{2}{'de'};  # 935
   say $thing_alias{2}{'de'};  # 935
   $thing_alias{2}{'de'} = 123.32;
   say $gross{2016}{2}{'de'};  # 123.32
   ## okay, with hashes declared with outer {} (not parens)
   ## and assigned to a $var, things work as expected.

   ## (the outer parens were creating a list, perhaps, which was immutable?)
}

{
    my $a1 = { alpha => 1 };
    my $a2 = Nil;
    
    sub q ( :$a, :$b ) {
        my ($ta, $tb, $n);
        if $a && not $b {
             $ta = $a.WHAT;
             $tb = $ta;
             $n = $ta;
        } elsif $b && not $a {
             $tb = $b.WHAT;
             $ta = $tb;
             $n = $tb;
        } else {
            die "how did I get two holes opposite each other?";
        }
        return ($ta, $tb, $n);
    }

    my ($ta, $tb, $n);
    ($ta, $tb, $n) 
       = q( a=>$a1, b=>$a2 );
    say $ta;
    say $tb;
    say $n;

}


{
   # got holes
   # HoH:  year -> month -> country -> value
    my $gross =
             { 2015 => {1 => { de => 77.00,
                               fr => 191.25, },
                        2 => { de => 39.00,
                              fr => 555.50, },
                       },
              2016 => {1 => { de => 35.00,
                              fr => 191.01,
                              us => 777.77,
                            },
                       3 => { de => 37.00, },
                       4 => { de => 39.00,
                              fr => 7.17, },
                      },
             };
    my $costs =
            { 2015 => {1 => { de => 72.00,
                              fr => 72.27,
                              es => 101.09,
                            },
                       2 => { de => 191.70,
                              fr => 81.18, },
                      },
              2016 => {1 => { de => 31.00,
                              fr => 137.37, },
                       2 => { de => 35.00,      # the check value for costs
                              fr => 187.87, },
                       3 => { de => 39.00, },
                      },
            };

### ?

}
