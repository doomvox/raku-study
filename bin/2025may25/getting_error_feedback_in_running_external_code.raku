#!/usr/bin/env raku
# 
# getting_error_feedback_in_running_external_code.raku            25 May 2025 

use v6;

## Bruce Gray:

# raku -e 'my $p = run "zzzz"; say $p'                   

## Bruce's output:
# Proc.new(in => IO::Pipe, out => IO::Pipe, err => IO::Pipe, os-error => "Failed to spawn process zzzz: no such file or directory (error code -2)", exitcode => -1, signal => 254, pid => Nil, command => ("zzzz",))


## Using an older version:

# Welcome to Rakudo™ v2023.02.
# Implementing the Raku® Programming Language v6.d.
# Built on MoarVM version 2023.02.

## My output:
# Proc.new(in => IO::Pipe, out => IO::Pipe, err => IO::Pipe, exitcode => 1, signal => 0, pid => Nil, command => ("zzzz",))

my $p = run "nuttin";
say $p;
# Proc.new(in => IO::Pipe, out => IO::Pipe, err => IO::Pipe, exitcode => 1, signal => 0, pid => Nil, command => ("nuttin",))

say $p.err;
# (Pipe)


## running with "raku_gh" (build from github code):
# Proc.new(in => IO::Pipe, out => IO::Pipe, err => IO::Pipe, os-error => "Failed to spawn process nuttin: no such file or directory (error code -2)", exitcode => -1, signal => 254, pid => Nil, command => ("nuttin",))
# (Pipe)


say $p.os-error;
# Failed to spawn process nuttin: no such file or directory (error code -2)

