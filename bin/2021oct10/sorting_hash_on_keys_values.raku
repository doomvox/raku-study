#!/usr/bin/env perl6
# 
# sorting_hash_on_keys_values.raku            10 Oct 2021 

use v6;


my %hash =
   (
     two   => 2,
     three => 3,
     one   => 1,
   );

dd %hash;  # Hash %hash = {:one(1), :three(3), :two(2)}

say %hash.kv;   # (two 2 three 3 one 1)
say %hash.keys; # (two three one)

for %hash.kv -> $key, $value {
#     say "$key:   $value";
     say $key, ' ', $value;  
}

# three 3
# two 2
# one 1


my @monsters = <godzilla golem blob>;
my @heros  =   <ultraman inframan larrywall>;

for @monsters -> $s {
    say $s;
}
# godzilla
# golem
# blob

for @monsters, @heros -> $s {
    dd $s;
}
# $["godzilla", "golem", "blob"]
# $["ultraman", "inframan", "larrywall"]


# ## from so
# for %hash.sort(*.key)>>.kv -> ($key, $value) {
#     say "'$key' => '$value'";
# }

# # 'one' => '1'
# # 'three' => '3'
# # 'two' => '2'

# for %hash.sort(*.key).kv -> $key, $value {
#     say "'$key' => '$value'";
# }
# # '0' => 'one	1'
# # '1' => 'three	3'
# # '2' => 'two	2'

# say "XXX---";
# for %hash.sort(*.keys)>>.kv -> $key, $value {
#     say "'$key' => '$value'";
# }
# # '0' => 'one	1'
# # '1' => 'three	3'
# # '2' => 'two	2'

# for %hash.kv -> $key, $value {
#     say "'$key' => '$value'";
# }
# # 'two' => '2'
# # 'one' => '1'
# # 'three' => '3'

# # for %hash.sort -> $p {
# #     say "'$p.keys' => '$p.values'";
# # }

say "===";
for %hash.sort(*.key)>>.kv -> ($key, $value) {
    say "'$key' => '$value'";
}
# 'one' => '1'
# 'three' => '3'
# 'two' => '2'

say "---";
say %hash.sort({.key})>>.kv;
# ((one 1) (three 3) (two 2))

say "---";
.say for %hash.sort({.key})>>.kv;
# (one 1)
# (three 3)
# (two 2)

dd %hash.sort({.key})>>.kv;
# (("one", 1).Seq, ("three", 3).Seq, ("two", 2).Seq)

my @stuff = %hash.sort({.key})>>.kv;

dd $_;  # Any $_ = Any

say @stuff.map({ $_[0] }); # (one three two)

@stuff.map({ say "'$_[0]' => '$_[1]'" });
# 'one' => '1'
# 'three' => '3'
# 'two' => '2'




# .map{ "$_[0], $_[1]" }.say for %hash.sort({.key})>>.kv;

# ===
# Author:  doom@kzsu.stanford.edu

