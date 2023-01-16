- [meeting notes January 15, 2023](#org6e522b5)
  - [the raku study group](#org3ce28df)
  - [topics](#org1f93f0a)
    - [dpchrist: bug with perl on debian](#org03e5947)
    - [rob: $/ in nqp](#org416aaea)
    - [rob: weekly challenge](#orgd774dd5)
    - [weekly challenge](#org0b9b9d7)
    - [vadim zoom class: Jan 7, 2023 (I presume it's in 2023):](#org08846a6)
    - [deepmap bug](#org45f9940)
  - [announcements](#org019fced)
    - [next meeting: January 29th](#orgb891d27)
    - [look for vaddim's class on Saturday the 28th](#orga082253)


<a id="org6e522b5"></a>

# meeting notes January 15, 2023


<a id="org3ce28df"></a>

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


<a id="org1f93f0a"></a>

## topics


<a id="org03e5947"></a>

### dpchrist: bug with perl on debian

1.  <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1028275>

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2023jan15/dpchrist-perls_system_has_problems_on_dash_machines_like_debian.t>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023jan15/dpchrist-perls<sub>system</sub><sub>has</sub><sub>problems</sub><sub>on</sub><sub>dash</sub><sub>machines</sub><sub>like</sub><sub>debian.t</sub>

2.  debian based systems have sh aliased to dash

    1.  <https://wiki.archlinux.org/title/Dash>
    
    2.  <https://en.wikipedia.org/wiki/Almquist_shell>


<a id="org416aaea"></a>

### rob: $/ in nqp


<a id="orgd774dd5"></a>

### rob: weekly challenge


<a id="org0b9b9d7"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-199/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-198/>


<a id="org08846a6"></a>

### vadim zoom class: Jan 7, 2023 (I presume it's in 2023):

<https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10896.html>


<a id="org45f9940"></a>

### deepmap bug

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  simple question: where is deepmap defined?

    find . -type f -name "\*.pm6" | xargs egrep deepmap ./src/core.c/Slip.pm6: multi method deepmap(Slip:D: &) { ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? obj.nodemap(&op) !! obj.deepmap(&op) ./src/core.c/metaops.pm6: !! obj.deepmap(-> \o { op(o, @args) }) ./src/core.c/metaops.pm6: !! obj.deepmap( -> \o { op(o,|args) }) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: list.deepmap(-> &code { code(|args) }) ./src/core.c/Hyper.pm6: !! object.deepmap($!operator) ./src/core.c/Any-iterable-methods.pm6: proto method deepmap(|) is nodal {\*} ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(Associative:D: &op) { ./src/core.c/Any-iterable-methods.pm6: self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(&op) { ./src/core.c/Any-iterable-methods.pm6: sub deep(\value) is raw { my $ = value.deepmap(&op) } ./src/core.c/Any-iterable-methods.pm6:proto sub deepmap($, $, **%) {**} ./src/core.c/Any-iterable-methods.pm6:multi sub deepmap(&op, \obj) { obj.deepmap(&op) } ./src/core.c/Baggy.pm6: multi method deepmap(Baggy:D: &mapper) { ./src/core.c/Mixy.pm6: multi method deepmap(Mixy:D: &mapper) { ./src/core.c/Setty.pm6: multi method deepmap(Setty:D: &mapper) {

3.  start here, I think:

    1.  ./src/core.c/Any-iterable-methods.pm6
    
    2.  /home/doom/End/Cave/Raku/Wall/rakudo/src/core.c/Any-iterable-methods.pm6

4.  Marton: CoreHackers::Sourcery for looking up definitions in core code.


<a id="org019fced"></a>

## announcements


<a id="orgb891d27"></a>

### next meeting: January 29th


<a id="orga082253"></a>

### look for vaddim's class on Saturday the 28th
