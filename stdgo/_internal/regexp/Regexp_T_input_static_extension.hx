package stdgo._internal.regexp;
@:keep class T_input_static_extension {
    static public function _context(t:T_input, _pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag return t._context(_pos);
    static public function _index(t:T_input, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt return t._index(_re, _pos);
    static public function _hasPrefix(t:T_input, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool return t._hasPrefix(_re);
    static public function _canCheckPrefix(t:T_input):Bool return t._canCheckPrefix();
    static public function _step(t:T_input, _pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return t._step(_pos);
}
