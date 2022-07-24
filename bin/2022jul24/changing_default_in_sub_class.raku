#!/usr/bin/env perl6
# 
# changing_default_in_sub_class.raku            24 Jul 2022 

# https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class

use v6;

class Foo {
    has $.name;

    submethod BUILD (:$!name = 'John') {};
}
my $f = Foo.new;
say $f;
# OUTPUT: Foo.new(name => "John")

# # That works as expected. When I add:
# class Bar is Foo {
#     submethod BUILD  (:$!name = 'Jane') {};
# }


## Error
## Attribute $!name not declared in class Bar


class Bar is Foo {
    has $name;
    submethod TWEAK (:$!name = 'Jane') {};
}


my $b = Bar.new;
say $b;
