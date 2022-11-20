#!/usr/bin/env perl
#                                      2022/11/20 20:04:22

=head1 NAME

rest_api_demo.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

I'm trying to get the example Perl5 code from the bottom of this REST-API page to work:

https://rest.ensembl.org/documentation/info/archive_id_post

I can get the example curl, wget, and R code to work from the same
page, so I know the server (https://rest.ensembl.org) is up and
running. Below is the code, cut-and-pasted. I had to install the JSON
module. All I get back is the string "Failed!" while curl, wget, and R
all return actual data

=cut

use strict;
use warnings;
 
use HTTP::Tiny;
 
my $http = HTTP::Tiny->new();
 
my $server = 'https://rest.ensembl.org';
my $ext = '/archive/id';
my $response = $http->request('POST', $server.$ext, {
  headers => {
      'Content-type' => 'application/json',
      'Accept' => 'application/json'
  },
  content => '{ "id" : ["ENSG00000157764", "ENSG00000248378"] }'
});
 
die "Failed!\n" unless $response->{success};
 
 
use JSON;
use Data::Dumper;
if(length $response->{content}) {
  my $hash = decode_json($response->{content});
  local $Data::Dumper::Terse = 1;
  local $Data::Dumper::Indent = 1;
  print Dumper $hash;
  print "\n";
}




__END__

=head1 SOURCE

https://rest.ensembl.org/documentation/info/archive_id_post

=head1 OUTPUT

perl /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022nov20/rest_api_demo.pl
[
  {
    'possible_replacement' => [],
    'assembly' => 'GRCh38',
    'latest' => 'ENSG00000157764.14',
    'id' => 'ENSG00000157764',
    'release' => '108',
    'type' => 'Gene',
    'is_current' => '1',
    'version' => 14,
    'peptide' => undef
  },
  {
    'assembly' => 'GRCh38',
    'possible_replacement' => [],
    'release' => '108',
    'latest' => 'ENSG00000248378.1',
    'id' => 'ENSG00000248378',
    'version' => 1,
    'peptide' => undef,
    'type' => 'Gene',
    'is_current' => '1'
  }
]

=cut
