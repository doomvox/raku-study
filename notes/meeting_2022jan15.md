- [meeting notes January 15, 2023](#org1f7cd52)
  - [the raku study group](#orgb7b47ee)
  - [topics](#org210c886)
    - [dpchrist: bug with perl on debian](#orgfe03644)
    - [rob: $/ in nqp](#org872aee0)
    - [rob: weekly challenge](#orgd7c8b22)
    - [vadim zoom class: Jan 7, 2023 (I presume it's in 2023):](#org397fe60)
    - [deepmap bug](#orge35f878)
  - [announcements](#orga448853)
    - [next meeting: January 29th](#org13e13de)


<a id="org1f7cd52"></a>

# meeting notes January 15, 2023


<a id="orgb7b47ee"></a>

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


<a id="org210c886"></a>

## topics


<a id="orgfe03644"></a>

### dpchrist: bug with perl on debian


<a id="org872aee0"></a>

### rob: $/ in nqp


<a id="orgd7c8b22"></a>

### rob: weekly challenge


<a id="org397fe60"></a>

### vadim zoom class: Jan 7, 2023 (I presume it's in 2023):

<https://www.nntp.perl.org/group/perl.perl6.users/2022/12/msg10896.html>


<a id="orge35f878"></a>

### deepmap bug

1.  <https://github.com/rakudo/rakudo/issues/4435>

2.  simple question: where is deepmap defined?

    find . -type f -name "\*.pm6" | xargs egrep deepmap ./src/core.c/Slip.pm6: multi method deepmap(Slip:D: &) { ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? obj.nodemap(&op) !! obj.deepmap(&op) ./src/core.c/metaops.pm6: !! obj.deepmap(-> \o { op(o, @args) }) ./src/core.c/metaops.pm6: !! obj.deepmap( -> \o { op(o,|args) }) ./src/core.c/metaops.pm6: nqp::can(&op,"nodal") ?? \*.nodemap(&op) !! \*.deepmap(&op) ./src/core.c/metaops.pm6: list.deepmap(-> &code { code(|args) }) ./src/core.c/Hyper.pm6: !! object.deepmap($!operator) ./src/core.c/Any-iterable-methods.pm6: proto method deepmap(|) is nodal {\*} ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(Associative:D: &op) { ./src/core.c/Any-iterable-methods.pm6: self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE ./src/core.c/Any-iterable-methods.pm6: multi method deepmap(&op) { ./src/core.c/Any-iterable-methods.pm6: sub deep(\value) is raw { my $ = value.deepmap(&op) } ./src/core.c/Any-iterable-methods.pm6:proto sub deepmap($, $, **%) {**} ./src/core.c/Any-iterable-methods.pm6:multi sub deepmap(&op, \obj) { obj.deepmap(&op) } ./src/core.c/Baggy.pm6: multi method deepmap(Baggy:D: &mapper) { ./src/core.c/Mixy.pm6: multi method deepmap(Mixy:D: &mapper) { ./src/core.c/Setty.pm6: multi method deepmap(Setty:D: &mapper) {

3.  start here, I think:

    1.  ./src/core.c/Any-iterable-methods.pm6
    
    2.  /home/doom/End/Cave/Raku/Wall/rakudo/src/core.c/Any-iterable-methods.pm6

4.  Marton: Corehackers::Sourcery for looking up definitions in core code.


<a id="orga448853"></a>

## announcements


<a id="org13e13de"></a>

### next meeting: January 29th
