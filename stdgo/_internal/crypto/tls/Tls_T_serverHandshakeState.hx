package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_serverHandshakeState_static_extension.T_serverHandshakeState_static_extension) class T_serverHandshakeState {
    public var _c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
    public var _hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
    public var _suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>);
    public var _ecdheOk : Bool = false;
    public var _ecSignOk : Bool = false;
    public var _rsaDecryptOk : Bool = false;
    public var _rsaSignOk : Bool = false;
    public var _sessionState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
    public var _finishedHash : stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash = ({} : stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash);
    public var _masterSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cert : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
    public function new(?_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, ?_hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>, ?_suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>, ?_ecdheOk:Bool, ?_ecSignOk:Bool, ?_rsaDecryptOk:Bool, ?_rsaSignOk:Bool, ?_sessionState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>, ?_finishedHash:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash, ?_masterSecret:stdgo.Slice<stdgo.GoUInt8>, ?_cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>) {
        if (_c != null) this._c = _c;
        if (_ctx != null) this._ctx = _ctx;
        if (_clientHello != null) this._clientHello = _clientHello;
        if (_hello != null) this._hello = _hello;
        if (_suite != null) this._suite = _suite;
        if (_ecdheOk != null) this._ecdheOk = _ecdheOk;
        if (_ecSignOk != null) this._ecSignOk = _ecSignOk;
        if (_rsaDecryptOk != null) this._rsaDecryptOk = _rsaDecryptOk;
        if (_rsaSignOk != null) this._rsaSignOk = _rsaSignOk;
        if (_sessionState != null) this._sessionState = _sessionState;
        if (_finishedHash != null) this._finishedHash = _finishedHash;
        if (_masterSecret != null) this._masterSecret = _masterSecret;
        if (_cert != null) this._cert = _cert;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serverHandshakeState(
_c,
_ctx,
_clientHello,
_hello,
_suite,
_ecdheOk,
_ecSignOk,
_rsaDecryptOk,
_rsaSignOk,
_sessionState,
_finishedHash,
_masterSecret,
_cert);
    }
}
