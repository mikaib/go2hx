package stdgo._internal.internal.xcoff;
class Section_asInterface {
    @:keep
    @:tdfield
    public dynamic function data():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.data();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readAt(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.readAt(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.xcoff.Xcoff_sectionpointer.SectionPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
