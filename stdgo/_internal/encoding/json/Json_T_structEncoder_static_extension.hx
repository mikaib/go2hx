package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5351417:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5351422_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5351400:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5351317:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5351287:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5351253:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5351253 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5351271i32;
                } else if (__value__ == (5351271i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5351813i32;
                    } else {
                        _gotoNext = 5351817i32;
                    };
                } else if (__value__ == (5351313i32)) {
                    _f_5351317 = (stdgo.Go.setRef(_se._fields._list[(_i_5351287 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5351400 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5351317 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5351570i32;
                    } else {
                        _gotoNext = 5351576i32;
                    };
                } else if (__value__ == (5351436i32)) {
                    _i_5351417 = (@:checkr _f_5351317 ?? throw "null pointer dereference")._index[(_i_5351422_0 : stdgo.GoInt)];
                    if (_fv_5351400.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5351473i32;
                    } else {
                        _gotoNext = 5351552i32;
                    };
                } else if (__value__ == (5351473i32)) {
                    if (_fv_5351400.isNil()) {
                        _gotoNext = 5351493i32;
                    } else {
                        _gotoNext = 5351529i32;
                    };
                } else if (__value__ == (5351493i32)) {
                    _i_5351287++;
                    _gotoNext = 5351814i32;
                } else if (__value__ == (5351529i32)) {
                    _fv_5351400 = _fv_5351400.elem()?.__copy__();
                    _gotoNext = 5351552i32;
                } else if (__value__ == (5351552i32)) {
                    _fv_5351400 = _fv_5351400.field(_i_5351417)?.__copy__();
                    _i_5351422_0++;
                    _gotoNext = 5351571i32;
                } else if (__value__ == (5351570i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5351317 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5351422_0 = __tmp__0;
                        _i_5351417 = __tmp__1;
                    };
                    _gotoNext = 5351571i32;
                } else if (__value__ == (5351571i32)) {
                    if (_i_5351422_0 < ((@:checkr _f_5351317 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5351436i32;
                    } else {
                        _gotoNext = 5351576i32;
                    };
                } else if (__value__ == (5351576i32)) {
                    if (((@:checkr _f_5351317 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5351400?.__copy__()) : Bool)) {
                        _gotoNext = 5351611i32;
                    } else {
                        _gotoNext = 5351631i32;
                    };
                } else if (__value__ == (5351611i32)) {
                    _i_5351287++;
                    _gotoNext = 5351814i32;
                } else if (__value__ == (5351631i32)) {
                    @:check2r _e.writeByte(_next_5351253);
                    _next_5351253 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5351683i32;
                    } else {
                        _gotoNext = 5351726i32;
                    };
                } else if (__value__ == (5351683i32)) {
                    @:check2r _e.writeString((@:checkr _f_5351317 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5351765i32;
                } else if (__value__ == (5351726i32)) {
                    _gotoNext = 5351726i32;
                    @:check2r _e.writeString((@:checkr _f_5351317 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5351765i32;
                } else if (__value__ == (5351765i32)) {
                    _opts._quoted = (@:checkr _f_5351317 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5351317 ?? throw "null pointer dereference")._encoder(_e, _fv_5351400?.__copy__(), _opts?.__copy__());
                    _i_5351287++;
                    _gotoNext = 5351814i32;
                } else if (__value__ == (5351813i32)) {
                    _i_5351287 = 0i32;
                    _gotoNext = 5351814i32;
                } else if (__value__ == (5351814i32)) {
                    if (_i_5351287 < (_se._fields._list.length)) {
                        _gotoNext = 5351313i32;
                    } else {
                        _gotoNext = 5351817i32;
                    };
                } else if (__value__ == (5351817i32)) {
                    if (_next_5351253 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5351832i32;
                    } else {
                        _gotoNext = 5351864i32;
                    };
                } else if (__value__ == (5351832i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5351888i32;
                } else if (__value__ == (5351864i32)) {
                    _gotoNext = 5351864i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5351888i32;
                } else if (__value__ == (5351888i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
