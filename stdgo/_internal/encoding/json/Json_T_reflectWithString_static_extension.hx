package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_reflectWithString_asInterface) class T_reflectWithString_static_extension {
    @:keep
    static public function _resolve( _w:stdgo.Ref<stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString> = _w;
        if (_w._k.kind() == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _w._ks = (_w._k.string() : stdgo.GoString)?.__copy__();
            return (null : stdgo.Error);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_w._k.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler), _1 : false };
            }, _tm = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                if (((_w._k.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _w._k.isNil() : Bool)) {
                    return (null : stdgo.Error);
                };
                var __tmp__ = _tm.marshalText(), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _w._ks = (_buf : stdgo.GoString)?.__copy__();
                return _err;
            };
        };
        {
            final __value__ = _w._k.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _w._ks = stdgo._internal.strconv.Strconv_formatInt.formatInt(_w._k.int_(), (10 : stdgo.GoInt))?.__copy__();
                return (null : stdgo.Error);
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _w._ks = stdgo._internal.strconv.Strconv_formatUint.formatUint(_w._k.uint(), (10 : stdgo.GoInt))?.__copy__();
                return (null : stdgo.Error);
            };
        };
        throw stdgo.Go.toInterface(("unexpected map key type" : stdgo.GoString));
    }
}
