#!/usr/bin/env raku
# 
# classify.raku            12 Feb 2023 

use v6;

## simple task: copy values into arrays @quant, @name

my @data = ( { quant => 1, name => 'alpha', },
             { quant => 2, name => 'beta',  },
             { quant => 3, name => 'gamma', },
             { quant => 4, name => 'delta', }, );

# Goal:
# @quant = [1 2 3 4];
# @name  = [alpha beta gamma delta];


## bruce gray suggests a different style of initializing:

# my @data2 = map { Hash.new( <quant name> Z=> .list ) },
#     < 1 alpha >,
#     < 2 beta  >,
#     < 3 gamma >,
#     < 4 delta >,
# ;


{
    my (@quant, @name);
    @data.map( { @quant.push($_<quant>), @name.push($_<name>) });
    say 'quant:', @quant, ' name: ', @name;
    # quant:[1 2 3 4] name: [alpha beta gamma delta]
}


{
    my (@quant, @name);
    my $i = 0;
    for @data -> $dyad {
        (@quant[$i], @name[$i]) = $dyad{'quant','name'};
        $i++;
    }
    say 'quant:', @quant, ' name: ', @name;
    # quant:[1 2 3 4] name: [alpha beta gamma delta]
}


{
   # bruce gray's cleaned up version of the above, skips need for "$dyad" var   
    my (@quant, @name);
    for @data -> ( :$quant, :$name ) {
        push @quant, $quant;
        push @name , $name;
    }
    say ( :@quant, :@name );
    # (quant => [1 2 3 4] name => [alpha beta gamma delta])
}



{
    # marton polgar approach, doesn't require knowledge of key names
     say "===";

     say @data;
     # [{name => alpha, quant => 1} {name => beta, quant => 2} {name => gamma, quant => 3} {name => delta, quant => 4}]
     say @data.pairs;
     # (0 => {name => alpha, quant => 1} 1 => {name => beta, quant => 2} 2 => {name => gamma, quant => 3} 3 => {name => delta, quant => 4})
     say @data.pairs.flat;
     # (0 => {name => alpha, quant => 1} 1 => {name => beta, quant => 2} 2 => {name => gamma, quant => 3} 3 => {name => delta, quant => 4})
     say @data>>.pairs.flat.classify(*.key, as => *.value);
     # {name => [alpha beta gamma delta], quant => [1 2 3 4]}

    my %result = @data>>.pairs.flat.classify(*.key, as => *.value);
    say %result<name>;    # [alpha beta gamma delta]
    say %result<quant>;   # [1 2 3 4]

}

{  # marton  
    my ( :$quant, :$name ) := @data».pairs.flat.classify(*.key, as => *.value);
    say "quant: $quant   name: $name";    
    # quant: 1 2 3 4   name: alpha beta gamma delta
    }



{
    # neat solution from bruce gray:
    my ( $quants, $names ) = [Z] @data».<quant name>;
    say "quants: $quants   names: $names";
    # quants: 1 2 3 4   names: alpha beta gamma delta
}

{
    # bg one-line version
    my ( $quants, $names ) = @data».pairs.flat.classify(*.key, as => *.value)<quant name>;
    say "quants: $quants   names: $names";    
    # quants: 1 2 3 4   names: alpha beta gamma delta
}

# {  # marton  this syntax might work with new compiler (?)
#     my :( :$quant, :$name ) := |@initial-data».pairs.flat.classify(*.key, as => *.value);
#     say "quants: $quants   names: $names";    

#     }





## docs for classify:
# my @years = (2003..2008).map( { Date.new( $_~"-01-01" ) } );
# @years.classify( *.is-leap-year , into => my %leap-years );
# say %leap-years;
# # OUTPUT: «{False => [2003-01-01 2005-01-01 2006-01-01 2007-01-01], 
# #           True => [2004-01-01 2008-01-01]}␤» 

# {
# #  my %c;
#   @data.classify( *.keys, into => my %c );
#   }

#   say %c;
# }




## docs for categorize:
# sub mapper(Int $i) returns List {
#     $i %% 2 ?? 'even' !! 'odd',
#     $i.is-prime ?? 'prime' !! 'not prime'
# }
# say categorize &mapper, (1, 7, 6, 3, 2);
# # OUTPUT: «{even => [6 2], not prime => [1 6], odd => [1 7 3], prime => [7 3 2]}␤»
