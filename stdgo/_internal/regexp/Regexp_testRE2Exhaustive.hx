package stdgo._internal.regexp;
function testRE2Exhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping TestRE2Exhaustive during short test" : stdgo.GoString)));
        };
        stdgo._internal.regexp.Regexp__testRE2._testRE2(_t, ("testdata/re2-exhaustive.txt.bz2" : stdgo.GoString));
    }
