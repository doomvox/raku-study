#!/usr/bin/env perl6
# 
# regex_literal_dot_etc.pl6            30 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

# Recent ToddAndMargo question, answered JJ Merello

{
    my $x = "1.33.222.4";
    my $m = 
      $x ~~ m/ (<:N>+) [.] (<:N>+) [.] (<:N>+) [.] (<:N>+) /;
    say $m;
      # ｢1.33.222.4｣
      #  0 => ｢1｣
      #  1 => ｢33｣
      #  2 => ｢222｣
      #  3 => ｢4｣
}
{ # ToddAndMargo wondered about this behavior
    my $x = "1.33.222";  # missing closing group now, only two dot seps
    my $m = 
      $x ~~ m/ (<:N>+) [.] (<:N>+) [.] (<:N>+) [.] (<:N>+) /;
    say $m;
      # ｢1.33.222｣
      #  0 => ｢1｣
      #  1 => ｢33｣
      #  2 => ｢2｣
      #  3 => ｢2｣
}

{ # jj merelo solution #1
    my $x = "1.33.222.4";
    my $m = 
      $x ~~ m/(\d+) "." (\d+) "." (\d+) "." (\d+) /;
    say $m;
}

{ # jj merelo solution #2
    my $x = "1.33.222.4";
    my $m = 
      $x  ~~ m/(\d+) ** 4 % "." /;
    say $m;
}


{ # variant of merelo #1 -- <[.]> works as a literal dot, as does \.
    my $x = "1.33.222.4";
    my $m = 
      $x ~~ m/(\d+) <[.]> (\d+) <[.]> (\d+) <[.]> (\d+) /;
    say $m;  # works

    $x = "1x33x222x4";
    $m = 
      $x ~~ m/(\d+) <[.]> (\d+) <[.]> (\d+) <[.]> (\d+) /;
    say $m;  # False, does not match

    $x = "1.33.222.4";
    my $m = 
      $x ~~ m/(\d+) \. (\d+) \. (\d+) \. (\d+) /;
    say $m;  # works too
}

{ # but what if you need to match a "?

    my $str = 'string_632="The chicken says--", voice="high"';

    my $m = 
      $str ~~ m{ ( " .*? " ) };
    say $m; # False

    $m = 
      $str ~~ m:g{ ( \" .*? \" ) };  # Gratuitous " to cover syntax highlighting issue
    say $m;
        # ｢"The chicken says--"｣
        # 0 => ｢"The chicken says--"｣ ｢"high"｣
        #  0 => ｢"high"｣)

    ## Q: how would you match *any* open/close quotes, including unicode smarties?


    }
