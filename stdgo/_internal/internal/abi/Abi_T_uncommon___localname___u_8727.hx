package stdgo._internal.internal.abi;
@:structInit class T_uncommon___localname___u_8727 {
    @:embedded
    public var chanType : stdgo._internal.internal.abi.Abi_ChanType.ChanType = ({} : stdgo._internal.internal.abi.Abi_ChanType.ChanType);
    public var _u : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType = ({} : stdgo._internal.internal.abi.Abi_UncommonType.UncommonType);
    public function new(?chanType:stdgo._internal.internal.abi.Abi_ChanType.ChanType, ?_u:stdgo._internal.internal.abi.Abi_UncommonType.UncommonType) {
        if (chanType != null) this.chanType = chanType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_align():() -> stdgo.GoInt return @:check3 this.chanType.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType>;
    @:embedded
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_ArrayType.ArrayType> return @:check3 this.chanType.arrayType;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_ChanDir.ChanDir;
    @:embedded
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_ChanDir.ChanDir return @:check3 this.chanType.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>;
    @:embedded
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return @:check3 this.chanType.common;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method>;
    @:embedded
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> return @:check3 this.chanType.exportedMethods;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_fieldAlign():() -> stdgo.GoInt return @:check3 this.chanType.fieldAlign;
    public var funcType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>;
    @:embedded
    public function get_funcType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType> return @:check3 this.chanType.funcType;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check3 this.chanType.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    public function get_hasName():() -> Bool return @:check3 this.chanType.hasName;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    public function get_ifaceIndir():() -> Bool return @:check3 this.chanType.ifaceIndir;
    public var interfaceType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType>;
    @:embedded
    public function get_interfaceType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType> return @:check3 this.chanType.interfaceType;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    public function get_isDirectIface():() -> Bool return @:check3 this.chanType.isDirectIface;
    public var key(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>;
    @:embedded
    public function get_key():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_> return @:check3 this.chanType.key;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_Kind.Kind;
    @:embedded
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_Kind.Kind return @:check3 this.chanType.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_len():() -> stdgo.GoInt return @:check3 this.chanType.len;
    public var mapType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType>;
    @:embedded
    public function get_mapType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_MapType.MapType> return @:check3 this.chanType.mapType;
    public var numMethod(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_numMethod():() -> stdgo.GoInt return @:check3 this.chanType.numMethod;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    public function get_pointers():() -> Bool return @:check3 this.chanType.pointers;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    public function get_size():() -> stdgo.GoUIntptr return @:check3 this.chanType.size;
    public var structType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType>;
    @:embedded
    public function get_structType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_StructType.StructType> return @:check3 this.chanType.structType;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType>;
    @:embedded
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> return @:check3 this.chanType.uncommon;
    public function __copy__() {
        return new T_uncommon___localname___u_8727(chanType, _u);
    }
}
