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
    say $m;         #
    say $m.elems;   # OUTPUT: «1␤»

    %m<a>:delete;
    say %m;         # OUTPUT: «{}␤»
    say %m.elems;   # OUTPUT: «0␤»
}
