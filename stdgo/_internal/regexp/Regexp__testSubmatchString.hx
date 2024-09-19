package stdgo._internal.regexp;
function _testSubmatchString(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if ((_submatches.length) != (((_result.length) * (2 : stdgo.GoInt) : stdgo.GoInt))) {
            _t.errorf(("match %d: expected %d submatches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_submatches.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            return;
        };
        {
            var _k = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_k < (_submatches.length) : Bool), _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                if (_submatches[(_k : stdgo.GoInt)] == ((-1 : stdgo.GoInt))) {
                    if (_result[(_k / (2 : stdgo.GoInt) : stdgo.GoInt)] != (stdgo.Go.str())) {
                        _t.errorf(("match %d: expected nil got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                    continue;
                };
                var _expect = ((_test._text.__slice__(_submatches[(_k : stdgo.GoInt)], _submatches[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_expect != (_result[((_k / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)])) {
                    _t.errorf(("match %d: expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    return;
                };
            });
        };
    }
