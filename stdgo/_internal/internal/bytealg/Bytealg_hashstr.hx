package stdgo._internal.internal.bytealg;
function hashStr(_sep:stdgo.GoString):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _hash = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_sep.length) : Bool)) {
                _hash = ((_hash * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_sep[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                _i++;
            };
        };
        var _pow:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32), _sq:stdgo.GoUInt32 = (16777619u32 : stdgo.GoUInt32);
        {
            var _i = (_sep.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _pow = (_pow * (_sq) : stdgo.GoUInt32);
                };
_sq = (_sq * (_sq) : stdgo.GoUInt32);
                _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        return { _0 : _hash, _1 : _pow };
    }
