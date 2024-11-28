package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.ClientSessionState_asInterface) class ClientSessionState_static_extension {
    @:keep
    static public function resumptionState( _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _2 : stdgo.Error; } {
        @:recv var _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState> = _cs;
        var _ticket = (null : stdgo.Slice<stdgo.GoUInt8>), _state = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _2 : stdgo.Error; } = { _0 : _cs._ticket, _1 : _cs._session, _2 : (null : stdgo.Error) };
            _ticket = __tmp__._0;
            _state = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
}
