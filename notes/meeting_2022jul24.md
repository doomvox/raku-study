- [meeting notes July 24, 2022](#orgb4bb3bb)
  - [the raku study group](#orgc0b6592)
  - [current topics](#orgf7ee518)
    - [make/made](#orgc20aec7)
  - [earlier topics](#org80d31ac)
    - [regex feature: control what's captured with <( &#x2026; )>](#org8e8d7f0)
  - [announcements](#org50d5315)
    - [August 7th: next raku study group meeting](#orgb9f013d)
    - [August 13th & 14th: online raku conference](#org363ea06)


<a id="orgb4bb3bb"></a>

# meeting notes July 24, 2022


<a id="orgc0b6592"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="orgf7ee518"></a>

## current topics


<a id="orgc20aec7"></a>

### make/made

1.  grammars again


<a id="org80d31ac"></a>

## earlier topics


<a id="org8e8d7f0"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>

1.  the double-asterix non-flattening slurpy array signature

    1.  so the single asterix is flattening?
    
    2.  TODO investigate further, for next time

2.  rob ramsbottom

    1.  rob opened a github issue, no action:
    
        1.  <https://github.com/rakudo/rakudo/issues/4945>
        
        2.  TODO add some comments, at the very least confirm the behavior.


<a id="org50d5315"></a>

## announcements


<a id="orgb9f013d"></a>

### August 7th: next raku study group meeting


<a id="org363ea06"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
