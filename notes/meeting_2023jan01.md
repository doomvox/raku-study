- [meeting notes January 01, 2023](#orgd2a052f)
  - [the raku study group](#org4b38565)
  - [topics](#org1863e60)
    - [happy 2023 and all](#org3f1c83b)
    - [william michels style question](#org11f8d3b)
    - [discussion topic: business models for independent programmers](#org13baf3b)
    - [rob question about reorg of docs](#org8bcbd3b)
    - [marton polgar brings up an example of forums/events](#org81c2264)
    - [web site to play with raku snippets interactively](#orgc82825f)
    - [weekly challenge](#orga4f6f9a)
    - [deepmap bug](#org3bedf6d)
  - [announcements](#orgdbef20b)
    - [next meeting: January 15th](#orga564e39)
    - [vadim is doing a zoom class, Jan 7, 2023 (I presume it's in 2023):](#org759f172)


<a id="orgd2a052f"></a>

# meeting notes January 01, 2023


<a id="org4b38565"></a>

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


<a id="org1863e60"></a>

## topics


<a id="org3f1c83b"></a>

### happy 2023 and all

1.  so, how well does a New Year's Day meeting work, any way?


<a id="org11f8d3b"></a>

### william michels style question

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2023/01/msg10904.html>

2.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10891.html>

3.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10890.html>

    1.  <https://en.wikipedia.org/wiki/The_Magical_Number_Seven,_Plus_or_Minus_Two>


<a id="org13baf3b"></a>

### discussion topic: business models for independent programmers

1.  dpchrist: "I have a discussion question&#x2013; what business model works best independent Perl [developer]?"

    1.  my thought: what did cPanel do?
    
    2.  bg: contract work, company does custom websites focused on company's business model
    
        1.  multiclient business, clients don't care about internals

2.  debian packages for rakudo, okay versions?

    1.  they're okay, I'd suggest starting with rakudo star:
    
        1.  <https://rakudo.org/star>


<a id="org8bcbd3b"></a>

### rob question about reorg of docs

1.  

    <https://github.com/Raku/doc/pull/4174>


<a id="org81c2264"></a>

### marton polgar brings up an example of forums/events

1.  <https://github.com/2colours/Raku-ideas/blob/main/Squashathon%20reborn.md>

2.  irclogs.raku.org/


<a id="orgc82825f"></a>

### web site to play with raku snippets interactively

1.  <https://glot.io/new/raku>


<a id="orga4f6f9a"></a>

### weekly challenge

1.  196, 197

    1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-196>
    
    2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-197>
    
        1.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-197/0rir/raku/ch-1.raku>
        
        2.  <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-197/challenge-197/bruce-gray/raku/ch-1.raku>
        
        3.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-197/0rir/raku/ch-2.raku>
        
        4.  <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-197/challenge-197/bruce-gray/raku/ch-2.raku>


<a id="org3bedf6d"></a>

### deepmap bug

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  simple question: where is deepmap defined?

    find . -type f -name "\*.pm6" | xargs egrep deepmap ./src/core.c/Slip.pm6: multi method deepmap(Slip:D: &) { ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? obj.nodemap(&op) !! obj.deepmap(&op) ./src/core.c/metaops.pm6: !! obj.deepmap(-> \o { op(o, @args) }) ./src/core.c/metaops.pm6: !! obj.deepmap( -> \o { op(o,|args) }) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: list.deepmap(-> &code { code(|args) }) ./src/core.c/Hyper.pm6: !! object.deepmap($!operator) ./src/core.c/Any-iterable-methods.pm6: proto method deepmap(|) is nodal {\*} ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(Associative:D: &op) { ./src/core.c/Any-iterable-methods.pm6: self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(&op) { ./src/core.c/Any-iterable-methods.pm6: sub deep(\value) is raw { my $ = value.deepmap(&op) } ./src/core.c/Any-iterable-methods.pm6:proto sub deepmap($, $, **%) {**} ./src/core.c/Any-iterable-methods.pm6:multi sub deepmap(&op, \obj) { obj.deepmap(&op) } ./src/core.c/Baggy.pm6: multi method deepmap(Baggy:D: &mapper) { ./src/core.c/Mixy.pm6: multi method deepmap(Mixy:D: &mapper) { ./src/core.c/Setty.pm6: multi method deepmap(Setty:D: &mapper) {

3.  start here, I think:

    1.  ./src/core.c/Any-iterable-methods.pm6
    
    2.  /home/doom/End/Cave/Raku/Wall/rakudo/src/core.c/Any-iterable-methods.pm6


<a id="orgdbef20b"></a>

## announcements


<a id="orga564e39"></a>

### next meeting: January 15th


<a id="org759f172"></a>

### vadim is doing a zoom class, Jan 7, 2023 (I presume it's in 2023):

<https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10896.html>
