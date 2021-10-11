- [meeting notes October 10, 2021                                      a](#org9c1e735)
  - [the usual links:](#orga1e512c)
    - [meeting notes](#org830d825)
    - [code examples:](#org82f02fe)
  - [stuff it all in to the great stuffiness](#org456f8ed)
    - [data-handling in raku](#org53c061c)
    - [bioinformatics on rosettacode](#orgd08c39b)
    - [bugnuts](#orgdb60475)
    - [William Michels stackoverflow one-liner adventures](#org4acec7a)
    - [general notes](#orgf5525b1)
  - [announcements](#org98cbc4f)
    - [the ephemeral miniconf: nov 18 2021](#org22dd24c)
  - [next meeting](#org07cced3)
    - [next meeting: Oct 24, 2021](#org81e1530)


<a id="org9c1e735"></a>

# meeting notes October 10, 2021                                      a


<a id="orga1e512c"></a>

## the usual links:


<a id="org830d825"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="org82f02fe"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="org456f8ed"></a>

## stuff it all in to the great stuffiness


<a id="org53c061c"></a>

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

4.  some links on concurrency, asyncrony, parallelism issues

    1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>
    
    2.  <https://www.youtube.com/watch?v=rgCk5w2o-GY>


<a id="orgd08c39b"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orgdb60475"></a>

### bugnuts

1.  a buglet or I'm crazy (smart money is on&#x2026;)  (yup, crazy)

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org4acec7a"></a>

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


<a id="orgf5525b1"></a>

### general notes

1.  Herbert Simon, "Sciences of the Artificial", an Alan pick

    1.  <https://mitpress.mit.edu/books/sciences-artificial>


<a id="org98cbc4f"></a>

## announcements


<a id="org22dd24c"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org07cced3"></a>

## next meeting


<a id="org81e1530"></a>

### next meeting: Oct 24, 2021
