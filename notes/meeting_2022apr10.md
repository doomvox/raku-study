- [meeting notes April 10, 2022](#org879cb6c)
  - [the raku study group](#orgdc8b100)
    - [usual links](#org6fc4d18)
  - [an answer to what's Raku for:](#orgfd5bb86)
    - [<https://www.codesections.com/blog/raku-manifesto/>](#org8a34bf3)
  - [postponed from previous meetings](#orgfdd8411)
    - [rob asks about "DEPRECATED"](#org00873ff)
    - [bill's unix.stackexchange post](#org4f632d7)
  - [recent topics](#orgf3820fe)
    - [Buggy behavior with mixed promises, supplies and channels &#x2013; demanual](#org675ca62)
    - [simple but puzzling behavior, converting scientific notation to Rat](#org2bf1ea4)
    - [undocumented custom feature: get Rats to upgrade to FatRats](#orgdc88beb)
    - [subclassing Str class](#orgb1d1302)
  - [announcements](#org90f65eb)
    - [April 24th: next raku study group meeting](#org242824c)
    - [June 21-25: tprc: perl/raku conference](#orgc1ed6c6)


<a id="org879cb6c"></a>

# meeting notes April 10, 2022


<a id="orgdc8b100"></a>

## the raku study group


<a id="org6fc4d18"></a>

### usual links

1.  these notes

    <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022apr10.md>

2.  code examples

    <https://github.com/doomvox/raku-study/tree/main/bin/2022apr10>


<a id="orgfd5bb86"></a>

## an answer to what's Raku for:


<a id="org8a34bf3"></a>

### <https://www.codesections.com/blog/raku-manifesto/>


<a id="orgfdd8411"></a>

## postponed from previous meetings


<a id="org00873ff"></a>

### rob asks about "DEPRECATED"


<a id="org4f632d7"></a>

### bill's unix.stackexchange post


<a id="orgf3820fe"></a>

## recent topics


<a id="org675ca62"></a>

### Buggy behavior with mixed promises, supplies and channels &#x2013; demanual

1.  David Emanuel da Costa Santiago on users mailing list

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2022/04/msg10474.html>

2.  Mixing supplies, channels and promises makes the code hang or throwing exceptions

    1.  <https://github.com/rakudo/rakudo/issues/4853>

3.  lizmat fix to master branch: "Fix race condition in Rakudo::Supply::BlockState"

    1.  <https://github.com/rakudo/rakudo/commit/5658f4da07b44d492a3d35d57fa76939822d2c66>


<a id="org2bf1ea4"></a>

### simple but puzzling behavior, converting scientific notation to Rat

1.  <https://www.reddit.com/r/rakulang/comments/u0fsg6/converting_num_to_rational_bug_of_feature/>


<a id="orgdc88beb"></a>

### undocumented custom feature: get Rats to upgrade to FatRats

1.  <https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku>


<a id="orgb1d1302"></a>

### subclassing Str class

1.  <https://stackoverflow.com/questions/71650967/how-do-i-create-a-subclass-of-str>

2.  <https://stackoverflow.com/questions/71653350/working-around-for-the-cannot-modify-an-immutable-in-my-subclass-of-str>


<a id="org90f65eb"></a>

## announcements


<a id="org242824c"></a>

### April 24th: next raku study group meeting


<a id="orgc1ed6c6"></a>

### June 21-25: tprc: perl/raku conference
