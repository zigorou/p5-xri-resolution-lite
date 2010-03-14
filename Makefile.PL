use inc::Module::Install;
name 'XRI-Resolution-Lite';
all_from 'lib/XRI/Resolution/Lite.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
