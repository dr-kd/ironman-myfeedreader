package MyFeedReader::Controller::Feed;

use strict;
use warnings;
use parent 'Catalyst::Controller';

__PACKAGE__->config->{namespace} = 'feed';

sub index : Path : Args(0) {
    my ( $self, $c ) = @_;

    $c->stash->{feeds}
        = [ $c->model('MyModel')->resultset('Feed')->search() ];
}

sub view : Chained('/') : PathPart('feed/view') : Args(1) {
    my ( $self, $c, $id ) = @_;

    $c->stash->{feed}
        = $c->model('MyModel')->resultset('Feed')->find($id);
}

1;

