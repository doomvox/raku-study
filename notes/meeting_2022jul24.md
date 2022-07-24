- [meeting notes July 24, 2022](#org2de1156)
  - [the raku study group](#orgdedd0e1)
  - [current topics](#orgcec8b0a)
    - [make/made](#org327bf3a)
    - [gather/take](#org37e7fa0)
    - [jonathan worthington: } as a statement terminator sans semicolon](#org11505e1)
    - [william michels stackexchange responses](#org9ba155e)
    - [perl weekly challenge (bruce gray, robs ransbottom)](#orgc8481eb)
    - [initialize attributes in subclass](#orgb56588c)
  - [earlier topics](#orgc387603)
    - [regex feature: control what's captured with <( &#x2026; )>](#org38f4250)
  - [announcements](#org45cb32d)
    - [August 7th: next raku study group meeting](#orgea31da6)
    - [August 13th & 14th: online raku conference](#org59584e2)
    - [looking ahead: need to skip August 24th, will be August 31st](#orge28148d)


<a id="org2de1156"></a>

# meeting notes July 24, 2022


<a id="orgdedd0e1"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="orgcec8b0a"></a>

## current topics


<a id="org327bf3a"></a>

### make/made

1.  grammars again

2.  rob ransbottom example: recursive matching limited to zero-or-one times per level


<a id="org37e7fa0"></a>

### gather/take

1.  for is a block like the for block, gather do


<a id="org11505e1"></a>

### jonathan worthington: } as a statement terminator sans semicolon

1.  <https://github.com/rakudo/rakudo/issues/4998>


<a id="org9ba155e"></a>

### william michels stackexchange responses

1.  <https://unix.stackexchange.com/a/710954/227738>

    1.  matrix math

2.  <https://unix.stackexchange.com/a/709981/227738>

    1.  min and max

3.  <https://unix.stackexchange.com/a/711073/227738>

4.  <https://unix.stackexchange.com/a/711047/227738>

5.  <https://unix.stackexchange.com/a/711023/227738>

6.  <https://unix.stackexchange.com/a/710771/227738>

7.  <https://unix.stackexchange.com/a/710771/227738>

8.  <https://unix.stackexchange.com/a/710724/227738>

9.  <https://unix.stackexchange.com/a/710624/227738>

10. <https://unix.stackexchange.com/a/710604/227738>

11. <https://unix.stackexchange.com/a/710345/227738>


<a id="orgc8481eb"></a>

### perl weekly challenge (bruce gray, robs ransbottom)

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-174/#TASK1>

2.  <https://github.com/manwar/perlweeklychallenge-club/tree/master/challenge-174/bruce-gray/raku>


<a id="orgb56588c"></a>

### initialize attributes in subclass

1.  <https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class>


<a id="orgc387603"></a>

## earlier topics


<a id="org38f4250"></a>

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


<a id="org45cb32d"></a>

## announcements


<a id="orgea31da6"></a>

### August 7th: next raku study group meeting


<a id="org59584e2"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>


<a id="orge28148d"></a>

### looking ahead: need to skip August 24th, will be August 31st

my $obj = Classy.new(); $obj; # hashref

keys $obj; say $obj->{$key1};

$obj->{$key1} = 'somethingnew';

say $obj->key1;

say Dumper( $obj );
