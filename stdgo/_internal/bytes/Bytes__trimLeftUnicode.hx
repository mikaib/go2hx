package stdgo._internal.bytes;
function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _n = __1, _r = __0;
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_s);
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!stdgo._internal.bytes.Bytes__containsRune._containsRune(_cutset?.__copy__(), _r)) {
                break;
            };
            _s = (_s.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
