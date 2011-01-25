#!perl -T
#
#   Alien::InteractiveBrokers - tests for main module
#
#   Copyright (c) 2010-2011 Jason McManus
#

use Data::Dumper;
use Test::More tests => 6;
use strict;
use warnings;

###
### Vars
###

use vars qw( $TRUE $FALSE $VERSION );
BEGIN {
    $VERSION = '9.64_02';
}

*TRUE      = \1;
*FALSE     = \0;

my $obj;

###
### Tests
###

# Uncomment for use tests
BEGIN {
    use_ok( 'Alien::InteractiveBrokers' ) || print "Bail out!";
}

################################################################
# Test: Can instantiate object
# Expected: PASS
isa_ok( $obj = Alien::InteractiveBrokers->new(), 'Alien::InteractiveBrokers' );

################################################################
# Test: all methods, naive tests
# Expected: PASS
cmp_ok( length( $obj->path() ), '>', 0,         'path()' );
cmp_ok( length( $obj->includes() ), '>', 0,     'includes()' );
cmp_ok( length( $obj->classpath() ), '>', 0,    'classpath()' );
cmp_ok( length( $obj->version() ), '>', 0,      'version()' );
diag( "API Version ", $obj->version() );

# Always return true
1;

__END__
