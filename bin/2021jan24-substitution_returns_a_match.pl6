#!/usr/bin/env perl6
# 
# 2021jan24-substitution_returns_a_match.pl6            24 Jan 2021 

use v6;

{
    my $str = 'old string';
    my $ret = $str ~~ s/o .+ d/new/;
    say $str;  # new string

    say $ret;  # ｢old｣

    dd $ret;
    # Match $ret = Match.new(:orig("old string"), :from(0), :pos(3))

    ## No information on what was substituted ("new")
}

{ # bruce gray variant: 
    say "---";
    my $str = 'old string';
    my $saved;
    my $ret = $str ~~ s/o .+ d/{$saved = 'new'}/;
    say $str;
    say $saved; 

}
