package stdgo._internal.strconv;
function _appendQuotedRuneWith(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32, _quote:stdgo.GoUInt8, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoUInt8> {
        _buf = (_buf.__append__(_quote));
        if (!stdgo._internal.unicode.utf8.Utf8_validRune.validRune(_r)) {
            _r = (65533 : stdgo.GoInt32);
        };
        _buf = stdgo._internal.strconv.Strconv__appendEscapedRune._appendEscapedRune(_buf, _r, _quote, asciionly, _graphicOnly);
        _buf = (_buf.__append__(_quote));
        return _buf;
    }
