- [meeting notes December 18, 2022](#org39dd6e4)
  - [the raku study group](#org5726420)
  - [topics](#orgee644a5)
    - [next meeting in 2 weeks, December 4th](#org4592b0d)
    - [messing with libera.chat, raku irc](#org84f437c)
    - [jj merelo, "Raku Recipies"](#org96fb1b5)
  - [announcements](#orga47eb28)
    - [lambert lum is looking for raku speakers for svperl on Jan 5, 2023](#org4230fa0)
    - [December 4th: the next raku study group meeting.](#orgbaff4e6)


<a id="org39dd6e4"></a>

# meeting notes December 18, 2022


<a id="org5726420"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022dec18.md>
        
        2.  source file (for corrections, etc)
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022dec18.org>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022dec18>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022nov20.md>


<a id="orgee644a5"></a>

## topics


<a id="org4592b0d"></a>

### next meeting in 2 weeks, December 4th

1.  Q: how would people feel about a new years day meeting, Jan 1st, 2023? A: Yeah, maybe


<a id="org84f437c"></a>

### messing with libera.chat, raku irc


<a id="org96fb1b5"></a>

### jj merelo, "Raku Recipies"

1.  <https://link.springer.com/book/10.1007/978-1-4842-6109-5>

2.  normally, $40 ebook, $50 softcover

3.  randomly, I got offered the softcover for $10 ($11 with tax)

4.  theory: check the page a lot and seem like a hesitant buyer

5.  notes: code examples up at github

    1.  TODO go through some in advance of having the text?

6.  saw similar things with this R 4 tutorial book

    1.  <https://link.springer.com/book/10.1007/978-1-4842-6053-1>
    
    2.  by the way, R 4.0 came out in 2020
    
        1.  <https://analyticsindiamag.com/r-4-0-released-whats-in-it-for-data-scientists/>
        
            1.  the regexs use the PCRE2 library now
            
            2.  uses reference counting on objects
            
            3.  getting rid of braindead strings-as-factors behavior

7.  Perl5: William Michels question about a perl rest-api demo

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022nov20/rest_api_demo.pl>
    
    2.  local: /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022nov20/rest<sub>api</sub><sub>demo.pl</sub>

8.  weekly challenge

    1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-190/>
    
        1.  PWC 190.1:
        
            1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-190/#TASK1>
            
            2.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-190/0rir/raku/ch-1.raku>
            
            3.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-190/2colours/raku/ch-1.raku>
            
            4.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-190/bruce-gray/raku/ch-1.raku>
        
        2.  PWC 190.2:
        
            1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-190/#TASK2>
            
            2.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-190/0rir/raku/ch-2.raku>
            
            3.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-190/2colours/raku/ch-2.raku>
            
            4.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-190/bruce-gray/raku/ch-2.raku>
    
    2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-191/>
    
        1.  PWC 191.1:
        
            1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-191/#TASK1>
            
            2.  <https://github.com/0rir/perlweeklychallenge-club/blob/191/challenge-191/0rir/raku/ch-1.raku>
            
            3.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-191/2colours/raku/ch-1.raku>
            
            4.  <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-191/challenge-191/bruce-gray/raku/ch-1.raku>
        
        2.  PWC 191.2:
        
            1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-191/#TASK2>
            
            2.  <https://github.com/0rir/perlweeklychallenge-club/blob/191/challenge-191/0rir/raku/ch-2.raku>
            
            3.  <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-191/2colours/raku/ch-2.raku>
            
            4.  <https://github.com/Util/perlweeklychallenge-club/blob/branch-for-challenge-191/challenge-191/bruce-gray/raku/ch-2.raku>
            
            5.  <https://github.com/PerlMonk-Athanasius/perlweeklychallenge-club/blob/branch-for-challenge-191/challenge-191/athanasius/raku/ch-1.raku#L119>
            
            6.  TODO Note still need to cover Bruce Gray's solution.  Next time.

9.  rob presents a table exploring whats going on with containers

    1.  ![img](https://github.com/doomvox/raku-study/tree/main/bin/2022nov20//robs_decontainerizng_table.png)
    
    2.  local: /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022nov20/robs<sub>decontainerizng</sub><sub>table.png</sub>
    
    3.  marton mentions an issue with using lists as bag values: doesn't work by default
    
        1.  there's a list value module though, which covers the issue
    
    4.  marton opened the issue:
    
        1.  "Improve the documentation of infix `:` #4133"
        
            1.  <https://github.com/Raku/doc/issues/4133>


<a id="orga47eb28"></a>

## announcements


<a id="org4230fa0"></a>

### lambert lum is looking for raku speakers for svperl on Jan 5, 2023


<a id="orgbaff4e6"></a>

### December 4th: the next raku study group meeting.

1.  Um&#x2026; wouldja believe December 18th?  Have to cancel the December 4th one.
