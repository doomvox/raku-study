- [meeting notes January 01, 2023](#org8812e4d)
  - [the raku study group](#orgaaca51e)
  - [topics](#orgf0038db)
    - [happy 2023 and all](#org8e5b77c)
    - [william michels style question](#orge9675b5)
    - [discussion topic: business models for independent programmers](#org21babcc)
    - [rob question about reorg of docs](#orgc8c9821)
    - [marton polgar brings up an example of forums/events](#org14dff83)
    - [web site to play with raku snippets interactively](#org718bd18)
    - [weekly challenge](#org36c095b)
    - [deepmap bug](#org063c981)
  - [announcements](#org147b2ad)
    - [next meeting: January 15th](#orgd3e704b)
    - [vadim is doing a zoom class, Jan 7, 2023 (I presume it's in 2023):](#org5e9d6a7)


<a id="org8812e4d"></a>

# meeting notes January 01, 2023


<a id="orgaaca51e"></a>

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


<a id="orgf0038db"></a>

## topics


<a id="org8e5b77c"></a>

### happy 2023 and all

1.  so, how well does a New Year's Day meeting work, any way?


<a id="orge9675b5"></a>

### william michels style question

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2023/01/msg10904.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10891.html>

3.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10890.html>

    1.  <https://en.wikipedia.org/wiki/The_Magical_Number_Seven,_Plus_or_Minus_Two>


<a id="org21babcc"></a>

### discussion topic: business models for independent programmers

1.  dpchrist: "I have a discussion question&#x2013; what business model works best independent Perl [developer]?"

    1.  my thought: what did cPanel do?
    
    2.  bg: contract work, company does custom websites focused on company's business model
    
        1.  multiclient business, clients don't care about internals

2.  debian packages for rakudo, okay versions?

    1.  they're okay, I'd suggest starting with rakudo star:
    
        1.  <https://rakudo.org/star>


<a id="orgc8c9821"></a>

### rob question about reorg of docs

1.  

    <https://github.com/Raku/doc/pull/4174>


<a id="org14dff83"></a>

### marton polgar brings up an example of forums/events

1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>

2.  irclogs.raku.org/


<a id="org718bd18"></a>

### web site to play with raku snippets interactively

1.  <https://glot.io/new/raku>


<a id="org36c095b"></a>

### weekly challenge

1.  196, 197

    1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-196>
    
    2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-197>


<a id="org063c981"></a>

### deepmap bug

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  simple question: where is deepmap defined?

    find . -type f -name "\*.pm6" | xargs egrep deepmap ./src/core.c/Slip.pm6: multi method deepmap(Slip:D: &) { ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? obj.nodemap(&op) !! obj.deepmap(&op) ./src/core.c/metaops.pm6: !! obj.deepmap(-> \o { op(o, @args) }) ./src/core.c/metaops.pm6: !! obj.deepmap( -> \o { op(o,|args) }) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: list.deepmap(-> &code { code(|args) }) ./src/core.c/Hyper.pm6: !! object.deepmap($!operator) ./src/core.c/Any-iterable-methods.pm6: proto method deepmap(|) is nodal {\*} ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(Associative:D: &op) { ./src/core.c/Any-iterable-methods.pm6: self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(&op) { ./src/core.c/Any-iterable-methods.pm6: sub deep(\value) is raw { my $ = value.deepmap(&op) } ./src/core.c/Any-iterable-methods.pm6:proto sub deepmap($, $, **%) {**} ./src/core.c/Any-iterable-methods.pm6:multi sub deepmap(&op, \obj) { obj.deepmap(&op) } ./src/core.c/Baggy.pm6: multi method deepmap(Baggy:D: &mapper) { ./src/core.c/Mixy.pm6: multi method deepmap(Mixy:D: &mapper) { ./src/core.c/Setty.pm6: multi method deepmap(Setty:D: &mapper) {


<a id="org147b2ad"></a>

## announcements


<a id="orgd3e704b"></a>

### next meeting: January 15th


<a id="org5e9d6a7"></a>

### vadim is doing a zoom class, Jan 7, 2023 (I presume it's in 2023):

<https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10896.html>
