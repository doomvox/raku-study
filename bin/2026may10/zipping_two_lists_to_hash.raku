#!/usr/bin/env raku

## Starting with a list of names:
my @monsters = <<godzilla rhodan blob tingler crinoid>>;

## I want a hash with numeric values assigned to each:
my %threat  =
    ('godilla' => 8, 'rhodan' => 3, 'blob' => 5, 'tingler' => 4, 'crinoid' => 6);

## But typing the key values over again seems silly.
## So:

my @levels = 8, 3, 5, 4, 6;

say @monsters Z @levels;
# ((godzilla 8) (rhodan 3) (blob 5) (tingler 4) (crinoid 6))

# say (@monsters Z @levels).Hash;
# # Odd number of elements found where hash initializer expected:

# my %h =  (@monsters Z @levels);
# say %h;

say "===";         

# my $h = (@monsters Z @levels).map({$_.pairup}).Hash;

my $h = (@monsters Z @levels).map({$_.pairup});
say $h;
# ((godzilla => 8) (rhodan => 3) (blob => 5) (tingler => 4) (crinoid => 6))
# say $h<rhodan>;
# # Type Seq does not support associative indexing.


{
 # Steve Roe solution:
 say (@monsters Z @levels).flat.pairup.Hash;
 # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}

 say (@monsters Z @levels).flat.Hash;
 # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}

 ## I've got pairup on the brain.

}




my $h2 = (@monsters Z @levels)>>.pairup;
say $h2;
# ((godzilla => 8) (rhodan => 3) (blob => 5) (tingler => 4) (crinoid => 6))

my $t = | (@monsters Z @levels)>>.pairup; 
say $t;
# ((godzilla => 8) (rhodan => 3) (blob => 5) (tingler => 4) (crinoid => 6))

{
    my @l = @levels;

    my $h;
    @monsters.reverse.map({ $h{$_} = @l.pop });
    say $h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
    }


{
    my %h = 'wuhn', 1, 'tew', 2, 'thuree', 3;
    say %h; # {tew => 2, thuree => 3, wuhn => 1}
    }



{
    my $h = ((@monsters Z @levels)>>.pairup).flat; 
    say $h;
    # (godzilla => 8 rhodan => 3 blob => 5 tingler => 4 crinoid => 6)
    # say $h<blob>; # Type Seq does not support associative indexing.
    }

{
    my %h = ((@monsters Z @levels)>>.pairup).flat; 
    say %h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
    say %h<blob>; # 5
    }



{
#     my %h = (@monsters Z @levels)>>.flat; 
#     say %h;
#     # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
#     say %h<blob>; # 5

# # Odd number of elements found where hash initializer expected:
# # Found 5 (implicit) elements:
# # Last element seen: $(("crinoid",).Seq, (6,).Seq)


    }



{
    my %h = %( (@monsters Z @levels)>>.pairup.flat ) ; 
    say %h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}

}

{
    my %h = (@monsters Z @levels)>>.pairup.flat;
    say %h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}

}


{ # GOOD assign to hash slice
    my %h;
#     %h<< @monsters >> = @levels;
#     say %h;  # {@monsters => [8 3 5 4 6]}

    %h{ @monsters } = @levels;
    say %h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
}

# { 
#     say "TRIAL: one line declare and use hash";
#     my %h{ @monsters } = @levels;    # Invalid hash shape; type expected
#     say %h;
#     # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
# }

{
#     my %h = (@monsters Z @levels)>>.kv;
#     say %h;
#     # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}

#     # Odd number of elements found where hash initializer expected:

}

{
    my %h = (@monsters Z @levels)>>.kv.flat;
    say %h;
    # {0 => crinoid, 1 => 6}

    # heh: fail. But how?

    say (@monsters Z @levels)>>.kv.flat;
    # (0 godzilla 1 8 0 rhodan 1 3 0 blob 1 5 0 tingler 1 4 0 crinoid 1 6)

    # Ah: calling .kv on a list, so you get indicies...

    # my @a = (@monsters Z @levels)>>.kv.flat;
    # for @a -> $a { say $a; }
    
}


{
    my %h = %( (@monsters Z @levels)>>.List.flat ) ; 
    say %h;
    # {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
}

{ ## GOOD: Z metaop applied to =>
    say (@monsters Z=> @levels);
    # (godzilla => 8 rhodan => 3 blob => 5 tingler => 4 crinoid => 6)

    my %h = @monsters Z=> @levels;
    say %h;
#    {blob => 5, crinoid => 6, godzilla => 8, rhodan => 3, tingler => 4}
}











