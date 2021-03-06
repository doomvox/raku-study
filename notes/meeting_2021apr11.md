- [meeting notes Apr 11, 2021](#org9764e6d)
  - [code examples](#orgbae8b8a)
  - [rough plan](#orga017bc7)
    - [ask about questions, ideas, discussion topics](#orga0d8025)
    - [recap of grammar to parse doomfiles: yary hluchan's approach, "decision points"](#orgaf3f336)
    - [stackoverflow question by william michels "dualvars"](#orgabf9e52)
    - [salve j. nilsen: conversation about idiomatic raku](#orgeaef81e)
    - [accuracy equivalency of large numbers (mailing list)](#org43510f0)
  - [future topics:](#org938869d)
    - [mixins mixed up:](#orgc63df50)
  - [things discussed](#org114b876)
    - [regex](#org19ce0e1)
    - [zfs](#orgd263080)
    - [parameter validation in perl5](#org9bc639f)
    - [sprintf: classic c buffer overflow bug](#org3e1bcc3)
    - [sprintf in raku has little to do with the C version.](#org079b4a7)
    - [named vectors in R lang](#org020d4e5)
    - [raku books](#org8978f52)
    - [misc other topics](#org1ac51f0)


<a id="org9764e6d"></a>

# meeting notes Apr 11, 2021


<a id="orgbae8b8a"></a>

## code examples

<https://github.com/doomvox/raku-study/tree/main/bin/2021mar28>


<a id="orga017bc7"></a>

## rough plan


<a id="orga0d8025"></a>

### ask about questions, ideas, discussion topics


<a id="orgaf3f336"></a>

### recap of grammar to parse doomfiles: yary hluchan's approach, "decision points"


<a id="orgabf9e52"></a>

### stackoverflow question by william michels "dualvars"

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p>


<a id="orgeaef81e"></a>

### salve j. nilsen: conversation about idiomatic raku

1.  hidden agenda (aha): understandability (not quite "readability", condescending)

    programs written as literary works <http://www.quotationspage.com/quote/24934.html>


<a id="org43510f0"></a>

### accuracy equivalency of large numbers (mailing list)

1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/04/msg9860.html>


<a id="org938869d"></a>

## future topics:


<a id="orgc63df50"></a>

### mixins mixed up:

<https://github.com/rakudo/rakudo/issues/4282>


<a id="org114b876"></a>

## things discussed


<a id="org19ce0e1"></a>

### regex

1.  scoped control of backtracking (rachet)

    <https://docs.raku.org/syntax/Regex%20adverbs#(Regexes)><sub>regex</sub><sub>Regex</sub><sub>adverbs</sub><sub>Regex</sub><sub>adverbs</sub> <https://docs.raku.org/language/regexes#index-entry-regex_adverb_:ratchet-regex_adverb_:r-Ratchet> <https://docs.raku.org/language/regexes#Backtracking>

2.  backreferences to numeric capture variables

    1.  {} to "publish"
    
        <https://docs.raku.org/language/regexes#Capture_numbers>

3.  oslo perl brian d foy talk, preparing for perl 7

    <https://www.youtube.com/channel/UCqMg7ia28fvx6iN08QR_-ig>

4.  beam the erlang vm

    <https://en.wikipedia.org/wiki/BEAM_(Erlang_virtual_machine)>


<a id="orgd263080"></a>

### zfs

1.  apple considered adopting zfs

    <https://appleinsider.com/articles/07/06/06/apple_to_adopt_zfs_as_default_file_system_for_leopard> <https://www.macworld.com/article/1058320/zfs.html> <https://arstechnica.com/gadgets/2016/06/zfs-the-other-new-apple-file-system-that-almost-was-until-it-wasnt/>

2.  perl5 cpan package

    <https://metacpan.org/pod/Filesys::ZFS>


<a id="org9bc639f"></a>

### parameter validation in perl5

<https://metacpan.org/pod/Params::Validate> <https://metacpan.org/pod/Data::Validation>


<a id="org3e1bcc3"></a>

### sprintf: classic c buffer overflow bug

<https://nakedsecurity.sophos.com/2021/03/17/serious-security-the-linux-kernel-bugs-that-surfaced-after-15-years/>

CVE-2021-27365. Exploitable heap buffer overflow due to the use of sprintf().

However, sprintf() is always dangerous and should never be used, because it doesn’t check if there’s enough space in the final memory block for the printed data to fit. &#x2026; Modern code shouldn’t use C functions that can perform memory copies of unlimited length – use snprintf(), which means format and print at most N bytes into string, and its friends instead.


<a id="org079b4a7"></a>

### sprintf in raku has little to do with the C version.

<https://github.com/rakudo/rakudo/search?p=5&q=sprintf> <https://github.com/rakudo/rakudo/search?q=sprintf>

<https://github.com/rakudo/rakudo/blob/a68d2579f2b3ac295d34d1daa63a3b59a3df9ff1/src/core.c/Cool.pm6> <https://github.com/rakudo/rakudo/blob/995d39c03b10d8834c7f597a7eb6b8653366a469/src/core.c/Rakudo/Internals.pm6>

<http://www.softpanorama.org/SE/conceptual_integrity.shtml>


<a id="org020d4e5"></a>

### named vectors in R lang

14:48:05 From Bill<sub>Michels</sub> : > x <- 1:4 > names(x) <- LETTERS[1:4] > str(x) Named int [1:4] 1 2 3 4

-   attr(\*, "names")= chr [1:4] "A" "B" "C" "D"

> x A B C D 1 2 3 4 > print(x) A B C D 1 2 3 4 > cat(x) 1 2 3 4 14:49:24 From Bill<sub>Michels</sub> : > x[1] A 1 > x["A"] A 1 > sum(x) [1] 10 > sin(x) A B C D 0.8414710 0.9092974 0.1411200 -0.7568025 > 14:50:04 From Salve J. Nilsen : Cyril Connolly quote: <https://www.brainyquote.com/quotes/cyril_connolly_100796> 14:55:14 From Bill<sub>Michels</sub> : > 1:12 [1] 1 2 3 4 5 6 7 8 9 10 11 12 > (1:12)\*2 [1] 2 4 6 8 10 12 14 16 18 20 22 24 > 14:56:07 From Bill<sub>Michels</sub> : > (1:12)\*c(1,10) [1] 1 20 3 40 5 60 7 80 9 100 11 120 > 14:56:17 From Joseph Brenner : Back in a minute (sorry). 14:58:04 From Bill<sub>Michels</sub> : > c(1,10) [1] 1 10 > 14:58:25 From Bill<sub>Michels</sub> : > c(1:4,10) [1] 1 2 3 4 10 > 14:59:31 From Bill<sub>Michels</sub> : > c(1:4,"A") [1] "1" "2" "3" "4" "A"


<a id="org8978f52"></a>

### raku books

<https://github.com/LaurentRosenfeld/think_raku> <https://github.com/LaurentRosenfeld/think_raku/blob/master/PDF/think_raku.pdf>

Salve J. Nilsen : <https://perl6book.com/>


<a id="org1ac51f0"></a>

### misc other topics

Bill<sub>Michels</sub> : <https://www.researchgate.net/profile/Joris-Meys> Bruce Gray : <https://en.wikipedia.org/wiki/XY_problem> Salve J. Nilsen : Typeglobs: <https://perldoc.perl.org/perldata#Typeglobs-and-Filehandles> Bill<sub>Michels</sub> : <https://perldoc.perl.org/functions/prototype> Bill<sub>Michels</sub> : <https://perlmonks.org/index.pl?node_id=861966>

Bill<sub>Michels</sub> : "Far More Than Everything You've Ever Wanted to Know about Prototypes in Perl" by Tom Christiansen

Bruce Gray : <https://stackoverflow.com/questions/67030459/what-persistent-data-structures-does-raku-rakudo-include>
