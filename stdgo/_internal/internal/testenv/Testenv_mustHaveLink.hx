package stdgo._internal.internal.testenv;
function mustHaveLink(_t:stdgo._internal.testing.Testing_TB.TB):Void {
        if (!stdgo._internal.internal.testenv.Testenv_hasLink.hasLink()) {
            _t.skipf(("skipping test: hardlinks are not supported on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
