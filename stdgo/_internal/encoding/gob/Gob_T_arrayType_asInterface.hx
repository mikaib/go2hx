package stdgo._internal.encoding.gob;
class T_arrayType_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _safeString(_seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString return __self__.value._safeString(_seen);
    @:keep
    public dynamic function _init(_elem:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _len:stdgo.GoInt):Void __self__.value._init(_elem, _len);
    @:embedded
    public dynamic function _setId(__0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void __self__.value._setId(__0);
    @:embedded
    public dynamic function _name():stdgo.GoString return __self__.value._name();
    @:embedded
    public dynamic function _id():stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
