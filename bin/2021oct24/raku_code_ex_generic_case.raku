#!/usr/bin/env perl6
# 
# raku_code_ex_generic_case.raku            24 Oct 2021 

use v6;

sub foo {
  ...
}
sub bar {
    ....
}

my $thingie = foo + bar;

my $thingie = first_val + second_val;


## 

sub check {
  ...
}
sub retry {
    ....
}

my $thingie = check + retry:  


==

sub my_check_routine {
  ...
}
sub my_retry_routine {
    ....
}

my $thingie = my_check_routine + my_retry_routine;

# ===
# Author:  doom@kzsu.stanford.edu

