package stdgo._internal.net.http;
class T_timeoutHandler_asInterface {
    @:keep
    public dynamic function serveHTTP(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void __self__.value.serveHTTP(_w, _r);
    @:keep
    public dynamic function _errorBody():stdgo.GoString return __self__.value._errorBody();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
