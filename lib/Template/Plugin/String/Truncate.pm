package Template::Plugin::String::Truncate;
use strict;

# ABSTRACT: String::Truncate functions for Template Toolkit

require Template::Plugin;
use base qw(Template::Plugin);

use String::Truncate qw();

=head1 SYNOPSIS

    [% USE st = String.Truncate %]

    This thing happened [% time_dir.ago(some_seconds) %].

=head1 DESCRIPTION

This plugin allows you to use functions from L<String::Truncate> in your templates.
It is very simple and hopefully requires little explanation.

=function elide

=cut

sub elide { shift; return String::Truncate::elide(@_) }

=function trun

=cut

sub trunc { shift; return String::Truncate::trunc(@_) }

1;