package stdgo._internal.archive.tar;
function _tryReadFull(_r:stdgo._internal.io.Io_Reader.Reader, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while ((((_b.length) > _n : Bool) && (_err == null) : Bool)) {
            var _nn:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _r.read((_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + (_nn) : stdgo.GoInt);
        };
        if (((_b.length == _n) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _err = (null : stdgo.Error);
        };
        return { _0 : _n, _1 : _err };
    }
