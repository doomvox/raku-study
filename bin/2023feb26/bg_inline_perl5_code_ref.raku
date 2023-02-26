#!/usr/bin/env raku
# 
# bg_inline_perl5_code_ref.raku            26 Feb 2023 

use v6;

## Bruce grey says this Just Works, 

use Inline::Perl5;
my $p5 = Inline::Perl5.new;
my $code_ref = $p5.run: q:to/END/;
   sub p5_data {
      my @monsters = qw( godzilla blob tingler kong dorisday );
      return @monsters;
   }
   \&p5_data;
END
say $code_ref.(); # Expect to see: godzilla blob tingler kong dorisday
