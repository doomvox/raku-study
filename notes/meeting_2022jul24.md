- [meeting notes July 24, 2022](#org209fe17)
  - [the raku study group](#org19defd0)
  - [current topics](#orgbd8f832)
    - [make/made](#org54af009)
  - [earlier topics](#org244e1c2)
    - [regex feature: control what's captured with <( &#x2026; )>](#org9cfbc3b)
  - [announcements](#org79a8e55)
    - [August 7th: next raku study group meeting](#org9bd9408)
    - [August 13th & 14th: online raku conference](#org892f790)


<a id="org209fe17"></a>

# meeting notes July 24, 2022


<a id="org19defd0"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="orgbd8f832"></a>

## current topics


<a id="org54af009"></a>

### make/made


<a id="org244e1c2"></a>

## earlier topics


<a id="org9cfbc3b"></a>

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


<a id="org79a8e55"></a>

## announcements


<a id="org9bd9408"></a>

### August 7th: next raku study group meeting


<a id="org892f790"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>
