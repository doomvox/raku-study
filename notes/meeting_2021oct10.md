- [meeting notes October 10, 2021                                      a](#org1594b52)
  - [the usual links:](#org6ba13bb)
    - [meeting notes](#orgb31a375)
    - [code examples:](#orgaecd3b3)
  - [stuff it all in to the great stuffiness](#org48133d5)
    - [data-handling in raku](#org13e3545)
    - [bioinformatics on rosettacode](#orgaf006b2)
    - [bugnuts](#org41d3cf2)
    - [William Michels stackoverflow one-liner adventures](#org51c1685)
    - [general notes](#org01d66b0)
  - [announcements](#org2c5a843)
    - [the ephemeral miniconf: nov 18 2021](#org9954d81)
  - [next meeting](#org8084818)
    - [next meeting: Oct 24, 2021](#orgf0dc689)


<a id="org1594b52"></a>

# meeting notes October 10, 2021                                      a


<a id="org6ba13bb"></a>

## the usual links:


<a id="orgb31a375"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="orgaecd3b3"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="org48133d5"></a>

## stuff it all in to the great stuffiness


<a id="org13e3545"></a>

### data-handling in raku

1.  talked about three rough approaches

    1.  perl-style: arrays of hashes, hashes as records
    
    2.  raku: data container objects more practical
    
    3.  rlang-style: columns of data, aggregate methods appropriate for type

2.  note: i'm agnostic on strong typing

    1.  some type checking good, large amounts may just be redundant
    
    2.  testing can stubstitute for strong-types, but not vice-versa

3.  bruce gray demoed some techniques

    1.  micro-objects as data records
    
    2.  custom new method
    
    3.  data-join example:
    
        1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-132/#TASK2>


<a id="orgaf006b2"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org41d3cf2"></a>

### bugnuts

1.  a buglet or I'm crazy (smart money is on&#x2026;)  (yup, crazy)

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org51c1685"></a>

### William Michels stackoverflow one-liner adventures

1.  the flip-flop operator

    1.  <https://unix.stackexchange.com/a/672602/227738>

2.  

    1.  <https://stackoverflow.com/a/69489459/7270649>

3.  raku and the absence of globbing in windows command.exe

    1.  <https://stackoverflow.com/questions/69384754/how-do-i-use-raku-e-and-n-with-multiple-file-glob/69400187>
    
    2.  <https://superuser.com/questions/460598/is-there-any-way-to-get-the-windows-cmd-shell-to-expand-wildcard-paths>
    
    3.  <https://stackoverflow.com/questions/23908299/ruby-windows-command-line-globbing>
    
    4.  <https://stackoverflow.com/questions/3954750/parsing-command-line-arguments-as-wildcards>
    
    5.  <https://www.ruby-forum.com/t/ruby-wildcard-command-line-argument-auto-expansion/106378/3>
    
    6.  
    
        1.  From William Michels : raku -e '.lines.say for dir(test => / \\.txt $ /);'
        
        2.  From Bruce Gray : raku -pe ‘;’ \*.txt


<a id="org01d66b0"></a>

### general notes

1.  Herbert Simon, "Sciences of the Artificial", an Alan pick

    1.  <https://mitpress.mit.edu/books/sciences-artificial>


<a id="org2c5a843"></a>

## announcements


<a id="org9954d81"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org8084818"></a>

## next meeting


<a id="orgf0dc689"></a>

### next meeting: Oct 24, 2021
