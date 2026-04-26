#!/usr/bin/raku

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
