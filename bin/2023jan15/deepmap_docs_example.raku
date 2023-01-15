#!/usr/bin/env perl6
# 
# deepmap_docs_example.raku            15 Jan 2023 

use v6;

{ what => "is", this => "thing", a => <real list> }.deepmap( *.flip ).say;
# {a => (laer tsil), this => gniht, what => si}

## works as docs says
# {a => (laer tsil), this => gniht, what => si}


say "godzilla".flip; # allizdog

my $p = Pair.new('key', 'value');
say $p.WHAT; # (Pair)

# say $p.flip;  
#  these: 'flat', 'skip', 'Slip'?

# A Pair is not Cool  Daddio.


say $p.Str.flip;  
# eulav	yek


my %stuff( 'thing' => ('godzilla', 'mothera', 'rhodan'),
           'thang' => ('what?'),
           'thong' => ('miley'),
           );

%stuff.deepmap( *.say );

