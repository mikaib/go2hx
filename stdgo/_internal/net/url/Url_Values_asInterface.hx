package stdgo._internal.net.url;
class Values_asInterface {
    @:keep
    public dynamic function encode():stdgo.GoString return __self__.value.encode();
    @:keep
    public dynamic function has(_key:stdgo.GoString):Bool return __self__.value.has(_key);
    @:keep
    public dynamic function del(_key:stdgo.GoString):Void __self__.value.del(_key);
    @:keep
    public dynamic function add(_key:stdgo.GoString, _value:stdgo.GoString):Void __self__.value.add(_key, _value);
    @:keep
    public dynamic function set(_key:stdgo.GoString, _value:stdgo.GoString):Void __self__.value.set(_key, _value);
    @:keep
    public dynamic function get(_key:stdgo.GoString):stdgo.GoString return __self__.value.get(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.url.Url_Values.Values>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
