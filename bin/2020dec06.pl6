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

.say if $text.words.classify.grep(*.value >= 3);
