use 5.010;
use strict;
use warnings;
use ExtUtils::MakeMaker;

my %parms = (
    NAME                => 'App::Mysql::CheckAutoIncrement',
    AUTHOR              => 'Moritz Lenz <mlenz@noris.net>',
    ABSTRACT            => 'NRPE/Nagios check for overflowing mysql auto_increment columns',
    VERSION_FROM        => 'check.autoincrement',
    EXE_FILES           => [ 'check.autoincrement' ],
    PREREQ_PM => {
        'DBI'               => 0,
        # the following are core modules
        'Getopt::Long'      => 0,
        'strict'            => 0,
        'warnings'          => 0,
        'utf8'              => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'nytprof*' },
);

if ( $ExtUtils::MakeMaker::VERSION =~ /^\d\.\d\d$/ and $ExtUtils::MakeMaker::VERSION > 6.30 ) {
    $parms{LICENSE} = 'artistic_2';
}

WriteMakefile( %parms );


