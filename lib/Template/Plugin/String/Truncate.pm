package Template::Plugin::String::Truncate;
use strict;

# ABSTRACT: String::Truncate functions for Template Toolkit

require Template::Plugin;
use base qw(Template::Plugin);

use String::Truncate qw();

=head1 SYNOPSIS

    [% USE st = String.Truncate %]

    This string is elided: [% st.elide('LONG ASS STRING, SON!', 18); %]
    This one is truncated: [% st.trunc('DAMN YOU GOT LONG STRINGS!', 10); %]
    And other stuff can happen too: [% st.elide('SHORT STRING', 5, { truncate => 'left' }) %]

=head1 DESCRIPTION

This plugin allows you to use functions from L<String::Truncate> in your templates.
It is very simple and hopefully requires little explanation.  

=function elide

Truncates a string and marks the elision.  See L<String::Truncate/elide>.

=cut

sub elide { shift; return String::Truncate::elide(@_) }

=function trunc

Truncates a string.  See L<String::Truncate/trunc>.

=cut

sub trunc { shift; return String::Truncate::trunc(@_) }

1;