package stdgo._internal.debug.macho;
class Dylib_asInterface {
    @:embedded
    public dynamic function raw():stdgo.Slice<stdgo.GoUInt8> return __self__.value.raw();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.macho.Macho_Dylib.Dylib>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
