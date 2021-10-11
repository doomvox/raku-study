- [meeting notes October 10, 2021                                      a](#org8d6b678)
  - [the usual links:](#orge3833c5)
    - [meeting notes](#org760a956)
    - [code examples:](#org5159bff)
  - [stuff it all in to the great stuffiness](#orgadbc536)
    - [data-handling in raku](#org3072515)
    - [bioinformatics on rosettacode](#orgf427d2a)
    - [bugnuts](#orgaca3726)
    - [William Michels stackoverflow one-liner adventures](#orge09ea09)
    - [general notes](#org2a36e5a)
  - [announcements](#org1d32df3)
    - [the ephemeral miniconf: nov 18 2021](#org7ba5365)
  - [next meeting](#org1724855)
    - [next meeting: Oct 24, 2021](#org0d89e67)


<a id="org8d6b678"></a>

# meeting notes October 10, 2021                                      a


<a id="orge3833c5"></a>

## the usual links:


<a id="org760a956"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="org5159bff"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="orgadbc536"></a>

## stuff it all in to the great stuffiness


<a id="org3072515"></a>

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


<a id="orgf427d2a"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="orgaca3726"></a>

### bugnuts

1.  a buglet or I'm crazy (smart money is on&#x2026;)  (yup, crazy)

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orge09ea09"></a>

### William Michels stackoverflow one-liner adventures

1.  the flip-flop operator

    <https://unix.stackexchange.com/a/672602/227738>

2.  

    <https://stackoverflow.com/a/69489459/7270649>

3.  raku and the absence of globbing in windows command.exe

    <https://stackoverflow.com/questions/69384754/how-do-i-use-raku-e-and-n-with-multiple-file-glob/69400187> <https://superuser.com/questions/460598/is-there-any-way-to-get-the-windows-cmd-shell-to-expand-wildcard-paths> <https://stackoverflow.com/questions/23908299/ruby-windows-command-line-globbing> <https://stackoverflow.com/questions/3954750/parsing-command-line-arguments-as-wildcards> <https://www.ruby-forum.com/t/ruby-wildcard-command-line-argument-auto-expansion/106378/3>
    
    1.  
    
        1.  From William Michels : raku -e '.lines.say for dir(test => / \\.txt $ /);'
        
        2.  From Bruce Gray : raku -pe ‘;’ \*.txt


<a id="org2a36e5a"></a>

### general notes

1.  Herbert Simon, "Sciences of the Artificial", an Alan pick

    1.  <https://mitpress.mit.edu/books/sciences-artificial>


<a id="org1d32df3"></a>

## announcements


<a id="org7ba5365"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org1724855"></a>

## next meeting


<a id="org0d89e67"></a>

### next meeting: Oct 24, 2021
