package stdgo._internal.runtime;
class TimeHistogram_asInterface {
    @:keep
    public dynamic function record(_duration:stdgo.GoInt64):Void __self__.value.record(_duration);
    @:keep
    public dynamic function count(_bucket:stdgo.GoInt, _subBucket:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } return __self__.value.count(_bucket, _subBucket);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_TimeHistogram.TimeHistogram>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
