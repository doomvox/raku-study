- [meeting notes Apr 11, 2021](#org6fcd8e2)
  - [code examples](#orgb7eca05)
  - [rough plan](#orgf7203a2)
    - [ask about questions, ideas, discussion topics](#orgc7932b2)
    - [recap of grammar to parse doomfiles: yary hluchan's approach, "decision points"](#orga98c06c)
    - [stackoverflow question by william michels "dualvars"](#org4a8a028)
    - [salve j. nilsen: conversation about idiomatic raku](#orgd7fd56c)
    - [accuracy equivalency of large numbers (mailing list)](#orgddc7469)
  - [future topics:](#org5b31d69)
    - [mixins mixed up:](#org5b18cfd)


<a id="org6fcd8e2"></a>

# meeting notes Apr 11, 2021


<a id="orgb7eca05"></a>

## code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021mar28>


<a id="orgf7203a2"></a>

## rough plan


<a id="orgc7932b2"></a>

### ask about questions, ideas, discussion topics


<a id="orga98c06c"></a>

### recap of grammar to parse doomfiles: yary hluchan's approach, "decision points"


<a id="org4a8a028"></a>

### stackoverflow question by william michels "dualvars"

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p>


<a id="orgd7fd56c"></a>

### salve j. nilsen: conversation about idiomatic raku

1.  hidden agenda (aha): understandability (not quite "readability", condescending)

    programs written as literary works <http://www.quotationspage.com/quote/24934.html>


<a id="orgddc7469"></a>

### accuracy equivalency of large numbers (mailing list)

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/04/msg9860.html>


<a id="org5b31d69"></a>

## future topics:


<a id="org5b18cfd"></a>

### mixins mixed up:

<https://github.com/rakudo/rakudo/issues/4282>

brian d foy talk, preparing for perl 7 <https://www.youtube.com/channel/UCqMg7ia28fvx6iN08QR_-ig>

<https://en.wikipedia.org/wiki/BEAM_(Erlang_virtual_machine)>

perl5 zfs <https://metacpan.org/pod/Filesys::ZFS>

perl5 params::validate <https://metacpan.org/pod/Params::Validate> <https://metacpan.org/pod/Data::Validation>

apple considered adopting zfs

<https://appleinsider.com/articles/07/06/06/apple_to_adopt_zfs_as_default_file_system_for_leopard> <https://www.macworld.com/article/1058320/zfs.html> <https://arstechnica.com/gadgets/2016/06/zfs-the-other-new-apple-file-system-that-almost-was-until-it-wasnt/>

<https://docs.raku.org/syntax/Regex%20adverbs#(Regexes)><sub>regex</sub><sub>Regex</sub><sub>adverbs</sub><sub>Regex</sub><sub>adverbs</sub> <https://docs.raku.org/language/regexes#index-entry-regex_adverb_:ratchet-regex_adverb_:r-Ratchet> <https://docs.raku.org/language/regexes#Backtracking>

{} is here: <https://docs.raku.org/language/regexes#Capture_numbers>

<https://nakedsecurity.sophos.com/2021/03/17/serious-security-the-linux-kernel-bugs-that-surfaced-after-15-years/> CVE-2021-27365. Exploitable heap buffer overflow due to the use of sprintf(). However, sprintf() is always dangerous and should never be used, because it doesn’t check if there’s enough space in the final memory block for the printed data to fit. &#x2026; Modern code shouldn’t use C functions that can perform memory copies of unlimited length – use snprintf(), which means format and print at most N bytes into string, and its friends instead.

<https://github.com/rakudo/rakudo/search?p=5&q=sprintf> <https://github.com/rakudo/rakudo/search?q=sprintf>
