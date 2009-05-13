package MyFeedReader::Model::KiokuDB;
use Moose;

BEGIN { extends qw(Catalyst::Model::KiokuDB) }
1;
# this is probably best put in the catalyst config file instead:
#__PACKAGE__->config( dsn => "bdb:dir=root/db" );

