package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_sparseArray_asInterface) class T_sparseArray_static_extension {
    @:keep
    static public function _maxEntries( _s:stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray):stdgo.GoInt {
        @:recv var _s:stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray = _s;
        return ((_s.length) / (24 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function _isExtended( _s:stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray = _s;
        return ((_s.__slice__(((24 : stdgo.GoInt) * _s._maxEntries() : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray).__slice__(0, (1 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray);
    }
    @:keep
    static public function _entry( _s:stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray, _i:stdgo.GoInt):stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem {
        @:recv var _s:stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray = _s;
        return ((_s.__slice__((_i * (24 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_T_sparseArray.T_sparseArray) : stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem);
    }
}
