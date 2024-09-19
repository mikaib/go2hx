package stdgo._internal.net.http;
class T_http2Transport_asInterface {
    @:keep
    public dynamic function _idleConnTimeout():stdgo._internal.time.Time_Duration.Duration return __self__.value._idleConnTimeout();
    @:keep
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._logf(_format, ..._args);
    @:keep
    public dynamic function _vlogf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._vlogf(_format, ..._args);
    @:keep
    public dynamic function _newClientConn(_c:stdgo._internal.net.Net_Conn.Conn, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return __self__.value._newClientConn(_c, _singleUse);
    @:keep
    public dynamic function newClientConn(_c:stdgo._internal.net.Net_Conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return __self__.value.newClientConn(_c);
    @:keep
    public dynamic function _maxEncoderHeaderTableSize():stdgo.GoUInt32 return __self__.value._maxEncoderHeaderTableSize();
    @:keep
    public dynamic function _maxDecoderHeaderTableSize():stdgo.GoUInt32 return __self__.value._maxDecoderHeaderTableSize();
    @:keep
    public dynamic function _expectContinueTimeout():stdgo._internal.time.Time_Duration.Duration return __self__.value._expectContinueTimeout();
    @:keep
    public dynamic function _disableKeepAlives():Bool return __self__.value._disableKeepAlives();
    @:keep
    public dynamic function _dialTLS(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _tlsCfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__.value._dialTLS(_ctx, _network, _addr, _tlsCfg);
    @:keep
    public dynamic function _newTLSConfig(_host:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> return __self__.value._newTLSConfig(_host);
    @:keep
    public dynamic function _dialClientConn(_ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return __self__.value._dialClientConn(_ctx, _addr, _singleUse);
    @:keep
    public dynamic function closeIdleConnections():Void __self__.value.closeIdleConnections();
    @:keep
    public dynamic function roundTripOpt(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _opt:stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.roundTripOpt(_req, _opt);
    @:keep
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.roundTrip(_req);
    @:keep
    public dynamic function _initConnPool():Void __self__.value._initConnPool();
    @:keep
    public dynamic function _connPool():stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool return __self__.value._connPool();
    @:keep
    public dynamic function _pingTimeout():stdgo._internal.time.Time_Duration.Duration return __self__.value._pingTimeout();
    @:keep
    public dynamic function _disableCompression():Bool return __self__.value._disableCompression();
    @:keep
    public dynamic function _maxFrameReadSize():stdgo.GoUInt32 return __self__.value._maxFrameReadSize();
    @:keep
    public dynamic function _maxHeaderListSize():stdgo.GoUInt32 return __self__.value._maxHeaderListSize();
    @:keep
    public dynamic function _dialTLSWithContext(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _cfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } return __self__.value._dialTLSWithContext(_ctx, _network, _addr, _cfg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
