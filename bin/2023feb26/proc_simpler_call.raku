#!/usr/bin/env raku
# 
# proc_simpler_call.raku            26 Feb 2023 

use v6;


my $git = run 'git', 'log', '--oneline', :out;
for $git.out.lines -> $line {
    my ($sha, $subject) = $line.split: ' ', 2;
    say "$subject [$sha]";
}
$git.out.close();
