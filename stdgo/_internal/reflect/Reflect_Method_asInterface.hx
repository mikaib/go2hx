package stdgo._internal.reflect;
class Method_asInterface {
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.reflect.Reflect_Method.Method>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
