package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _countNewCoverageBits(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        for (_i => _ in _snapshot) {
            _n = (_n + (stdgo._internal.math.bits.Bits_onesCount8.onesCount8((_snapshot[(_i : stdgo.GoInt)] & ((_base[(_i : stdgo.GoInt)] ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8))) : stdgo.GoInt);
        };
        return _n;
    }
