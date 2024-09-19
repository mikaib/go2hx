package stdgo._internal.archive.tar;
class T_headerUSTAR_asInterface {
    @:keep
    public dynamic function _prefix():stdgo.Slice<stdgo.GoUInt8> return __self__.value._prefix();
    @:keep
    public dynamic function _devMinor():stdgo.Slice<stdgo.GoUInt8> return __self__.value._devMinor();
    @:keep
    public dynamic function _devMajor():stdgo.Slice<stdgo.GoUInt8> return __self__.value._devMajor();
    @:keep
    public dynamic function _groupName():stdgo.Slice<stdgo.GoUInt8> return __self__.value._groupName();
    @:keep
    public dynamic function _userName():stdgo.Slice<stdgo.GoUInt8> return __self__.value._userName();
    @:keep
    public dynamic function _version():stdgo.Slice<stdgo.GoUInt8> return __self__.value._version();
    @:keep
    public dynamic function _magic():stdgo.Slice<stdgo.GoUInt8> return __self__.value._magic();
    @:keep
    public dynamic function _v7():stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> return __self__.value._v7();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.tar.Tar_T_headerUSTAR.T_headerUSTAR>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
