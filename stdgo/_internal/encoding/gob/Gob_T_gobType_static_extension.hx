package stdgo._internal.encoding.gob;
@:keep class T_gobType_static_extension {
    static public function _safeString(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString return t._safeString(_seen);
    static public function _string(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):stdgo.GoString return t._string();
    static public function _name(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):stdgo.GoString return t._name();
    static public function _setId(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void t._setId(_id);
    static public function _id(t:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return t._id();
}
