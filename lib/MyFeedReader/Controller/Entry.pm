package MyFeedReader::Controller::Entry;

use strict;
use warnings;
use MyAggregator::Entry;
use parent 'Catalyst::Controller';

__PACKAGE__->config->{namespace} = 'entry';

sub view : Chained('/') : PathPart('entry') : Args(1) {
    my ( $self, $c, $id ) = @_;

    $c->stash->{entry} = $c->model('KiokuDB')->lookup($id);
}

1;


