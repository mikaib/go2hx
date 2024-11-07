package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5296151:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5296121:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5296087:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5296251:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5296256_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5296234:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5296087 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5296105i32;
                } else if (__value__ == (5296105i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5296647i32;
                    } else {
                        _gotoNext = 5296651i32;
                    };
                } else if (__value__ == (5296147i32)) {
                    _f_5296151 = (stdgo.Go.setRef(_se._fields._list[(_i_5296121 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5296234 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5296151._index.length)) {
                        _gotoNext = 5296404i32;
                    } else {
                        _gotoNext = 5296410i32;
                    };
                } else if (__value__ == (5296270i32)) {
                    _i_5296251 = _f_5296151._index[(_i_5296256_0 : stdgo.GoInt)];
                    if (_fv_5296234.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5296307i32;
                    } else {
                        _gotoNext = 5296386i32;
                    };
                } else if (__value__ == (5296307i32)) {
                    if (_fv_5296234.isNil()) {
                        _gotoNext = 5296327i32;
                    } else {
                        _gotoNext = 5296363i32;
                    };
                } else if (__value__ == (5296327i32)) {
                    _i_5296121++;
                    _gotoNext = 5296648i32;
                } else if (__value__ == (5296363i32)) {
                    _fv_5296234 = _fv_5296234.elem()?.__copy__();
                    _gotoNext = 5296386i32;
                } else if (__value__ == (5296386i32)) {
                    _fv_5296234 = _fv_5296234.field(_i_5296251)?.__copy__();
                    _i_5296256_0++;
                    _gotoNext = 5296405i32;
                } else if (__value__ == (5296404i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5296151._index[(0i32 : stdgo.GoInt)];
                        _i_5296256_0 = __tmp__0;
                        _i_5296251 = __tmp__1;
                    };
                    _gotoNext = 5296405i32;
                } else if (__value__ == (5296405i32)) {
                    if (_i_5296256_0 < (_f_5296151._index.length)) {
                        _gotoNext = 5296270i32;
                    } else {
                        _gotoNext = 5296410i32;
                    };
                } else if (__value__ == (5296410i32)) {
                    if ((_f_5296151._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5296234?.__copy__()) : Bool)) {
                        _gotoNext = 5296445i32;
                    } else {
                        _gotoNext = 5296465i32;
                    };
                } else if (__value__ == (5296445i32)) {
                    _i_5296121++;
                    _gotoNext = 5296648i32;
                } else if (__value__ == (5296465i32)) {
                    _e.writeByte(_next_5296087);
                    _next_5296087 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5296517i32;
                    } else {
                        _gotoNext = 5296560i32;
                    };
                } else if (__value__ == (5296517i32)) {
                    _e.writeString(_f_5296151._nameEscHTML?.__copy__());
                    _gotoNext = 5296599i32;
                } else if (__value__ == (5296560i32)) {
                    _e.writeString(_f_5296151._nameNonEsc?.__copy__());
                    _gotoNext = 5296599i32;
                } else if (__value__ == (5296599i32)) {
                    _opts._quoted = _f_5296151._quoted;
                    _f_5296151._encoder(_e, _fv_5296234?.__copy__(), _opts?.__copy__());
                    _i_5296121++;
                    _gotoNext = 5296648i32;
                } else if (__value__ == (5296647i32)) {
                    _i_5296121 = 0i32;
                    _gotoNext = 5296648i32;
                } else if (__value__ == (5296648i32)) {
                    if (_i_5296121 < (_se._fields._list.length)) {
                        _gotoNext = 5296147i32;
                    } else {
                        _gotoNext = 5296651i32;
                    };
                } else if (__value__ == (5296651i32)) {
                    if (_next_5296087 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5296666i32;
                    } else {
                        _gotoNext = 5296698i32;
                    };
                } else if (__value__ == (5296666i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5296722i32;
                } else if (__value__ == (5296698i32)) {
                    _e.writeByte((125 : stdgo.GoUInt8));
                    _gotoNext = 5296722i32;
                } else if (__value__ == (5296722i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
