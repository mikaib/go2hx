package stdgo._internal.internal.pkgbits;
function _readUvarint(_r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = _r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (((_i > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                    return { _0 : _x, _1 : _err };
                };
                if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                    if (((_i == (9 : stdgo.GoInt)) && (_b > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                        return { _0 : _x, _1 : stdgo._internal.internal.pkgbits.Pkgbits__overflow._overflow };
                    };
                    return { _0 : (_x | ((_b : stdgo.GoUInt64) << _s : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (null : stdgo.Error) };
                };
                _x = (_x | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _s : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _s = (_s + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            });
        };
        return { _0 : _x, _1 : stdgo._internal.internal.pkgbits.Pkgbits__overflow._overflow };
    }
