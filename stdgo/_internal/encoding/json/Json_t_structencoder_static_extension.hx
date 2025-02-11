package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5303278:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5303283_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5303261:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5303178:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5303148:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5303114:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5303114 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5303132i32;
                } else if (__value__ == (5303132i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5303674i32;
                    } else {
                        _gotoNext = 5303678i32;
                    };
                } else if (__value__ == (5303174i32)) {
                    _f_5303178 = (stdgo.Go.setRef(_se._fields._list[(_i_5303148 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5303261 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5303178 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5303431i32;
                    } else {
                        _gotoNext = 5303437i32;
                    };
                } else if (__value__ == (5303297i32)) {
                    _i_5303278 = (@:checkr _f_5303178 ?? throw "null pointer dereference")._index[(_i_5303283_0 : stdgo.GoInt)];
                    if (_fv_5303261.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5303334i32;
                    } else {
                        _gotoNext = 5303413i32;
                    };
                } else if (__value__ == (5303334i32)) {
                    if (_fv_5303261.isNil()) {
                        _gotoNext = 5303354i32;
                    } else {
                        _gotoNext = 5303390i32;
                    };
                } else if (__value__ == (5303354i32)) {
                    _i_5303148++;
                    _gotoNext = 5303675i32;
                } else if (__value__ == (5303390i32)) {
                    _fv_5303261 = _fv_5303261.elem()?.__copy__();
                    _gotoNext = 5303413i32;
                } else if (__value__ == (5303413i32)) {
                    _fv_5303261 = _fv_5303261.field(_i_5303278)?.__copy__();
                    _i_5303283_0++;
                    _gotoNext = 5303432i32;
                } else if (__value__ == (5303431i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5303178 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5303283_0 = __tmp__0;
                        _i_5303278 = __tmp__1;
                    };
                    _gotoNext = 5303432i32;
                } else if (__value__ == (5303432i32)) {
                    if (_i_5303283_0 < ((@:checkr _f_5303178 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5303297i32;
                    } else {
                        _gotoNext = 5303437i32;
                    };
                } else if (__value__ == (5303437i32)) {
                    if (((@:checkr _f_5303178 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5303261?.__copy__()) : Bool)) {
                        _gotoNext = 5303472i32;
                    } else {
                        _gotoNext = 5303492i32;
                    };
                } else if (__value__ == (5303472i32)) {
                    _i_5303148++;
                    _gotoNext = 5303675i32;
                } else if (__value__ == (5303492i32)) {
                    @:check2r _e.writeByte(_next_5303114);
                    _next_5303114 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5303544i32;
                    } else {
                        _gotoNext = 5303587i32;
                    };
                } else if (__value__ == (5303544i32)) {
                    @:check2r _e.writeString((@:checkr _f_5303178 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5303626i32;
                } else if (__value__ == (5303587i32)) {
                    _gotoNext = 5303587i32;
                    @:check2r _e.writeString((@:checkr _f_5303178 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5303626i32;
                } else if (__value__ == (5303626i32)) {
                    _opts._quoted = (@:checkr _f_5303178 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5303178 ?? throw "null pointer dereference")._encoder(_e, _fv_5303261?.__copy__(), _opts?.__copy__());
                    _i_5303148++;
                    _gotoNext = 5303675i32;
                } else if (__value__ == (5303674i32)) {
                    _i_5303148 = 0i32;
                    _gotoNext = 5303675i32;
                } else if (__value__ == (5303675i32)) {
                    if (_i_5303148 < (_se._fields._list.length)) {
                        _gotoNext = 5303174i32;
                    } else {
                        _gotoNext = 5303678i32;
                    };
                } else if (__value__ == (5303678i32)) {
                    if (_next_5303114 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5303693i32;
                    } else {
                        _gotoNext = 5303725i32;
                    };
                } else if (__value__ == (5303693i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5303749i32;
                } else if (__value__ == (5303725i32)) {
                    _gotoNext = 5303725i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5303749i32;
                } else if (__value__ == (5303749i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
