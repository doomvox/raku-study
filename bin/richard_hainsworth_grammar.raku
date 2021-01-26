
# A grammar-based solution to Richard Hainsworth regex problem by Yary Hluchan
# regex-based approach: richard_hainsworth_regex_problem.pl6


grammar Content-and-Attributes {
	# head is what is left of vertical bar, any non-vertical bar char, or empty
	# attrs is on right of bar
	# attrs is semicolon-separated list of things, can be double-quoted, or empty
	# What we care about are "head" and "meta" results

 # TODO rule instead of token? use .ws instead of \s or \h
	token TOP {   <head>
				| <head> \s* '|' \s* <metas> \s* }

	token head-word  { <-[|\h]>+ }
	token head  { <head-word>+ % \h+ | '' }

	token metas { <meta>* % [ \s* ';' \s* ] } # Semicolon-separated 0-or-more attr

	token meta-word { <-[;\"\h]>+ } # Anything without quote or solidus or space
	token meta-words { <meta-word>+ % \h* }
	token inside-quotes { [ # Grouping
							<-[ " \\ ]> # Non quote, non-backlash string
							| \\ .       # OR backslash followed by anything
							]* # 0 or more of the above
						} 
	token meta-quoted { '"' ~ '"' <inside-quotes> }
	token meta { <meta-words> | <meta-quoted> } # TODO: use "make" to pull inside-quotes value to meta
}

my regex fcode {
    ^ $<content>= (<-[\|]>*)\s* \|? \s* $
    |
    ^ $<content>=[ .* \S]*\s*<?before \|>
        \|
        [\s* $<meta>=( .*? \S )\s*]+ % \;
    \s*
    $
}

my @s = 'stuff | data ; more data',
        '| data; and more',
        'stuff |',
        'stuff with spaces | http://i-am-a-url.com/',
        '|data',
        'stuff | dkdkll ; kdkkd  ; stubborn ',
		'stuff | "dkdkll ; kdkkd" ; stubborn ',
		'stuff | "dkdkll \"I am an inside quote\" ; kdkkd" ; stubborn '
        ;

for @s {
    say ">\n$_#\n";
#    say $_ ~~ /<fcode>/, "\ntook ", (now - ENTER now), " sec";
    say Content-and-Attributes.parse($_), "\ntook ", (now - ENTER now), " sec";
}



