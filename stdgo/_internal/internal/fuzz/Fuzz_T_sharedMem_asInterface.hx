package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
class T_sharedMem_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _setValueLen(_n:stdgo.GoInt):Void __self__.value._setValueLen(_n);
    @:keep
    public dynamic function _setValue(_b:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._setValue(_b);
    @:keep
    public dynamic function _valueCopy():stdgo.Slice<stdgo.GoUInt8> return __self__.value._valueCopy();
    @:keep
    public dynamic function _valueRef():stdgo.Slice<stdgo.GoUInt8> return __self__.value._valueRef();
    @:keep
    public dynamic function _header():stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader.T_sharedMemHeader> return __self__.value._header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
