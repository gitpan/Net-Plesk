package Net::Plesk::Method::domain_del;

use strict;

use vars qw( $VERSION @ISA $AUTOLOAD $DEBUG );

@ISA = qw( Net::Plesk::Method );
$VERSION = '0.01';

$DEBUG = 0;

=head1 NAME

Net::Plesk::Method::domain_del - Perl extension for Plesk XML Remote API domain deletion

=head1 SYNOPSIS

  use Net::Plesk::Method::domain_del

  my $p = new Net::Plesk::Method::domain_del ( 'domain.com' );

=head1 DESCRIPTION

This module implements an interface to construct a request for a domain
addition using SWSOFT's Plesk.

=head1 METHODS

=over 4

=item init args ...

Initializes a Plesk domain_del object.  The I<domain> option is required.

=cut

sub init {
  my ($self, $domain) = @_;
  $$self = join ( "\n", (
	            '<domain>',
	            '<del>',
	            '<filter>',
	            '<domain_name>',
	            $self->encode($domain),
	            '</domain_name>',
	            '</filter>',
	            '</del>',
	            '</domain>',
	          ));
}

=back

=head1 BUGS

  Creepy crawlies.

=head1 SEE ALSO

SWSOFT Plesk Remote API documentation (1.4.0.0 or later)

=head1 AUTHOR

Jeff Finucane E<lt>jeff@cmh.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 Jeff Finucane

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;

