#!/usr/bin/env perl6
# 
# leland_numbers_inventing_new_operators.pl6            11 Oct 2020 
use v6;

# Bruce Gray reminds about the ease of creating new operators 
# on-th-fly in raku-- a feature I've seen but never played with before:

# From a Bruce Gray post to perl6-users:
#  https://www.nntp.perl.org/group/perl.perl6.users/2020/10/msg9278.html

# We can create our own operator, to further separate the Cross from the Op:
{
    multi infix:<⨁> ($a, $b) {
        $a ** $b
        + $b ** $a
    };
    say 2 ⨁ 3;
    say 2..4 X⨁ 2..4;
    #                17
    #                (8 17 32 17 54 145 32 145 512)

    say 2 ⨁ 2;  # 8
    say 2 ⨁ 3;  # 17
    say 2 ⨁ 4;  # 32
}

# The `X` itself is the operator-form of the `cross` routine, well-documented here:
#         https://docs.raku.org/routine/cross
#         https://docs.raku.org/language/operators#index-entry-X_(cross_metaoperator)
#         https://docs.raku.org/language/operators#index-entry-cross_product_operator

## I got interested in the idea of an operator that spys on what you're doing with
## it, with debug prints from inside it.

## The first step, though, I wanted to try an operator using a named routine.
## This was simple enough:

sub leylandesque {
    my $tmp1 = $^a ** $^b;
    say $a; # 2 
    # $a = 23;  # Cannot assign to a readonly variable or a value
    say $b; # 3 
    my $tmp2 = $b ** $a;
    my $r = $tmp1 + $tmp2;
}

say "---";
say leylandesque(2,3);  # 17
say "~~~";

# U+3333
# ㌳
sub infix:<㌳> ($a, $b) {
         my $r = leylandesque( $a, $b );
         return $r;
        };

say 3 ㌳ 4;  # 145


## now, implementing an operator with "spy" features:
# U+4444
# 䑄

multi infix:<䑄> ($a, $b) {
    say "adding a: $a and b: $b";  # adding a: 5 and b: 6
    my $sum = $a + $b;
    say "sum: $sum";  # sum: 11
    return $sum;
}

my $result =  5 䑄 6;
say "result: $result";  # result: 11

say "^^^";

my @a = (1, 2, 3);
my @b = (4, 5, 6);

say @a [䑄] @b;  # adding a: 1 2 3 and b: 4 5 6
                 # sum: 6
                 # 6
say @a [+] @b;  # 6  duh, putting arrays in scalar context, getting counts

say @a X+ @b;  #  # (5 6 7 6 7 8 7 8 9)

say @a X䑄 @b;  #  
# adding a: 1 and b: 4
# sum: 5
# adding a: 1 and b: 5
# sum: 6
# adding a: 1 and b: 6
# sum: 7
# adding a: 2 and b: 4
# sum: 6
# adding a: 2 and b: 5
# sum: 7
# adding a: 2 and b: 6
# sum: 8
# adding a: 3 and b: 4
# sum: 7
# adding a: 3 and b: 5
# sum: 8
# adding a: 3 and b: 6
# sum: 9
# (5 6 7 6 7 8 7 8 9)

say "===";

say @a >>䑄<< @b;  # custom summation, run with hyper op

# adding a: 1 and b: 4
# sum: 5
# adding a: 2 and b: 5
# sum: 7
# adding a: 3 and b: 6
# sum: 9
# [5 7 9]

## Q: how do you do a "hyper" without using the syntax:  >> <<
## Is there a function analog to >> <<  ?
## So instead of:
##   say @a >>䑄<< @b; 

# say hyper @a 䑄 @b;  
# No such method 'hyper' for invocant of type 'Int'

# say  (@a 䑄 @b).hyper;  
# No such method 'hyper' for invocant of type 'Int'

# say hyper({@a 䑄 @b});  
#     hyper used at line 120. Did you mean 'HYPER'?

# say HYPER({@a 䑄 @b});  
# Cannot resolve caller infix(Hyper:D: ); none of these signatures match:

# say @a {䑄}.hyper @b;
# Unexpected block in infix position (missing statement control word before the expression?)



# b.g. hint:
# .say for hyper map &infix:<...>, @a Z @b; 

# .say for hyper map &infix:<䑄>, @a Z @b; 

# Calling infix:<䑄>(Int, Int) will never work with any of these multi signatures:
#     ($ (Any $a, Any $b))

# .say for hyper map &infix:<䑄>, (@a Z @b); 

# Calling infix:<䑄>(Int, Int) will never work with any of these multi signatures:
#     ($ (Any $a, Any $b))

say "---";

say hyper map -> ($a, $b) { 
    say "adding a: $a and b: $b";  # adding a: 5 and b: 6
    my $sum = $a + $b;
    say "sum: $sum";  # sum: 11
# 'Tis bad to say 'return' inside a map:
#    return $sum; # "A worker in a parallel iteration (hyper or race) initiated here"
    $sum;  
 }, (@a Z @b); 

## (5 7 9)

say "~~~";
say hyper map -> ($a, $b) { 
    $a 䑄 $b;
 }, (@a Z @b); 
## (5 7 9)

say "~~~";
say race map -> ($a, $b) { 
    $a 䑄 $b;
 }, (@a Z @b); 

# adding a: 1 and b: 4
# sum: 5
# adding a: 2 and b: 5
# sum: 7
# adding a: 3 and b: 6
# sum: 9
# (5 7 9)

## So: using this construct either hyper or race works,
## though with no obvious difference in behavior.

##   https://docs.raku.org/language/statement-prefixes#hyper,_race


## Note:
## I like us $nx4 unicode codepoints: easy to type via C-x 8 <ret>
# U+1111
# ᄑ
# U+2222
# ∢
# ...
# U+5555
# 啕
# U+6666
# 晦
# U+7777
# 睷
# U+8888
# 袈
# U+9999
# 香
# U+AAAA
# ꪪ
# U+BBBB
# 뮻
# U+CCCC
# 쳌
# U+DDDD
# ���
# U+EEEE
# 
# U+FFFF
# ￿
# U+1FFFF
# 🿿
