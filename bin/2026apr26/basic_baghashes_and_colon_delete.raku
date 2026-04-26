#!/usr/bin/raku

my @monsters = <<godzilla rhodan blob tingler crinoid>>;

{
    say @monsters;  # [godzilla rhodan blob tingler crinoid]
    say @monsters.WHAT;  # (Array)
}

{
    my $plaid = @monsters.BagHash;
    say $plaid;      # BagHash(blob crinoid godzilla rhodan tingler)
    say $plaid.WHAT; # (BagHash) 
}

{
    my %carpet = @monsters.BagHash;
    say %carpet;      # {blob => 1, crinoid => 1, godzilla => 1, rhodan => 1, tingler => 1}
    say %carpet.WHAT; # (Hash)

    ## A mild surprise, but only mild: %carpet is a Hash, you can assign a BagHash to it, but you get a Hash.
}

# {
#     my BagHash %carpet = @monsters.BagHash;
#     say %carpet;      # {blob => 1, crinoid => 1, godzilla => 1, rhodan => 1, tingler => 1}
#     say %carpet.WHAT; # (Hash)

# # Type check failed for an element of %carpet; expected BagHash but got Int (1)
# #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026apr26/basic_baghashes_and_colon_delete.raku line 25

# }


{
#    my %carpet is BagHash = @monsters.BagHash;
    my %carpet is BagHash = @monsters;
    say %carpet;      # BagHash(blob crinoid godzilla rhodan tingler)
    say %carpet.WHAT; # (BagHash)

    say %carpet<crinoid>; # 1
}

{
    # my  $vinyl is BagHash = @monsters;
    # is trait on $-sigil variable not yet implemented. Sorry.
    # raku --version
    # Welcome to Rakudo™ v2024.09.

    my %h = ( 'a' => 1, 'b' => 2, 'c' => 3 );
    say %h;  # {a => 1, b => 2, c => 3}

    my  BagHash $vinyl  = %h;

    say $vinyl;      # {blob => 1, crinoid => 1, godzilla => 1, rhodan => 1, tingler => 1}
    say $vinyl.WHAT; # (Hash)

# Odd number of elements found where hash initializer expected:
# Found 5 (implicit) elements:
# Last element seen: "crinoid"
#   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026apr26/basic_baghashes_and_colon_delete.raku line 37

## Acting on key value pairs, linearized into a list?

}

