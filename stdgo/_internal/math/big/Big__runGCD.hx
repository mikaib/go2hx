package stdgo._internal.math.big;
function _runGCD(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _aSize:stdgo.GoUInt, _bSize:stdgo.GoUInt):Void {
        if ((stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder && (((_aSize > (1000u32 : stdgo.GoUInt) : Bool) || (_bSize > (1000u32 : stdgo.GoUInt) : Bool) : Bool)) : Bool)) {
            _b.skip(stdgo.Go.toInterface(("skipping on race builder" : stdgo.GoString)));
        };
        _b.run(("WithoutXY" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            stdgo._internal.math.big.Big__runGCDExt._runGCDExt(_b, _aSize, _bSize, false);
        });
        _b.run(("WithXY" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            stdgo._internal.math.big.Big__runGCDExt._runGCDExt(_b, _aSize, _bSize, true);
        });
    }
