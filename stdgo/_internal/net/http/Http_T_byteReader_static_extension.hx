package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_byteReader_asInterface) class T_byteReader_static_extension {
    @:keep
    static public function read( _br:stdgo.Ref<stdgo._internal.net.http.Http_T_byteReader.T_byteReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.Ref<stdgo._internal.net.http.Http_T_byteReader.T_byteReader> = _br;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_br._done) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _br._done = true;
        _p[(0 : stdgo.GoInt)] = _br._b;
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
