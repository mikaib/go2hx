package stdgo._internal.internal.bytealg;
import stdgo._internal.unsafe.Unsafe;
function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _hash = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _i = ((_sep.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _hash = ((_hash * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_sep[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            });
        };
        var __0:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (16777619u32 : stdgo.GoUInt32);
var _sq = __1, _pow = __0;
        {
            var _i = (_sep.length : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _pow = (_pow * (_sq) : stdgo.GoUInt32);
                };
                _sq = (_sq * (_sq) : stdgo.GoUInt32);
            });
        };
        return { _0 : _hash, _1 : _pow };
    }
