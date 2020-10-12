#!/usr/bin/env perl6
# 
# array_stringification_via_split_etc.pl6            10 Oct 2020 

## See:
##  /home/doom/End/Cave/Perl6/Notes/Topics/topic-KJ-split_join_and_stringification

use v6;

# Willima Michels: "split() performs an implied join of Array elements"
# Yes: because split is a *string* method, it's as though you
# called .Str on the array first.

my @monsters = < blob kong mothera fingfangfoom >;

# what would you *want* to happen here?
put @monsters;        # blob kong mothera fingfangfoom
say "{ @monsters }";  # blob kong mothera fingfangfoom

# Raku does a DWIM move, and joins the array on spaces when you use the array as a string.

# So these do the same things:
my $s1 = @monsters.Str;
my $s2 = @monsters.join(" ");
dd( $s1 );  # Str $s1 = "blob kong mothera fingfangfoom"
dd( $s2 );  # Str $s2 = "blob kong mothera fingfangfoom"

# You need to use .join explicitly if you want different behavior:
my $s3 = @monsters.join(", ");
dd( $s3 );  # Str $s3 = "blob, kong, mothera, fingfangfoom"


# All three of these do the same things
my @r1 =  @monsters.split("a");
my @r2 =  @monsters.Str.split("a");
my @r3 =  @monsters.join(" ").split("a");

dd( @r1 ); dd( @r2 ); dd( @r3 );
# On all three of those, the output is:
#  Array @r1 = ["blob kong mother", " fingf", "ngfoom"]

# The split here then joins on spaces first (tossing the division between 3 elements)
# before subdividing into 5 elements:
my @a = "My Bloody Valentine", "Sonic Youth";
@a.split(" ").raku.say; 
# ("My", "Bloody", "Valentine", "Sonic", "Youth").Seq

# You might play with an explicit join to see what it does:
my @r;
@r = @a.join("|").split(" ");
dd( @r ); # Array @r = ["My", "Bloody", "Valentine|Sonic", "Youth"]

# I might be inclined to loop over the elements, e.g. with map:
@r = @a.map({ [ .split(" ") ] });
dd(@r);
# Array @r = [["My", "Bloody", "Valentine"], ["Sonic", "Youth"]]

# That's an array of arrays, two top-level items that are split 
# into 3 and 2 words respectively

# Note: .split does stringification because it's intended to be run on strings, 
# or things that can become strings-- .map doesn't do this because it's 
# intended to be run on things like Arrays.

## Bruce Gray points out that the square brackets here aren't needed, 
## they're a perl5-ism: 
##   @r = @a.map({ [ .split(" ") ] });

@r = @a.map({  .split(" ")  });
dd(@r);
# Array @r = [("My", "Bloody", "Valentine").Seq, ("Sonic", "Youth").Seq]

# Though, the fact that the inner elements are Seq and not Array
# might be a draw-back for some purpose.

