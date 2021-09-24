- [meeting notes September 16, 2021](#org1ab48b1)
  - [the usual links:](#org80c56fc)
    - [meeting notes](#orgc7cc064)
    - [code examples:](#orgac73143)
  - [battle plan](#org25b53fc)
    - [bin pre-loaded with small ammo](#orgfe7448f)
    - [nano-lightning talk: given-when vs multi-dispatch](#orga22aca2)
    - [data-handling in raku](#org09cb462)
    - [lispyness of raku](#orge60b8ec)
    - [pairs of separators from a string](#org4c65eb4)
    - [bioinformatics on rosettacode](#org5c17afb)
    - [secure json-ification](#org14a944d)
    - [once around the net](#orga28e6fa)
    - [the ephemeral miniconf: nov 18 2021](#org166842c)
  - [next meeting](#org51d53c0)
    - [next meeting: Oct 10, 2021](#orga0c0ded)


<a id="org1ab48b1"></a>

# meeting notes September 16, 2021


<a id="org80c56fc"></a>

## the usual links:


<a id="orgc7cc064"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021sep26.md>


<a id="orgac73143"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26>


<a id="org25b53fc"></a>

## battle plan


<a id="orgfe7448f"></a>

### bin pre-loaded with small ammo

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>


<a id="orga22aca2"></a>

### nano-lightning talk: given-when vs multi-dispatch

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/01-the_given_when_case.raku>

2.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/02-the_multi_dispatch_case.raku>

    1.  notice: order matters with given-when, with multidispatch it's specificity
    
        1.  given-when is straight-forward to think about
        
        2.  multi-dispatch has OOP flexibility
        
        3.  TODO benchmark: add a repetition argument, run with "time"
        
        4.  multi with overlapping subsets supposed to need 'is default' to break tie
        
            1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/multi_dispatch_with_overlapping_subset_types.raku>
            
            2.  note: "default" means something different in the two approaches


<a id="org09cb462"></a>

### data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  Bill Michels objects to the word "Row" for a data-record in my solution


<a id="orge60b8ec"></a>

### lispyness of raku

1.  <https://www.codesections.com/blog/raku-lisp-impression/>

2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>


<a id="org4c65eb4"></a>

### pairs of separators from a string

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>


<a id="org5c17afb"></a>

### bioinformatics on rosettacode

1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org14a944d"></a>

### secure json-ification

<https://vrurg.github.io/2021/09/14/Secure-JSONification>


<a id="orga28e6fa"></a>

### once around the net

1.  stackoverflow

2.  perl6-users

3.  Raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>

4.  rosettacode


<a id="org166842c"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org51d53c0"></a>

## next meeting


<a id="orga0c0ded"></a>

### next meeting: Oct 10, 2021
