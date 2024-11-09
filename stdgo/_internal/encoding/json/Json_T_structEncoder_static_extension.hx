package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5666127:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5666097:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5666063:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5666227:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5666232_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5666210:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5666063 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5666081i32;
                } else if (__value__ == (5666081i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5666623i32;
                    } else {
                        _gotoNext = 5666627i32;
                    };
                } else if (__value__ == (5666123i32)) {
                    _f_5666127 = (stdgo.Go.setRef(_se._fields._list[(_i_5666097 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5666210 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5666127._index.length)) {
                        _gotoNext = 5666380i32;
                    } else {
                        _gotoNext = 5666386i32;
                    };
                } else if (__value__ == (5666246i32)) {
                    _i_5666227 = _f_5666127._index[(_i_5666232_0 : stdgo.GoInt)];
                    if (_fv_5666210.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5666283i32;
                    } else {
                        _gotoNext = 5666362i32;
                    };
                } else if (__value__ == (5666283i32)) {
                    if (_fv_5666210.isNil()) {
                        _gotoNext = 5666303i32;
                    } else {
                        _gotoNext = 5666339i32;
                    };
                } else if (__value__ == (5666303i32)) {
                    _i_5666097++;
                    _gotoNext = 5666624i32;
                } else if (__value__ == (5666339i32)) {
                    _fv_5666210 = _fv_5666210.elem()?.__copy__();
                    _gotoNext = 5666362i32;
                } else if (__value__ == (5666362i32)) {
                    _fv_5666210 = _fv_5666210.field(_i_5666227)?.__copy__();
                    _i_5666232_0++;
                    _gotoNext = 5666381i32;
                } else if (__value__ == (5666380i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5666127._index[(0i32 : stdgo.GoInt)];
                        _i_5666232_0 = __tmp__0;
                        _i_5666227 = __tmp__1;
                    };
                    _gotoNext = 5666381i32;
                } else if (__value__ == (5666381i32)) {
                    if (_i_5666232_0 < (_f_5666127._index.length)) {
                        _gotoNext = 5666246i32;
                    } else {
                        _gotoNext = 5666386i32;
                    };
                } else if (__value__ == (5666386i32)) {
                    if ((_f_5666127._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5666210?.__copy__()) : Bool)) {
                        _gotoNext = 5666421i32;
                    } else {
                        _gotoNext = 5666441i32;
                    };
                } else if (__value__ == (5666421i32)) {
                    _i_5666097++;
                    _gotoNext = 5666624i32;
                } else if (__value__ == (5666441i32)) {
                    _e.writeByte(_next_5666063);
                    _next_5666063 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5666493i32;
                    } else {
                        _gotoNext = 5666536i32;
                    };
                } else if (__value__ == (5666493i32)) {
                    _e.writeString(_f_5666127._nameEscHTML?.__copy__());
                    _gotoNext = 5666575i32;
                } else if (__value__ == (5666536i32)) {
                    _gotoNext = 5666536i32;
                    _e.writeString(_f_5666127._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5666575i32;
                } else if (__value__ == (5666575i32)) {
                    _opts._quoted = _f_5666127._quoted;
                    _f_5666127._encoder(_e, _fv_5666210?.__copy__(), _opts?.__copy__());
                    _i_5666097++;
                    _gotoNext = 5666624i32;
                } else if (__value__ == (5666623i32)) {
                    _i_5666097 = 0i32;
                    _gotoNext = 5666624i32;
                } else if (__value__ == (5666624i32)) {
                    if (_i_5666097 < (_se._fields._list.length)) {
                        _gotoNext = 5666123i32;
                    } else {
                        _gotoNext = 5666627i32;
                    };
                } else if (__value__ == (5666627i32)) {
                    if (_next_5666063 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5666642i32;
                    } else {
                        _gotoNext = 5666674i32;
                    };
                } else if (__value__ == (5666642i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5666698i32;
                } else if (__value__ == (5666674i32)) {
                    _gotoNext = 5666674i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5666698i32;
                } else if (__value__ == (5666698i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
