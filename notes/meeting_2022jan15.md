- [meeting notes January 15, 2023](#org1ced839)
  - [the raku study group](#orgb2a39d8)
  - [topics](#org9dcbfc2)
    - [dpchrist: bug with perl on debian](#orgf6b08df)
    - [rob: $/ in nqp](#orgc4e8018)
    - [rob: weekly challenge](#orga75bbf7)
    - [vadim zoom class: Jan 7, 2023 (I presume it's in 2023):](#orgdad5651)
    - [deepmap bug](#orgf3e4ef8)
  - [announcements](#org926cef6)
    - [next meeting: January 29th](#org66c7824)


<a id="org1ced839"></a>

# meeting notes January 15, 2023


<a id="orgb2a39d8"></a>

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


<a id="org9dcbfc2"></a>

## topics


<a id="orgf6b08df"></a>

### dpchrist: bug with perl on debian

1.  <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1028275>

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2023jan15/dpchrist-perls_system_has_problems_on_dash_machines_like_debian.t>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023jan15/dpchrist-perls<sub>system</sub><sub>has</sub><sub>problems</sub><sub>on</sub><sub>dash</sub><sub>machines</sub><sub>like</sub><sub>debian.t</sub>


<a id="orgc4e8018"></a>

### rob: $/ in nqp


<a id="orga75bbf7"></a>

### rob: weekly challenge


<a id="orgdad5651"></a>

### vadim zoom class: Jan 7, 2023 (I presume it's in 2023):

<https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10896.html>


<a id="orgf3e4ef8"></a>

### deepmap bug

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  simple question: where is deepmap defined?

    find . -type f -name "\*.pm6" | xargs egrep deepmap ./src/core.c/Slip.pm6: multi method deepmap(Slip:D: &) { ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? obj.nodemap(&op) !! obj.deepmap(&op) ./src/core.c/metaops.pm6: !! obj.deepmap(-> \o { op(o, @args) }) ./src/core.c/metaops.pm6: !! obj.deepmap( -> \o { op(o,|args) }) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: list.deepmap(-> &code { code(|args) }) ./src/core.c/Hyper.pm6: !! object.deepmap($!operator) ./src/core.c/Any-iterable-methods.pm6: proto method deepmap(|) is nodal {\*} ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(Associative:D: &op) { ./src/core.c/Any-iterable-methods.pm6: self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(&op) { ./src/core.c/Any-iterable-methods.pm6: sub deep(\value) is raw { my $ = value.deepmap(&op) } ./src/core.c/Any-iterable-methods.pm6:proto sub deepmap($, $, **%) {**} ./src/core.c/Any-iterable-methods.pm6:multi sub deepmap(&op, \obj) { obj.deepmap(&op) } ./src/core.c/Baggy.pm6: multi method deepmap(Baggy:D: &mapper) { ./src/core.c/Mixy.pm6: multi method deepmap(Mixy:D: &mapper) { ./src/core.c/Setty.pm6: multi method deepmap(Setty:D: &mapper) {

3.  start here, I think:

    1.  ./src/core.c/Any-iterable-methods.pm6
    
    2.  /home/doom/End/Cave/Raku/Wall/rakudo/src/core.c/Any-iterable-methods.pm6

4.  Marton: CoreHackers::Sourcery for looking up definitions in core code.


<a id="org926cef6"></a>

## announcements


<a id="org66c7824"></a>

### next meeting: January 29th
