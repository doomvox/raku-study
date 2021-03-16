- [meeting notes Feb 28, 2021](#org00ad2d2)
  - [plan](#orgaac544b)
    - [plan stuff](#orgd69e42b)
    - [ask for ideas](#orga7bfb5f)
    - [stall until end of meeting](#orge76f4a0)
  - [usual stuff](#org7fe9477)
    - [we use a github project for sharing demo code and so on:](#orgadee22e)
    - [this is a free form meeting without set agenda](#org0e735af)
    - [typically I share screen and start talking to keep things moving](#orgb1eef6e)
    - [if you've got anything you want to show, just say so, I'll unshare](#org162f780)
  - [announcements](#orgf2cb423)
  - [possible topics](#orge64d15f)
    - [lambert lum: regex problem from hell](#org3836229)
    - [how is Raku code organized? (See: /home/doom/End/Cave/Perl6/Notes/rakudoguts.org)](#org0488ab7)
    - [how would you get a list of all the built-in classes?](#orgcec85e6)
  - [david christensen](#orgb2f3e6a)
    - [interested in flow-based programming](#org546473c)
    - [indefinite numbers of readers/writers](#orgc4d0a0f)
    - [currently favoring perl5 for it](#org5de1d96)
  - [bruce gray links](#org06e79bd)


<a id="org00ad2d2"></a>

# meeting notes Feb 28, 2021


<a id="orgaac544b"></a>

## plan


<a id="orgd69e42b"></a>

### plan stuff


<a id="orga7bfb5f"></a>

### ask for ideas


<a id="orge76f4a0"></a>

### stall until end of meeting


<a id="org7fe9477"></a>

## usual stuff


<a id="orgadee22e"></a>

### we use a github project for sharing demo code and so on:

1.  meeting notes (this file)

    1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021feb28.org>
    
        1.  someday:
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021feb28.html>

2.  demo scripts

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021feb28>


<a id="org0e735af"></a>

### this is a free form meeting without set agenda


<a id="orgb1eef6e"></a>

### typically I share screen and start talking to keep things moving


<a id="org162f780"></a>

### if you've got anything you want to show, just say so, I'll unshare


<a id="orgf2cb423"></a>

## announcements

SV Perl talk: Ian Kluft, "Secure Coding in Perl", March 4, 2021 <https://www.meetup.com/SVPerl/events/gjdzdsyccfbgb/>


<a id="orge64d15f"></a>

## possible topics


<a id="org3836229"></a>

### lambert lum: regex problem from hell

1.  

    1.  [very hard] Given a line from /etc/sudoers, Write a regex that will append /usr/local/bin to the secure<sub>path</sub> line. Do not append if /usr/local/bin is already present. The secure<sub>path</sub> line looks like this.
    
    Defaults secure<sub>path</sub> = /sbin:/bin:/usr/sbin:/usr/bin
    
    1.  yary hluchan's answer:
    
        s~<sup>(?!(?:\s*[^:]\*:)\*/usr/local/bin(?:\s+|:|$))</sup>.\*\K$~:/usr/local/bin~


<a id="org0488ab7"></a>

### how is Raku code organized? (See: /home/doom/End/Cave/Perl6/Notes/rakudoguts.org)

1.  rakudo/docs

    The developer-oriented docs (the equivalent of man perlguts)
    
    1.  these are out-of-date: "architecture" talks about parrot
    
    2.  /home/doom/End/Sys/Perl6/dev/rakudo/docs

2.  roast

    test suite and effective specs for Raku <https://github.com/Raku/roast>

3.  rakudo

    <https://github.com/rakudo/rakudo> the leading implementation of Raku

4.  nqp

    <https://github.com/Raku/nqp> "not quite perl" minimal sub-set of Raku that compiles the rest

5.  rakudo, user-level docs

    1.  <https://github.com/Raku/doc>

6.  a github annoyance: they're pushing a new command-line interface "gh":

    ```sh
    ## newfangled way they want to do it
    gh repo clone Raku/doc
    ## what I still do
    git clone git@github.com:Raku/doc
    ```

7.  Q: is there a spec for Raku?

    1.  not really: various references point at the test suite as the "spec":
    
        <https://github.com/Raku/roast>
        
        1.  This now supersedes the Synopsis pages
    
    2.  what is the proper behavior of ^methods and ^method<sub>names</sub>
    
        1.  research for this issue:
        
            <https://github.com/rakudo/rakudo/issues/4207>
        
        2.  There are no tests of ^method<sub>names</sub> but there are some for ^methods:
        
            1.  <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
            
            2.  These are largely sanity tests written to avoid gratuitious breakage
            
                e.g. it checks that Any.<sup>methods</sup> shows more than List.<sup>methods</sup>
        
        3.  Synopsis 12 describes a ".<sup>methods</sup>" (a short cut for ".HOW.methods")
        
            1.  <https://design.raku.org/S12.html#Introspection>
            
            2.  In general, the behavior described here seems much like the current behavior:
            
                "The .<sup>methods</sup> method returns method-descriptors containing: name the name of the method"
            
            3.  Note, the ".<sup>can</sup>" method might be used to check the ".<sup>methods.name</sup>":
            
                $dog.<sup>can</sup>("bark")
            
            4.  <https://raku.org/specification/>
            
                1.  6.c spec: <https://github.com/Raku/roast/tree/6.c-errata>
                
                2.  dev spec: <https://github.com/Raku/roast>
        
        4.  Places ".<sup>methods</sup>" are mentioned in docs
        
            1.  found via search index:
            
                1.  <https://docs.raku.org/type/Metamodel::ClassHOW>
                
                    say Int.<sup>methods</sup>(:all).pick.name; # OUTPUT: «random Int method n
                
                2.  <https://docs.raku.org/type/Metamodel::ClassHOW>#(Metamodel::MethodContainer)<sub>method</sub><sub>methods</sub>
                
                    Returns a list of public methods available on the class (which includes methods from superclasses and roles).
                
                3.  <https://docs.raku.org/language/classtut#Introspection>
                
                    my Programmer $o .= new; &#x2026; say $o.<sup>methods</sup>(:local)».name.join(', ');
                
                4.  <https://docs.raku.org/type/ForeignCode>
            
            2.  found grepping the src for the docs: find . -type f -exec grep &#x2013;color -nH -e '\\<sup>method</sup>' {} +
            
                1.  <https://docs.raku.org/language/5to6-perlvar>
                
                2.  Language/classtut
                
                3.  Language/operators
                
                4.  Language/rb-nutshell
                
                5.  Language/structures
                
                6.  Type/ForeignCode
                
                7.  Type/Metamodel/MethodContainer
                
                8.  Type/Signature
                
                9.  Type/Stash
        
        5.  There are no places ".<sup>method</sup><sub>names</sub>" is mentioned in the docs.


<a id="orgcec85e6"></a>

### how would you get a list of all the built-in classes?

1.  note: can't instantiate with an empty new on all (just many)

2.  Symbol::Scan can get you ones currently in use

    1.  <https://github.com/doomvox/perl6-symbol-scan>
    
    2.  git@github.com:doomvox/perl6-symbol-scan.git


<a id="orgb2f3e6a"></a>

## david christensen


<a id="org546473c"></a>

### interested in flow-based programming


<a id="orgc4d0a0f"></a>

### indefinite numbers of readers/writers


<a id="org5de1d96"></a>

### currently favoring perl5 for it


<a id="org06e79bd"></a>

## bruce gray links

1.  <http://rosettacode.org/wiki/Padovan_sequence>

2.  <http://rosettacode.org/wiki/Modified_random_distribution>

3.  bruce gray has done some work with a parser for a flow based language

4.  parsing files like this:

    1.  <https://github.com/jpaulm/parsefbp/blob/master/test/data/DrawFBP_output.fbp>

5.  jg: the sed and awk for json data, on every platform now

    (bruce gray recomendation).
