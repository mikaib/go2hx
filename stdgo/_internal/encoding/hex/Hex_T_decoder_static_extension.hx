package stdgo._internal.encoding.hex;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function read( _d:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((((_d._in.length) < (2 : stdgo.GoInt) : Bool) && (_d._err == null) : Bool)) {
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _numRead = __1, _numCopy = __0;
            _numCopy = stdgo.Go.copySlice((_d._arr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _d._in);
            {
                var __tmp__ = _d._r.read((_d._arr.__slice__(_numCopy) : stdgo.Slice<stdgo.GoUInt8>));
                _numRead = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._in = (_d._arr.__slice__(0, (_numCopy + _numRead : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (((stdgo.Go.toInterface(_d._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) && (((_d._in.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var _a = (stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_d._in[((_d._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_a > (15 : stdgo.GoUInt8) : Bool)) {
                        _d._err = stdgo.Go.asInterface((_d._in[((_d._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError));
                    } else {
                        _d._err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                };
            };
        };
        {
            var _numAvail = ((_d._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            if (((_p.length) > _numAvail : Bool)) {
                _p = (_p.__slice__(0, _numAvail) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var __tmp__ = stdgo._internal.encoding.hex.Hex_decode.decode(_p, (_d._in.__slice__(0, ((_p.length) * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _numDec:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _d._in = (_d._in.__slice__(((2 : stdgo.GoInt) * _numDec : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (_err != null) {
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = _err;
                _d._in = __tmp__0;
                _d._err = __tmp__1;
            };
        };
        if (((_d._in.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : _numDec, _1 : _d._err };
        };
        return { _0 : _numDec, _1 : (null : stdgo.Error) };
    }
}
