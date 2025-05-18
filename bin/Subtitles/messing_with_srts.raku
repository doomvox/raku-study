#!/usr/bin/env raku
# 
# messing_with_srts.raku            26 Apr 2025 

use v6;
# use v6.e.PREVIEW;

# use Grammar::Tracer;
 
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/Subtitles/data/short.srt 
my $data_loc = $*PROGRAM.parent.add('data');
my $file = "$data_loc/short.srt";
say $file;

## specify encoding?
# my $fh = $file.IO.open( :r, enc=>'utf8-c8' );


my $fh = $file.IO.open( :r );
my $data = $fh.slurp;

say $data;


## bruce gray argues for practicalities sake you might pre-process the text,
## *force* it to end with a blank line, so you don't have to special case to allow no blank line at eof


## DONE change naming: index => numeric counter ('count'), stanza => subtitle
## TODO BUG: skips last subtitle if there's no blank line at eof
##           Q: is it because of the '\n\n' in the tanza token, the text token, or both?
##              create a special rule to deal with "blank_line_or_eof" case, see bl_or_eof
grammar srt {
#   rule TOP { ^ <subtitle> + $}  # works, but do you need ^ $ bracket?  Not for this.  Maybe if used differently?
   rule TOP { <subtitle> + }
   token subtitle { <count> \n <timing> \n <text> \n\n }  
#   rule subtitle { <count> \n <timing> \n <text> \n\n|$$ }  

#   token count { ^^ \s* \d+ \s* $$ }   
#   token count { ^^ \h* \d+ \h* $$ }   
#   token count { ^^ \d+ \h* $$ {say "hunting for the 'count'} }   
   token count { ^^ \d+ \h* $$ }   
   token timing { <start_time> ' --> ' <end_time> } 
   token start_time { <time> }
   token end_time { <time> }
   token time { <hh> ':' <mm> ':' <ss>  }
   token hh { \d\d }
   token mm { \d\d }   
   token ss { \d\d ',' \d\d\d }   
   token text { .*?  <before \n\n> } 
   ## TODO try this instead of \n\n
   token bl_or_eof { [\n\n+|$] }
}
## Need to review special chars in raku regexp?  Tripped up on ':' and ','
 
# my $match = df.parse($web_content);
my $match = srt.parse( $data );
say $match.WHAT;         
## say $match.perl; ## could be huuuge
say $match;

say "===A===";
{
    say "COUNT:";
    my $r = srt.parse( '12', :rule('count') );   # ｢12｣
    say $r;
}

{
    ## TODO multiline target currently fails
    my $i_line = "12\n";
    my $r = srt.parse( $i_line, :rule('count') );   # TODO this *doesn't* match if there's a newline at end which may seem like a bug...
    # say $r;
    say $r.gist;                                            # 
    say $r.raku;                                            # 
    ## Subtle issue:
    ##   .parse needs to match *to the end of the string* (documented)
}


## exit;
say "===B===";
{
    say srt.parse( '99', :rule('hh') );   # ｢99｣
    say srt.parse( '00:00:39,039', :rule('time') );   # Nil
    say srt.parse( '00:00:39,039 --> 00:00:41,017', :rule('timing') );   # Nil
}
say "===C===";
{
    my $s = "16
00:01:21,164 --> 00:01:23,709
Come on. It won't be long.";

    say srt.parse( $s, :rule('subtitle'));

    say "---";
    say "well?";
    say $match;
}
