- [meeting notes Feb 21, 2021](#org88ae922)
  - [agenda](#orgf6d5ab2)
    - [richard hainsworth will present his work on pod6 processing](#orgd94c70d)
  - [announcements](#org420b53c)
  - [topics](#org4d5572e)
    - [combined operator assignment shortcuts (e.g. ~=)](#org04b045d)
    - [^methods oddities](#org96283f2)
    - [lizmat fosdem talk on sets etc](#org30b793a)
    - [project: write variants of set operations:](#org53a66d7)
    - [andrew shitov "Perl 6 at a Glance"](#orge70a69b)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org1459d6d)
  - [steven<sub>lebark</sub>](#org8c3101f)
    - [<https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>](#org606045f)
    - [<https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>](#org38451a1)
  - [Bill Michels contributes some news of rust:](#org4a4cc9e)
    - [<https://www.theregister.com/2021/02/02/patching_apache_rust/>](#org7eb4658)
  - [perl weekly challenge:](#orgd36ce05)
    - [<https://perlweeklychallenge.org/>](#orga0b03dd)
  - [graphviz is used for raku docs](#org8b2bd0c)
    - [<https://graphviz.org/>](#org93bc3bb)
    - [usually run via "dot"](#org15bf4a9)
    - [Scimon Proctor: Here's the Graph for Any.](#org7dc4708)
    - [Bruce Gray example of using GraphViz:](#org51190ee)
    - [javascript tools to plot graphs of large datasets](#org19a26fe)
    - [Three types of "slurpy" parameters (/home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>)](#orgcf4dd61)


<a id="org88ae922"></a>

# meeting notes Feb 21, 2021


<a id="orgf6d5ab2"></a>

## agenda


<a id="orgd94c70d"></a>

### richard hainsworth will present his work on pod6 processing

1.  <http://raku.finanalyst.org>

2.  Raku::Pod::Render

3.  looks very good: additional features for html effects and image includes

    1.  goal: extend pod6 so that it's more useful for website generation


<a id="org420b53c"></a>

## announcements

Ian Kluft, "Secure Coding in Perl", March 4, 2021 <https://www.meetup.com/SVPerl/events/gjdzdsyccfbgb/>


<a id="org4d5572e"></a>

## topics


<a id="org04b045d"></a>

### combined operator assignment shortcuts (e.g. ~=)

<https://github.com/doomvox/raku-study/tree/main/bin/2021feb21/combined_operator_assignment_shortcuts.pl6>

1.  TODO bill points out ~= is not in documentation index


<a id="org96283f2"></a>

### ^methods oddities

1.  .name better than .gist; ^method<sub>name</sub> better than ^methods

2.  <https://github.com/rakudo/rakudo/issues/4207>

3.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/02/msg9734.html>


<a id="org30b793a"></a>

### lizmat fosdem talk on sets etc

1.  <http://bofh.nikhef.nl/events/FOSDEM/2021/D.perl/raku_sets_without_borders.mp4>

2.  code example

    <https://github.com/doomvox/raku-study/tree/main/bin/2021feb21/sets_etc-working_from_lizmat_examples_fosdem_talk.pl6>

3.  related operations

    | method  | description                      | key attributes  |
    |------- |-------------------------------- |--------------- |
    | .unique | does a uniq                      | preserves order |
    | .squish | fold together consecutive dupes  | preserves order |
    | .Bag    | gets counts of repeated elements |                 |

4.  Simon Proctor module, sets from ranges

    <https://github.com/Scimon/p6-Range-SetOps>

5.  Richard Hainsworth reports issues with set identity (==) (can't repro)


<a id="org53a66d7"></a>

### project: write variants of set operations:

1.  act on **and return** arrays

    1.  a wrapper could remember what it was given

2.  preserve order

3.  maybe: avoid uniqifying

4.  maybe: act on more complex structures

    1.  distinguish and preserve metadata
    
        1.  do-able (partially) with custom WHICH
        
        2.  what about numeric operations


<a id="orge70a69b"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org1459d6d"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

<https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org8c3101f"></a>

## steven<sub>lebark</sub>


<a id="org606045f"></a>

### <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>


<a id="org38451a1"></a>

### <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org4a4cc9e"></a>

## Bill Michels contributes some news of rust:


<a id="org7eb4658"></a>

### <https://www.theregister.com/2021/02/02/patching_apache_rust/>


<a id="orgd36ce05"></a>

## perl weekly challenge:


<a id="orga0b03dd"></a>

### <https://perlweeklychallenge.org/>


<a id="org8b2bd0c"></a>

## graphviz is used for raku docs


<a id="org93bc3bb"></a>

### <https://graphviz.org/>


<a id="org15bf4a9"></a>

### usually run via "dot"


<a id="org7dc4708"></a>

### Scimon Proctor: Here's the Graph for Any.

1.  ![img](//docs.raku.org/images/type-graph-Any.svg)


<a id="org51190ee"></a>

### Bruce Gray example of using GraphViz:

1.  Using online graphviz site:

    1.  <https://dreampuf.github.io/GraphvizOnline/>
    
    2.  Feed it this graph description:
    
        ```c
        digraph G {
          subgraph cluster_0 {
            style=filled;
            color=lightgrey;
            node [style=filled,color=white];
            a0 -> a1 -> a2 -> a3;
            label = "process #1";
          }
          subgraph cluster_1 {
            node [style=filled];
            b0 -> b1 -> b2 -> b3;
            label = "process #2";
            color=blue
          }
          start -> a0;
          start -> b0;
          a1 -> b3;
          b2 -> a3;
          a3 -> a0;
          a3 -> end;
          b3 -> end;
          start [shape=Mdiamond];
          end [shape=Msquare];
        }
        ```
        
        1.  <https://github.com/Raku/doc/blob/master/type-graph.txt>
        
        2.  <https://github.com/Raku/doc/blob/master/xt/type-graph.t>


<a id="org19a26fe"></a>

### javascript tools to plot graphs of large datasets

1.  d3

2.  svg (partial solution)


<a id="orgcf4dd61"></a>

### Three types of "slurpy" parameters (/home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>)

1.  <https://docs.raku.org/type/Signature#Slurpy_parameters>

    |                      | syntax    | description                             |
    |-------------------- |--------- |--------------------------------------- |
    | flattened            | \*@args   | flattens passed arguments               |
    | unflattened          | \*\*@args | slurps all arguments without flattening |
    | single argument rule | +@args    | only flattens if a single argument      |

2.  code examples

    <https://github.com/doomvox/raku-study/tree/main//bin/2021feb21/slurpy_family.pl6>

3.  Bruce Gray explains the single arg behavior with for loop as example

    ```perl6
    for @a, @b, @c -> $array {
       # loops exactly 3 times
     }
    ```
    
    ```perl6
    my @a = <a b c d e f>;
    for @a -> $item {
       # loops exactly 6 times
     }
    ```

4.  Matthew Stephen Stuckwisch talk

    Has a slide that got me wondering about slurpy variants
    
    1.  <https://video.fosdem.org/2021/D.perl/raku_unexpected_simplicity.webm>
