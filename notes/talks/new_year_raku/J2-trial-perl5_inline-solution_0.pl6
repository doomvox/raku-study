#!/opt/rakudo-star-2018.01/bin/perl6
# 
# trial-perl5_inline.pl6            30 Jun 2019 

use Inline::Perl5;
my $p5 = Inline::Perl5.new;

my $perl5_code = q:to/END/;
   sub p5_data {
      my @monsters = qw( dalek godzilla blob tingler kong dorisday );
      return @monsters;
   }

   p5_data();     
END

# my @stuff = $p5.run( $perl5_code );
my @stuff = $p5.run: $perl5_code;
say @stuff; # [5]

my @thingies = $p5.call('p5_data');  
say @thingies;
# [dalek godzilla blob tingler kong dorisday]

# Ah, okay-- that works.
## 
## Note:
##   o  defined a sub, then called the sub later
##   o  run implies scalar context, call implies list
