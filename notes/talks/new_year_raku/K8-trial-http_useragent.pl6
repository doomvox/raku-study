#!/usr/bin/env perl6
# 
# trial-http_useragent.pl6            06 Oct 2019 

# Playing with an example from the Derek tutorial

# Q: can I identify a re-direct?

use HTTP::UserAgent;
my $uA = HTTP::UserAgent.new;
$uA.timeout = 10;
my $url = "http://obsidianrook.com/resume.html";
my $response = $uA.get($url);
my $dW;
if $response.is-success {
    $dW = $response.content;
} else {
    die $response.status-line;
}

for $dW.lines(10) -> $text {
    say $text;
}

say $dW.gist;
