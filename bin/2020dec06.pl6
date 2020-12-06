#!/usr/bin/env perl6
# 
# 2020dec06.pl6            06 Dec 2020 


use v6;

# *** bill has a stackexchange question he wants to do in raku
# https://unix.stackexchange.com/questions/622195/how-do-i-use-grep-to-find-lines-in-which-any-word-occurs-3-times
# *** Bruce Gray: solution to the SE question: 
# raku -ne '.say if .words.classify.grep(*.value >= 3);'

my $text = qq :to /END/;
The hitherto guarded subject pertains to my non-professional visit to Egypt
fourteen years ago, and has been avoided by me for several reasons. For one thing, I am averse
to exploiting certain unmistakably actual facts and conditions obviously unknown to the myriad
tourists who throng about the pyramids and apparently secreted with much diligence by the authorities
at Cairo, who cannot be wholly ignorant of them. For another thing, I dislike to recount an
incident in which my own fantastic imagination must have played so great a part. What I saw—or
thought I saw—certainly did not take place; but is rather to be viewed as a result of
my then recent readings in Egyptology, and of the speculations anent this theme which my environment
naturally prompted. These imaginative stimuli, magnified by the excitement of an actual event
terrible enough in itself, undoubtedly gave rise to the culminating horror of that grotesque
night so long past.               
END

say "text: $text";

my $target = "to";

say $text.words.elems; # 155;

say $text.words.classify( {$_ eq 'to'} );
# {False => [The hitherto guarded subject pertains my non-professional visit Egypt fourteen years ago, and has been avoided by me for several reasons. For one thing, I am averse exploiting certain unmistakably actual facts and conditions obviously unknown the myriad tourists who throng about the pyramids and apparently secreted with much diligence by the authorities at Cairo, who cannot be wholly ignorant of them. For another thing, I dislike recount an incident in which my own fantastic imagination must have played so great a part. What I saw—or thought I saw—certainly did not take place; but is rather be viewed as a ...], True => [to to to to to to to]}


my $ret =  $text.words.classify( {$_ eq 'to'} );
say $ret{ True } ;        #  [to to to to to to to]
say $ret{ True }.elems ;  # 7 


# .grep( *.value >= 3 );

say $text.words.classify( { $_ } );

say $text.words.classify( { $_ } ){ $target }; # [to to to to to to to]

say $text.words.classify( { $_ } ){ $target }.elems; # 7

say $text.words.classify( { $_ } ){ $target }.grep( *.values >= 3 ); # ()


my %h = ( 'a' => 1, 'b' => 2, 'c' => 3 );
say %h;  # {a => 1, b => 2, c => 3}
say %h.values; #  (1 2 3)
say %h.keys;   #  (c b a)

say %h.grep( *.value >= 1 );  # (c => 3 b => 2 a => 1)

say %h.grep( *.value >= 3 );  # (c => 3)

say "XXX";
say $text.words.classify( { $_ } ){ $target }; # [to to to to to to to]

# .grep( *.value >= 3 ); # ()

say $text.words.classify( { $_ } ).map( { .key => .value.elems } ).grep( *.value >= 3 );
#  (and => 4 to => 7 of => 5 I => 4 by => 3 my => 4 the => 6 in => 3)


my $cutoff = 2;
for $text.lines -> $line {
    if $line.words.classify( { $_ } ).map({ .key => .value.elems }).grep( *.value >= $cutoff ) {
        say $line;
    }
}

say "---";
my $cutoff = 2;
for $text.lines -> $line {
    my %classified = $line.words.classify( { $_ } );
    if %classified.map({ .key => .value.elems }).grep( *.value >= $cutoff ) {
        say $line;
    }
}


say "---";
## another bg approach:
## raku -ne '.say if .words.Bag.values.any >= 3;' 
$cutoff = 2;
say "===";
for $text.lines -> $line {
    my @l = $line.words;
    # say "L:", @l;

    ## these are all the same:
    my %bagged = bag @l;
    # my %bagged = @l.Bag;
    # my %bagged = $line.words.Bag;

    # say "B: ", %bagged;
    if any( %bagged.values ) >= $cutoff {
         say ">>", $line, "<<";
     }
}



# Set        True if present
# SetHash
# Bag        Count of whats present
# BagHash    
# Mix        
# MixHash
