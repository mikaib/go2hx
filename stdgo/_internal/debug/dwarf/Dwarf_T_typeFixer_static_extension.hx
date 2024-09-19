package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.T_typeFixer_asInterface) class T_typeFixer_static_extension {
    @:keep
    static public function _apply( _tf:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>):Void {
        @:recv var _tf:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer> = _tf;
        for (__3 => _t in _tf._typedefs) {
            _t.common().byteSize = _t.type.size();
        };
        for (__4 => _t in _tf._arraytypes) {
            stdgo._internal.debug.dwarf.Dwarf__zeroArray._zeroArray(_t);
        };
    }
    @:keep
    static public function _recordArrayType( _tf:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>, _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>):Void {
        @:recv var _tf:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer> = _tf;
        if (_t == null || (_t : Dynamic).__nil__) {
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(((_t : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_))) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>)) : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_ArrayType.ArrayType>), _1 : false };
        }, __3 = __tmp__._0, _ok = __tmp__._1;
        if (_ok) {
            _tf._arraytypes = (_tf._arraytypes.__append__(_t));
        };
    }
}
