package stdgo._internal.strings;
function map_(_mapping:stdgo.GoInt32 -> stdgo.GoInt32, _s:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        for (_i => _c in _s) {
            var _r = (_mapping(_c) : stdgo.GoInt32);
            if (((_r == _c) && (_c != (65533 : stdgo.GoInt32)) : Bool)) {
                continue;
            };
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_c == ((65533 : stdgo.GoInt32))) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
                    _c = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (((_width != (1 : stdgo.GoInt)) && (_r == _c) : Bool)) {
                    continue;
                };
            } else {
                _width = stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen(_c);
            };
            _b.grow(((_s.length) + (4 : stdgo.GoInt) : stdgo.GoInt));
            _b.writeString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
            if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                _b.writeRune(_r);
            };
            _s = (_s.__slice__((_i + _width : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            break;
        };
        if (_b.cap() == ((0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        for (__0 => _c in _s) {
            var _r = (_mapping(_c) : stdgo.GoInt32);
            if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    _b.writeByte((_r : stdgo.GoUInt8));
                } else {
                    _b.writeRune(_r);
                };
            };
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
