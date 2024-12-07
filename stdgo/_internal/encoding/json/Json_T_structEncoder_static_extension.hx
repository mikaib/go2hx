package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5291168:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5291173_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5291151:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5291068:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5291038:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5291004:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5291004 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5291022i32;
                } else if (__value__ == (5291022i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5291564i32;
                    } else {
                        _gotoNext = 5291568i32;
                    };
                } else if (__value__ == (5291064i32)) {
                    _f_5291068 = (stdgo.Go.setRef(_se._fields._list[(_i_5291038 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5291151 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5291068._index.length)) {
                        _gotoNext = 5291321i32;
                    } else {
                        _gotoNext = 5291327i32;
                    };
                } else if (__value__ == (5291187i32)) {
                    _i_5291168 = _f_5291068._index[(_i_5291173_0 : stdgo.GoInt)];
                    if (_fv_5291151.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5291224i32;
                    } else {
                        _gotoNext = 5291303i32;
                    };
                } else if (__value__ == (5291224i32)) {
                    if (_fv_5291151.isNil()) {
                        _gotoNext = 5291244i32;
                    } else {
                        _gotoNext = 5291280i32;
                    };
                } else if (__value__ == (5291244i32)) {
                    _i_5291038++;
                    _gotoNext = 5291565i32;
                } else if (__value__ == (5291280i32)) {
                    _fv_5291151 = _fv_5291151.elem()?.__copy__();
                    _gotoNext = 5291303i32;
                } else if (__value__ == (5291303i32)) {
                    _fv_5291151 = _fv_5291151.field(_i_5291168)?.__copy__();
                    _i_5291173_0++;
                    _gotoNext = 5291322i32;
                } else if (__value__ == (5291321i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5291068._index[(0i32 : stdgo.GoInt)];
                        _i_5291173_0 = __tmp__0;
                        _i_5291168 = __tmp__1;
                    };
                    _gotoNext = 5291322i32;
                } else if (__value__ == (5291322i32)) {
                    if (_i_5291173_0 < (_f_5291068._index.length)) {
                        _gotoNext = 5291187i32;
                    } else {
                        _gotoNext = 5291327i32;
                    };
                } else if (__value__ == (5291327i32)) {
                    if ((_f_5291068._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5291151?.__copy__()) : Bool)) {
                        _gotoNext = 5291362i32;
                    } else {
                        _gotoNext = 5291382i32;
                    };
                } else if (__value__ == (5291362i32)) {
                    _i_5291038++;
                    _gotoNext = 5291565i32;
                } else if (__value__ == (5291382i32)) {
                    _e.writeByte(_next_5291004);
                    _next_5291004 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5291434i32;
                    } else {
                        _gotoNext = 5291477i32;
                    };
                } else if (__value__ == (5291434i32)) {
                    _e.writeString(_f_5291068._nameEscHTML?.__copy__());
                    _gotoNext = 5291516i32;
                } else if (__value__ == (5291477i32)) {
                    _gotoNext = 5291477i32;
                    _e.writeString(_f_5291068._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5291516i32;
                } else if (__value__ == (5291516i32)) {
                    _opts._quoted = _f_5291068._quoted;
                    _f_5291068._encoder(_e, _fv_5291151?.__copy__(), _opts?.__copy__());
                    _i_5291038++;
                    _gotoNext = 5291565i32;
                } else if (__value__ == (5291564i32)) {
                    _i_5291038 = 0i32;
                    _gotoNext = 5291565i32;
                } else if (__value__ == (5291565i32)) {
                    if (_i_5291038 < (_se._fields._list.length)) {
                        _gotoNext = 5291064i32;
                    } else {
                        _gotoNext = 5291568i32;
                    };
                } else if (__value__ == (5291568i32)) {
                    if (_next_5291004 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5291583i32;
                    } else {
                        _gotoNext = 5291615i32;
                    };
                } else if (__value__ == (5291583i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5291639i32;
                } else if (__value__ == (5291615i32)) {
                    _gotoNext = 5291615i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5291639i32;
                } else if (__value__ == (5291639i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
