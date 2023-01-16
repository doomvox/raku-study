- [meeting notes January 15, 2023](#org1b0c606)
  - [the raku study group](#org39cf573)
  - [topics](#orgb1fdee3)
    - [dpchrist: bug with perl on debian](#org4b6b55e)
    - [rob: $/ in nqp](#orgf6a5c96)
    - [rob: weekly challenge](#org45f24ba)
    - [weekly challenge](#org27cb698)
    - [vadim zoom class: Jan 7, 2023 (I presume it's in 2023):](#org7485223)
    - [deepmap bug](#orga1ac792)
  - [announcements](#org1b71716)
    - [next meeting: January 29th](#org80652bd)


<a id="org1b0c606"></a>

# meeting notes January 15, 2023


<a id="org39cf573"></a>

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


<a id="orgb1fdee3"></a>

## topics


<a id="org4b6b55e"></a>

### dpchrist: bug with perl on debian

1.  <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1028275>

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2023jan15/dpchrist-perls_system_has_problems_on_dash_machines_like_debian.t>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023jan15/dpchrist-perls<sub>system</sub><sub>has</sub><sub>problems</sub><sub>on</sub><sub>dash</sub><sub>machines</sub><sub>like</sub><sub>debian.t</sub>

2.  debian based systems have sh aliased to dash

    1.  <https://wiki.archlinux.org/title/Dash>
    
    2.  <https://en.wikipedia.org/wiki/Almquist_shell>


<a id="orgf6a5c96"></a>

### rob: $/ in nqp


<a id="org45f24ba"></a>

### rob: weekly challenge


<a id="org27cb698"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-199/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-198/>


<a id="org7485223"></a>

### vadim zoom class: Jan 7, 2023 (I presume it's in 2023):

<https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10896.html>


<a id="orga1ac792"></a>

### deepmap bug

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  simple question: where is deepmap defined?

    find . -type f -name "\*.pm6" | xargs egrep deepmap ./src/core.c/Slip.pm6: multi method deepmap(Slip:D: &) { ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? obj.nodemap(&op) !! obj.deepmap(&op) ./src/core.c/metaops.pm6: !! obj.deepmap(-> \o { op(o, @args) }) ./src/core.c/metaops.pm6: !! obj.deepmap( -> \o { op(o,|args) }) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: list.deepmap(-> &code { code(|args) }) ./src/core.c/Hyper.pm6: !! object.deepmap($!operator) ./src/core.c/Any-iterable-methods.pm6: proto method deepmap(|) is nodal {\*} ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(Associative:D: &op) { ./src/core.c/Any-iterable-methods.pm6: self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(&op) { ./src/core.c/Any-iterable-methods.pm6: sub deep(\value) is raw { my $ = value.deepmap(&op) } ./src/core.c/Any-iterable-methods.pm6:proto sub deepmap($, $, **%) {**} ./src/core.c/Any-iterable-methods.pm6:multi sub deepmap(&op, \obj) { obj.deepmap(&op) } ./src/core.c/Baggy.pm6: multi method deepmap(Baggy:D: &mapper) { ./src/core.c/Mixy.pm6: multi method deepmap(Mixy:D: &mapper) { ./src/core.c/Setty.pm6: multi method deepmap(Setty:D: &mapper) {

3.  start here, I think:

    1.  ./src/core.c/Any-iterable-methods.pm6
    
    2.  /home/doom/End/Cave/Raku/Wall/rakudo/src/core.c/Any-iterable-methods.pm6

4.  Marton: CoreHackers::Sourcery for looking up definitions in core code.


<a id="org1b71716"></a>

## announcements


<a id="org80652bd"></a>

### next meeting: January 29th
