#!/usr/bin/env raku
# 
# inline_perl5_and_stdout.raku            26 Feb 2023 

use v6;


use Inline::Perl5;   ### TODO installation problems.
my $p5 = Inline::Perl5.new;                                    
                                                               
my $perl5_code = q:to/END/;                                    
   sub p5_data {                                               
      my @monsters = qw( godzilla blob tingler kong dorisday );
      return @monsters;                                        
   }                                                           
                                                               
   p5_data();                                                  
END                                                            
                                                               
{
    my @stuff = $p5.run: $perl5_code;                              
    say @stuff; # [5]      
}

{
    my @stuff = $p5.call: $perl5_code;                              
    say @stuff; # 
}
