#!/usr/bin/raku

## Trying to type a code example in-progress off of a shared screen

multi task( Str:D() $in is copy, Array() $bad -->Str) {
    my $ret =
    ( $(
            ($in.trans: ('A'..'Z', /<:P>/) => ('a'..'z', ' '))
                        .words.BagHash
                                   ){ @$bad? : delete ).max(*.value).key;
      my $ret = ($in.trans: ('A'..'Z', /<:P>/) => ('a'..'z', ' ')
                                               .words.BagHash;
                 $ret{@$bad} :delete;
                 $ret.max(*.value).key;
}
