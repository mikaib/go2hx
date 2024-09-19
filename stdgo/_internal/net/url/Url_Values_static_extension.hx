package stdgo._internal.net.url;
@:keep @:allow(stdgo._internal.net.url.Url.Values_asInterface) class Values_static_extension {
    @:keep
    static public function encode( _v:stdgo._internal.net.url.Url_Values.Values):stdgo.GoString {
        @:recv var _v:stdgo._internal.net.url.Url_Values.Values = _v;
        if (_v == null) {
            return stdgo.Go.str()?.__copy__();
        };
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _keys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_v.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _ in _v) {
            _keys = (_keys.__append__(_k?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_keys);
        for (__0 => _k in _keys) {
            var _vs = (_v[_k] ?? (null : stdgo.Slice<stdgo.GoString>));
            var _keyEscaped = (stdgo._internal.net.url.Url_queryEscape.queryEscape(_k?.__copy__())?.__copy__() : stdgo.GoString);
            for (__1 => _v in _vs) {
                if ((_buf.len() > (0 : stdgo.GoInt) : Bool)) {
                    _buf.writeByte((38 : stdgo.GoUInt8));
                };
                _buf.writeString(_keyEscaped?.__copy__());
                _buf.writeByte((61 : stdgo.GoUInt8));
                _buf.writeString(stdgo._internal.net.url.Url_queryEscape.queryEscape(_v?.__copy__())?.__copy__());
            };
        };
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function has( _v:stdgo._internal.net.url.Url_Values.Values, _key:stdgo.GoString):Bool {
        @:recv var _v:stdgo._internal.net.url.Url_Values.Values = _v;
        var __tmp__ = (_v != null && _v.exists(_key?.__copy__()) ? { _0 : _v[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
    @:keep
    static public function del( _v:stdgo._internal.net.url.Url_Values.Values, _key:stdgo.GoString):Void {
        @:recv var _v:stdgo._internal.net.url.Url_Values.Values = _v;
        if (_v != null) _v.remove(_key);
    }
    @:keep
    static public function add( _v:stdgo._internal.net.url.Url_Values.Values, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _v:stdgo._internal.net.url.Url_Values.Values = _v;
        _v[_key] = ((_v[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()));
    }
    @:keep
    static public function set( _v:stdgo._internal.net.url.Url_Values.Values, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _v:stdgo._internal.net.url.Url_Values.Values = _v;
        _v[_key] = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_value?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    static public function get( _v:stdgo._internal.net.url.Url_Values.Values, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _v:stdgo._internal.net.url.Url_Values.Values = _v;
        var _vs = (_v[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
        if ((_vs.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        return _vs[(0 : stdgo.GoInt)]?.__copy__();
    }
}
