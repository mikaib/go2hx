package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeGoAway_asInterface) class T_http2writeGoAway_static_extension {
    @:keep
    static public function _staysWithinBuffer( _:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway>, _max:stdgo.GoInt):Bool {
        @:recv var _:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway> = _;
        return false;
    }
    @:keep
    static public function _writeFrame( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway> = _p;
        var _err = (_ctx.framer().writeGoAway(_p._maxStreamID, _p._code, (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
        _ctx.flush();
        return _err;
    }
}
