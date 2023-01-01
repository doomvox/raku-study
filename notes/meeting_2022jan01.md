- [meeting notes January 01, 2023](#org821ef57)
  - [the raku study group](#orgaca86ac)
  - [topics](#org1efcd65)
    - [happy 2023 and all](#org7e44b2b)
    - [william michels style question](#org96ffa53)
    - [discussion topic: business models for independent programmers](#orge7827a3)
    - [rob question about reorg of docs](#org85c04cf)
    - [weekly challenge](#org901b61e)
    - [deepmap bug](#org64d8e6c)
  - [announcements](#org4214f7b)
    - [next meeting: January 15th](#org4a983b7)
    - [vadim is doing a zoom class, Jan 7, 2023 (I presume it's in 2023):](#orgc01febd)


<a id="org821ef57"></a>

# meeting notes January 01, 2023


<a id="orgaca86ac"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023jan01.md>
        
        2.  source file (for corrections, etc)
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023jan01.org>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2023jan01>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022dec18.md>


<a id="org1efcd65"></a>

## topics


<a id="org7e44b2b"></a>

### happy 2023 and all

1.  so, how well does a New Year's Day meeting work, any way?


<a id="org96ffa53"></a>

### william michels style question

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2023/01/msg10904.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10891.html>

3.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10890.html>

    1.  <https://en.wikipedia.org/wiki/The_Magical_Number_Seven,_Plus_or_Minus_Two>


<a id="orge7827a3"></a>

### discussion topic: business models for independent programmers

1.  dpchrist: "I have a discussion question&#x2013; what business model works best independent Perl [developer]?"

    1.  my thought: what would cPanel do?

2.  debian packages for rakudo (?)


<a id="org85c04cf"></a>

### rob question about reorg of docs

1.  

    <https://github.com/Raku/doc/pull/4174>


<a id="org901b61e"></a>

### weekly challenge

1.  196, 197

    1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-196>
    
    2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-197>


<a id="org64d8e6c"></a>

### deepmap bug

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  simple question: where is deepmap defined?

    find . -type f -name "\*.pm6" | xargs egrep deepmap ./src/core.c/Slip.pm6: multi method deepmap(Slip:D: &) { ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? obj.nodemap(&op) !! obj.deepmap(&op) ./src/core.c/metaops.pm6: !! obj.deepmap(-> \o { op(o, @args) }) ./src/core.c/metaops.pm6: !! obj.deepmap( -> \o { op(o,|args) }) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: list.deepmap(-> &code { code(|args) }) ./src/core.c/Hyper.pm6: !! object.deepmap($!operator) ./src/core.c/Any-iterable-methods.pm6: proto method deepmap(|) is nodal {\*} ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(Associative:D: &op) { ./src/core.c/Any-iterable-methods.pm6: self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(&op) { ./src/core.c/Any-iterable-methods.pm6: sub deep(\value) is raw { my $ = value.deepmap(&op) } ./src/core.c/Any-iterable-methods.pm6:proto sub deepmap($, $, **%) {**} ./src/core.c/Any-iterable-methods.pm6:multi sub deepmap(&op, \obj) { obj.deepmap(&op) } ./src/core.c/Baggy.pm6: multi method deepmap(Baggy:D: &mapper) { ./src/core.c/Mixy.pm6: multi method deepmap(Mixy:D: &mapper) { ./src/core.c/Setty.pm6: multi method deepmap(Setty:D: &mapper) {


<a id="org4214f7b"></a>

## announcements


<a id="org4a983b7"></a>

### next meeting: January 15th


<a id="orgc01febd"></a>

### vadim is doing a zoom class, Jan 7, 2023 (I presume it's in 2023):

<https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10896.html>
