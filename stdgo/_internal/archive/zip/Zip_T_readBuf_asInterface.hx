package stdgo._internal.archive.zip;
class T_readBuf_asInterface {
    @:keep
    public dynamic function _sub(_n:stdgo.GoInt):stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf return __self__.value._sub(_n);
    @:keep
    public dynamic function _uint64():stdgo.GoUInt64 return __self__.value._uint64();
    @:keep
    public dynamic function _uint32():stdgo.GoUInt32 return __self__.value._uint32();
    @:keep
    public dynamic function _uint16():stdgo.GoUInt16 return __self__.value._uint16();
    @:keep
    public dynamic function _uint8():stdgo.GoUInt8 return __self__.value._uint8();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
