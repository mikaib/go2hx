package stdgo._internal.bytes;
function toLower(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var __0 = (true : Bool), __1 = (false : Bool);
var _hasUpper = __1, _isASCII = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    break;
                };
_hasUpper = (_hasUpper || ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
                _i++;
            };
        };
        if (_isASCII) {
            if (!_hasUpper) {
                return (((stdgo.Go.str() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _b = stdgo._internal.internal.bytealg.Bytealg_makenozero.makeNoZero((_s.length));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    };
_b[(_i : stdgo.GoInt)] = _c;
                    _i++;
                };
            };
            return _b;
        };
        return stdgo._internal.bytes.Bytes_map_.map_(stdgo._internal.unicode.Unicode_tolower.toLower, _s);
    }
