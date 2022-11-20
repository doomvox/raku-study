#!/usr/bin/env perl
#                                      2022/11/20 20:04:22

=head1 NAME

rest_api_demo.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for rest_api_demo.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;


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

=cut
