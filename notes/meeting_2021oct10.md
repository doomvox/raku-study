- [meeting notes October 10, 2021                                      a](#org6d34cc9)
  - [the usual links:](#org313bf1b)
    - [meeting notes](#orga467365)
    - [code examples:](#orge6b545f)
  - [stuff it all in to the great stuffiness](#orgac7f944)
    - [data-handling in raku](#org6d0b62e)
    - [bioinformatics on rosettacode](#org000203f)
    - [bugnuts](#org87f7172)
    - [William Michels stackoverflow one-liner adventures](#org18e4d78)
    - [general notes](#org6b54c71)
  - [announcements](#orgac343a3)
    - [the ephemeral miniconf: nov 18 2021](#orgc7df590)
  - [next meeting](#org74ee966)
    - [next meeting: Oct 24, 2021](#org7c42e7d)


<a id="org6d34cc9"></a>

# meeting notes October 10, 2021                                      a


<a id="org313bf1b"></a>

## the usual links:


<a id="orga467365"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="orge6b545f"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="orgac7f944"></a>

## stuff it all in to the great stuffiness


<a id="org6d0b62e"></a>

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


<a id="org000203f"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org87f7172"></a>

### bugnuts

1.  a buglet or I'm crazy (smart money is on&#x2026;)  (yup, crazy)

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="org18e4d78"></a>

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


<a id="org6b54c71"></a>

### general notes

1.  Herbert Simon, "Sciences of the Artificial", an Alan pick

    1.  <https://mitpress.mit.edu/books/sciences-artificial>


<a id="orgac343a3"></a>

## announcements


<a id="orgc7df590"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org74ee966"></a>

## next meeting


<a id="org7c42e7d"></a>

### next meeting: Oct 24, 2021
