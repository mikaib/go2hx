package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension) class T_http2noDialH2RoundTripper {
    @:embedded
    public var _http2Transport : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>);
    public function new(?_http2Transport:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>) {
        if (_http2Transport != null) this._http2Transport = _http2Transport;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var closeIdleConnections(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_closeIdleConnections():() -> Void return @:check32 this._http2Transport.closeIdleConnections;
    public var newClientConn(get, never) : stdgo._internal.net.Net_conn.Conn -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_newClientConn():stdgo._internal.net.Net_conn.Conn -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:check32 this._http2Transport.newClientConn;
    public var roundTripOpt(get, never) : (stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_roundTripOpt():(stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:check32 this._http2Transport.roundTripOpt;
    public var _connPool(get, never) : () -> stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool;
    @:embedded
    @:embeddededffieldsffun
    public function get__connPool():() -> stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool return @:check32 this._http2Transport._connPool;
    public var _dialClientConn(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__dialClientConn():(stdgo._internal.context.Context_context.Context, stdgo.GoString, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:check32 this._http2Transport._dialClientConn;
    public var _dialTLS(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__dialTLS():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:check32 this._http2Transport._dialTLS;
    public var _dialTLSWithContext(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__dialTLSWithContext():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } return @:check32 this._http2Transport._dialTLSWithContext;
    public var _disableCompression(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__disableCompression():() -> Bool return @:check32 this._http2Transport._disableCompression;
    public var _disableKeepAlives(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__disableKeepAlives():() -> Bool return @:check32 this._http2Transport._disableKeepAlives;
    public var _expectContinueTimeout(get, never) : () -> stdgo._internal.time.Time_duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__expectContinueTimeout():() -> stdgo._internal.time.Time_duration.Duration return @:check32 this._http2Transport._expectContinueTimeout;
    public var _idleConnTimeout(get, never) : () -> stdgo._internal.time.Time_duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__idleConnTimeout():() -> stdgo._internal.time.Time_duration.Duration return @:check32 this._http2Transport._idleConnTimeout;
    public var _initConnPool(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__initConnPool():() -> Void return @:check32 this._http2Transport._initConnPool;
    public var _logf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__logf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._http2Transport._logf;
    public var _maxDecoderHeaderTableSize(get, never) : () -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__maxDecoderHeaderTableSize():() -> stdgo.GoUInt32 return @:check32 this._http2Transport._maxDecoderHeaderTableSize;
    public var _maxEncoderHeaderTableSize(get, never) : () -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__maxEncoderHeaderTableSize():() -> stdgo.GoUInt32 return @:check32 this._http2Transport._maxEncoderHeaderTableSize;
    public var _maxFrameReadSize(get, never) : () -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__maxFrameReadSize():() -> stdgo.GoUInt32 return @:check32 this._http2Transport._maxFrameReadSize;
    public var _maxHeaderListSize(get, never) : () -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__maxHeaderListSize():() -> stdgo.GoUInt32 return @:check32 this._http2Transport._maxHeaderListSize;
    public var _newClientConn(get, never) : (stdgo._internal.net.Net_conn.Conn, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__newClientConn():(stdgo._internal.net.Net_conn.Conn, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:check32 this._http2Transport._newClientConn;
    public var _newTLSConfig(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newTLSConfig():stdgo.GoString -> stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> return @:check32 this._http2Transport._newTLSConfig;
    public var _pingTimeout(get, never) : () -> stdgo._internal.time.Time_duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__pingTimeout():() -> stdgo._internal.time.Time_duration.Duration return @:check32 this._http2Transport._pingTimeout;
    public var _vlogf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__vlogf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this._http2Transport._vlogf;
    public function __copy__() {
        return new T_http2noDialH2RoundTripper(_http2Transport);
    }
}
