use Test::More tests => 3;

BEGIN {
    use_ok('Digest::MD5');
    use_ok('App::ZofCMS::Plugin::Base');
    use_ok( 'App::ZofCMS::Plugin::RandomPasswordGeneratorPurePerl' );
}

diag( "Testing App::ZofCMS::Plugin::RandomPasswordGeneratorPurePerl $App::ZofCMS::Plugin::RandomPasswordGeneratorPurePerl::VERSION, Perl $], $^X" );
