- [meeting notes January 15, 2023](#orga05bc94)
  - [the raku study group](#org7c81a79)
  - [topics](#org45d5243)
    - [dpchrist: bug with perl on debian](#org61e6e57)
    - [rob: $/ in nqp](#orgd5be9d6)
    - [rob: weekly challenge](#org2b10d09)
    - [weekly challenge](#org5dec2aa)
    - [vadim zoom class: Jan 7, 2023 (I presume it's in 2023):](#org46715f6)
    - [deepmap bug](#orge88abba)
  - [announcements](#orgdeb434e)
    - [next meeting: January 29th](#org3ab8bd3)


<a id="orga05bc94"></a>

# meeting notes January 15, 2023


<a id="org7c81a79"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023jan15.md>
        
        2.  source file (for corrections, etc)
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023jan15.org>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2023jan15>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jan01.md>


<a id="org45d5243"></a>

## topics


<a id="org61e6e57"></a>

### dpchrist: bug with perl on debian

1.  <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1028275>

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2023jan15/dpchrist-perls_system_has_problems_on_dash_machines_like_debian.t>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023jan15/dpchrist-perls<sub>system</sub><sub>has</sub><sub>problems</sub><sub>on</sub><sub>dash</sub><sub>machines</sub><sub>like</sub><sub>debian.t</sub>

2.  debian based systems have sh aliased to dash

    1.  <https://wiki.archlinux.org/title/Dash>
    
    2.  <https://en.wikipedia.org/wiki/Almquist_shell>


<a id="orgd5be9d6"></a>

### rob: $/ in nqp


<a id="org2b10d09"></a>

### rob: weekly challenge


<a id="org5dec2aa"></a>

### weekly challenge

1.  196, 197

    1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-196>
    
    2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-197>


<a id="org46715f6"></a>

### vadim zoom class: Jan 7, 2023 (I presume it's in 2023):

<https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10896.html>


<a id="orge88abba"></a>

### deepmap bug

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  simple question: where is deepmap defined?

    find . -type f -name "\*.pm6" | xargs egrep deepmap ./src/core.c/Slip.pm6: multi method deepmap(Slip:D: &) { ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? obj.nodemap(&op) !! obj.deepmap(&op) ./src/core.c/metaops.pm6: !! obj.deepmap(-> \o { op(o, @args) }) ./src/core.c/metaops.pm6: !! obj.deepmap( -> \o { op(o,|args) }) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: list.deepmap(-> &code { code(|args) }) ./src/core.c/Hyper.pm6: !! object.deepmap($!operator) ./src/core.c/Any-iterable-methods.pm6: proto method deepmap(|) is nodal {\*} ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(Associative:D: &op) { ./src/core.c/Any-iterable-methods.pm6: self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(&op) { ./src/core.c/Any-iterable-methods.pm6: sub deep(\value) is raw { my $ = value.deepmap(&op) } ./src/core.c/Any-iterable-methods.pm6:proto sub deepmap($, $, **%) {**} ./src/core.c/Any-iterable-methods.pm6:multi sub deepmap(&op, \obj) { obj.deepmap(&op) } ./src/core.c/Baggy.pm6: multi method deepmap(Baggy:D: &mapper) { ./src/core.c/Mixy.pm6: multi method deepmap(Mixy:D: &mapper) { ./src/core.c/Setty.pm6: multi method deepmap(Setty:D: &mapper) {

3.  start here, I think:

    1.  ./src/core.c/Any-iterable-methods.pm6
    
    2.  /home/doom/End/Cave/Raku/Wall/rakudo/src/core.c/Any-iterable-methods.pm6

4.  Marton: CoreHackers::Sourcery for looking up definitions in core code.


<a id="orgdeb434e"></a>

## announcements


<a id="org3ab8bd3"></a>

### next meeting: January 29th
