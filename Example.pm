package Example;
use strict;
use warnings;
use Data::Dumper;

sub handler {
    my $env = shift;

    my $body = Dumper($env);
    [200, ['Content-Type', 'text/plain', 'Content-Length', length($body), 'X-Yappo', 'Hokke'], [$body]];
}

1;

