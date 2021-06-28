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


   ## attempts at modifying original structure reaching through "alias" keep failing silently:
   $thing_al = {};
   say $thing; # {1 => {de => 35, fr => 191.01}, 2 => {de => 935, fr => 16.39}, 3 => {de => 37}, 4 => {de => 39, fr => 7.17}, tax_rate => {de => 0.07, fr => 0.08}}
   ## hm? 

   say $thing{2}; # {de => 935, fr => 16.39}
   $thing_al{2}{'de'} = 666;
   say $thing{2}; # {de => 935, fr => 16.39}
   ## {de => 935, fr => 16.39}
   ## hm? 
}

{ # back to binding 
    my $a = 3;
    my $b :=  $a;
    say $a;  # 3
    $b = 6;
    say $a;  # 6
    ## that much works.

    my $fried = { eggs     => 2,
                  potatoes => 3,
                  ham      => 0.25,
                };

    say $fried{'eggs'}; # 2
    my $al := $fried{'eggs'};
    $al = 3;
    say $fried{'eggs'}; # 3
    ## and that much works.

#     $fried = {};
#     say $fried{'eggs'};  # (Any)
#     say $fried; # {}

    my $f_al := $fried;
    $f_al = {};
    say $fried; # {}


    }

