use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::ZofCMS::Plugin::RandomPasswordGeneratorPurePerl',
    license             => 'perl',
    dist_author         => q|'Zoffix <'zoffix@cpan.org'>|,
    dist_version_from   => 'lib/App/ZofCMS/Plugin/RandomPasswordGeneratorPurePerl.pm',
    build_requires => {
        'Test::More' => 0,
    },
    build_recommends => {
        'App::ZofCMS::Test::Plugin' => '0.0104',
    },
    requires => {
        'Digest::MD5'               => '2.36_01',
        'App::ZofCMS::Plugin::Base' => 0.0103,
        'perl' => '5.006',
    },
    configure_requires => { 'Module::Build' => 0 },
    add_to_cleanup      => [ 'App-ZofCMS-Plugin-RandomPasswordGeneratorPurePerl-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
