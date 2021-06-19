#!/usr/bin/env perl6
# 
# deepmap.raku            19 Jun 2021 

use v6;

my  %g1   = ( 2015 => {  1 => { de => 1166.00,
                                fr => 69.69, },
                         2 => { de => 76.23,
                                fr => 555.50, },
                      },
               2016 => { 1 => { de => 177.00,
                                fr => 191.25, },
                         2 => { de => 74.00,
                                fr => 555.50, },
                       },
            );

say %g1{2016}{2}{'de'}; # 74

my %n1 = %g1.deepmap({ $_ * 2 });
say %n1{2016}{2}{'de'}; # 148

# interestingly, this works too (a fine example of raku consistency)
my %m1 = %g1.deepmap( * * 2 );  
say %m1{2016}{2}{'de'}; # 148


say "     2016 ", %g1{2016};
#      2016 {1 => {de => 177, fr => 191.25}, 2 => {de => 74, fr => 555.5}}
say " new 2016 ",%n1{2016};
# new 2016 {1 => {de => 354, fr => 382.5}, 2 => {de => 148, fr => 1111}}

say "     2015 ", %g1{2015};
#     2015 {1 => {de => 1166, fr => 69.69}, 2 => {de => 76.23, fr => 555.5}}
say " new 2015 ", %n1{2015};
# new 2015 {1 => {de => 2332, fr => 139.38}, 2 => {de => 152.46, fr => 1111}}

{
    my %monster_data =
    ( 'godzilla' =>
      {
          level => 9,
          color => 'green',
      },
      'mothera'  =>
                 {
                     level => 6,
                     color => 'multi',
                 },
      'rhodan'   =>
                 {
                     level => 5,
                     color => 'brown',
                 },
    );


    # my %munged = %monster_data.deepmap({ $_ + 13 });
    # # Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏brown' (indicated by ⏏)

    my %munged = %monster_data.deepmap({ .Numeric ?? $_+13 !! $_ });
    say %monster_data{'godzilla'};  # {color => green, level => 9}
    say %munged{'godzilla'};        # {color => green, level => 22}

    my %remunged = %monster_data.deepmap({ $_+12 if .Numeric });
    say %remunged{'godzilla'};        # {color => 21}  WTF?

    # I *sometimes* see that line as:  {color => 21} 
    #   See: deepmap_WEIRDZO.raku
    # Just adding the following two lines of code is enough to change that last line,
    # Now it's:  {level => 21}    
    my %remunged_too = %monster_data.deepmap({ $_+12 if .Numeric });
    say %remunged_too{'godzilla'}; # {level => 21}
    
    # In anycase, as I feared passing through the unmunged fields 
    # requires explicit instruction, ala the ternary form

    my %quacked_up = %monster_data.duckmap({ $_+1.69 if .Numeric });
    say %quacked_up{'godzilla'};     # 3.69  (?)

    say %quacked_up;
    # {godzilla => 3.69, mothera => 3.69, rhodan => 3.69}

    my %quacked_up_2 = %monster_data.duckmap({ $_ - 2.5 });
    say %quacked_up_2{'godzilla'};     # -0.5

    ## Okay, I *thought* I might've understood what duckmap is
    ## for, but I still don't.  Ditto nodemap.  Later.


}

## Note: 
# perl6 --version
# Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
# Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
# Built on MoarVM version 2020.10.


{

    my @monsters =
    (
      {
          name  => 'godzilla',
          level => 9,
          color => 'green',
      },
      {
          name =>  'mothera',
          level => 6,
          color => 'multi',
      },
      {
          name => 'rhodan',
          level => 5,
          color => 'brown',
      },
    );

    say @monsters[1]; # {color => multi, level => 6, name => mothera}
    @monsters.deepmap({ .Str ?? $_.uc !! $_ })



    }
