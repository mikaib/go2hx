package stdgo._internal.net.http;
class T_socksUsernamePassword_asInterface {
    @:keep
    @:tdfield
    public dynamic function authenticate(_ctx:stdgo._internal.context.Context_context.Context, _rw:stdgo._internal.io.Io_readwriter.ReadWriter, _auth:stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod):stdgo.Error return @:_0 __self__.value.authenticate(_ctx, _rw, _auth);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_socksusernamepasswordpointer.T_socksUsernamePasswordPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
