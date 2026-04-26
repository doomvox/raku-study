#!/usr/bin/raku

my @monsters = <<godzilla rhodan blob tingler crinoid>>;
my %threat  = ('godilla' => 8, 'rhodan' => 3, 'blob' => 5, 'tingler' => 4, 'crinoid' => 6);

multi hat ( Array $arg ) {
    say "An Array";
    dd $arg;
    }

multi hat ( Hash $arg ) {
    say "A Hash";
    dd $arg;
    }

hat(@monsters);
