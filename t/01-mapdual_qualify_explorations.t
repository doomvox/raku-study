use v6;
use Test;

# use Data::MapDual;

{
   # HoH:  year -> month -> country -> value
   my ( %gross, %costs );
   %gross = ( 2015 => {1 => { de => 77.00,
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
             );
   %costs = ( 2015 => {1 => { de => 72.00,
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
             );


   my $thing = %gross{2016};
   my $thing_al :=  %gross{2016};
   say $thing.WHAT;    # (Hash)
   say $thing_al.WHAT; # (Hash)

   my $type = $thing.WHAT;
   say $type;           # (Hash)
   my $x1 = $type.new;
   my $x2 = $thing.new;

   say $x1.WHAT;        # (Hash)
   say $x2.WHAT;        # (Hash)

   say $thing;
   # {1 => {de => 35, fr => 191.01}, 2 => {de => 935, fr => 16.39}, 3 => {de => 37}, 4 => {de => 39, fr => 7.17}, tax_rate => {de => 0.07, fr => 0.08}}
   say $x1;
   # {}

}
