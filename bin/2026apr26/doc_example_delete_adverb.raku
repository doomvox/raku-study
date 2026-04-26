#!/usr/bin/raku

{
    my %h = a => 1;
    say %h;         # OUTPUT: «{a => 1}␤»
    say %h.elems;   # OUTPUT: «1␤»

    %h<a>:delete;
    say %h;         # OUTPUT: «{}␤»
    say %h.elems;   # OUTPUT: «0␤»
}

{
    my @monsters = <<godzilla rhodan blob tingler crinoid>>;
    my $m = @monsters.BagHash;
    say $m;         # BagHash(blob crinoid godzilla rhodan tingler)
    say $m.elems;   # 5

    say "rhodan value is: ", $m<rhodan>;
    # rhodan value is: 1

    my $ret = 
        $m<rhodan>:delete;
    say $m;         # BagHash(blob crinoid godzilla tingler)
    say $m.elems;   # 4 
    say $ret;       # 1
}
