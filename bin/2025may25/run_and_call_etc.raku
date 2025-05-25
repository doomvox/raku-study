#!/usr/bin/env raku
# 
# run_and_call_etc.raku            25 May 2025 

use v6;




# external commands without shell:
my $arg = 'Hello';
{
    my $captured = run('echo', $arg, :out).out.slurp;
    say $captured;
}
{
    my $captured = run(«echo "$arg"», :out).out.slurp;
    say $captured;
}

# using shell:
{
    my $captured = shell("echo $arg", :out).out.slurp;
    say $captured;
}
{
    my $captured = qqx{echo $arg};
    say $captured;
}


