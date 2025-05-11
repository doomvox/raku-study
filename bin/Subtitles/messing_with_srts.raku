#!/usr/bin/env raku
# 
# messing_with_srts.raku            26 Apr 2025 

# use v6;
use v6.e.PREVIEW;

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

## cheat sheet

## TODO change naming: index => numeric counter, stanza => subtitle
grammar srt {
   rule TOP { ^ <stanza> + $}
   token stanza { <index> \n <timing> \n <text> \n\n}
#   token index { ^^ \s* \d+ \s* $$ }   
#   token index { ^^ \h* \d+ \h* $$ }   
   token index { ^^ \d+ \h* $$ }   
   token timing { <start_time> ' --> ' <end_time> } 
   token start_time { <time> }
   token end_time { <time> }
   token time { <hh> ':' <mm> ':' <ss>  }
   token hh { \d\d }
   token mm { \d\d }   
   token ss { \d\d ',' \d\d\d }   
   token text { .*?  <before \n\n> } 
      }

## Need to review special chars in raku regexp?  tripped up on ':' and \,
 
# my $match = df.parse($web_content);
my $match = srt.parse( $data );
say $match.WHAT;         
## say $match.perl; ## could be huuuge
say $match;

say "===";

say "INDEX:";
say srt.parse( '12', :rule('index') );   # ｢12｣

## TODO multiline target currently fails
my $i_line = "12\n";
say srt.parse( $i_line, :rule('index') );   # TODO BUG this *doesn't* match if there's a newline at end, and this might be a bug
                                            # 

## exit;
say "===";

say srt.parse( '99', :rule('hh') );   # ｢99｣

say srt.parse( '00:00:39,039', :rule('time') );   # Nil

say srt.parse( '00:00:39,039 --> 00:00:41,017', :rule('timing') );   # Nil

say "===";

my $s = "16
00:01:21,164 --> 00:01:23,709
Come on. It won't be long.";

say srt.parse( $s, :rule('stanza'));


say "---";
say "well?";
say $match;
