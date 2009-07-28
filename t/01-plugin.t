#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

my $version = '0.0104';
eval "use App::ZofCMS::Test::Plugin $version;";
plan skip_all
=> "App::ZofCMS::Test::Plugin version $version is required for testing plugin"
    if $@;

plugin_ok(
    'RandomPasswordGeneratorPurePerl',
    { plug_random_password_generator_pure_perl_pure_perl => { extra => 1 } },
    {},
    { plug_random_password_generator_pure_perl_pure_perl => { extra => 1 } },
);