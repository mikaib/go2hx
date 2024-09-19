package stdgo._internal.internal.saferio;
function testSliceCap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.run(("small" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _c = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), (10i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            if (_c != ((10 : stdgo.GoInt))) {
                _t.errorf(("got capacity %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((10 : stdgo.GoInt)));
            };
        });
        _t.run(("large" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _c = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoUInt8>)), (1073741824i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            if ((_c < (0 : stdgo.GoInt) : Bool)) {
                _t.error(stdgo.Go.toInterface(("SliceCap failed unexpectedly" : stdgo.GoString)));
            } else if (_c == ((1073741824 : stdgo.GoInt))) {
                _t.errorf(("got capacity %d which is too high" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        });
        _t.run(("maxint" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _c = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoUInt8>)), (-9223372036854775808i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            if ((_c >= (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("SliceCap returned %d, expected failure" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        });
        _t.run(("overflow" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _c = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt64>)), (4611686018427387904i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            if ((_c >= (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("SliceCap returned %d, expected failure" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        });
    }
