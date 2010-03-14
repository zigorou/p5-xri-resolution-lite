use Test::More;
use XRI::Resolution::Lite;

subtest 'resolver is http://xri.net/' => sub {
    my $r = XRI::Resolution::Lite->new;
    ok($r, 'Create instance using http://xri.net/');
    my $xrds = $r->resolve('=zigorou');
    is($xrds->documentElement->nodeName, 'XRDS', 'Root node is XRDS element');
    done_testing;
};

# subtest 'resolver is http://beta.xri.net/' => sub {
#     my $r = XRI::Resolution::Lite->new({
#         resolver => 'http://beta.xri.net/'
#     });
#     ok($r, 'Create instance using http://beta.xri.net/');
#     my $xrds = $r->resolve('=zigorou');
#     is($xrds->documentElement->nodeName, 'XRDS', 'Root node is XRDS element');
#     done_testing;
# };

subtest 'resolver is http://xri.freexri.com/' => sub {
    my $r = XRI::Resolution::Lite->new({
        resolver => 'http://xri.freexri.com/'
    });
    ok($r, 'Create instance using http://xri.freexri.com/');
    my $xrds = $r->resolve('=zigorou');
    is($xrds->documentElement->nodeName, 'XRDS', 'Root node is XRDS element');
    done_testing;
};

# subtest 'resolver is http://xri.testxri.com/' => sub {
#     my $r = XRI::Resolution::Lite->new({
#         resolver => 'http://xri.testxri.com/'
#     });
#     ok($r, 'Create instance using http://xri.testxri.com/');
#     my $xrds = $r->resolve('=zigorou');
#     is($xrds->documentElement->nodeName, 'XRDS', 'Root node is XRDS element');
#     done_testing;
# };

subtest 'resolver is http://xri.fullxri.com/' => sub {
    my $r = XRI::Resolution::Lite->new({
        resolver => 'http://xri.fullxri.com/'
    });
    ok($r, 'Create instance using http://xri.fullxri.com/');
    my $xrds = $r->resolve('=zigorou');
    is($xrds->documentElement->nodeName, 'XRDS', 'Root node is XRDS element');
    done_testing;
};

done_testing;

diag('Testing result format application/xrds+xml');
