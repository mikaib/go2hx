package stdgo._internal.testing;
@:keep class T_filterMatch_static_extension {
    static public function _verify(t:T_filterMatch, _name:stdgo.GoString, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):stdgo.Error return t._verify(_name, _matchString);
    static public function _matches(t:T_filterMatch, _name:stdgo.Slice<stdgo.GoString>, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):{ var _0 : Bool; var _1 : Bool; } return t._matches(_name, _matchString);
}
