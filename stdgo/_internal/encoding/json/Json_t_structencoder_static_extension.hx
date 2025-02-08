package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5256463:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5256468_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5256446:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5256363:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5256333:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5256299:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5256299 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5256317i32;
                } else if (__value__ == (5256317i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5256859i32;
                    } else {
                        _gotoNext = 5256863i32;
                    };
                } else if (__value__ == (5256359i32)) {
                    _f_5256363 = (stdgo.Go.setRef(_se._fields._list[(_i_5256333 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5256446 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5256363 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5256616i32;
                    } else {
                        _gotoNext = 5256622i32;
                    };
                } else if (__value__ == (5256482i32)) {
                    _i_5256463 = (@:checkr _f_5256363 ?? throw "null pointer dereference")._index[(_i_5256468_0 : stdgo.GoInt)];
                    if (_fv_5256446.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5256519i32;
                    } else {
                        _gotoNext = 5256598i32;
                    };
                } else if (__value__ == (5256519i32)) {
                    if (_fv_5256446.isNil()) {
                        _gotoNext = 5256539i32;
                    } else {
                        _gotoNext = 5256575i32;
                    };
                } else if (__value__ == (5256539i32)) {
                    _i_5256333++;
                    _gotoNext = 5256860i32;
                } else if (__value__ == (5256575i32)) {
                    _fv_5256446 = _fv_5256446.elem()?.__copy__();
                    _gotoNext = 5256598i32;
                } else if (__value__ == (5256598i32)) {
                    _fv_5256446 = _fv_5256446.field(_i_5256463)?.__copy__();
                    _i_5256468_0++;
                    _gotoNext = 5256617i32;
                } else if (__value__ == (5256616i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5256363 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5256468_0 = __tmp__0;
                        _i_5256463 = __tmp__1;
                    };
                    _gotoNext = 5256617i32;
                } else if (__value__ == (5256617i32)) {
                    if (_i_5256468_0 < ((@:checkr _f_5256363 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5256482i32;
                    } else {
                        _gotoNext = 5256622i32;
                    };
                } else if (__value__ == (5256622i32)) {
                    if (((@:checkr _f_5256363 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5256446?.__copy__()) : Bool)) {
                        _gotoNext = 5256657i32;
                    } else {
                        _gotoNext = 5256677i32;
                    };
                } else if (__value__ == (5256657i32)) {
                    _i_5256333++;
                    _gotoNext = 5256860i32;
                } else if (__value__ == (5256677i32)) {
                    @:check2r _e.writeByte(_next_5256299);
                    _next_5256299 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5256729i32;
                    } else {
                        _gotoNext = 5256772i32;
                    };
                } else if (__value__ == (5256729i32)) {
                    @:check2r _e.writeString((@:checkr _f_5256363 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5256811i32;
                } else if (__value__ == (5256772i32)) {
                    _gotoNext = 5256772i32;
                    @:check2r _e.writeString((@:checkr _f_5256363 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5256811i32;
                } else if (__value__ == (5256811i32)) {
                    _opts._quoted = (@:checkr _f_5256363 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5256363 ?? throw "null pointer dereference")._encoder(_e, _fv_5256446?.__copy__(), _opts?.__copy__());
                    _i_5256333++;
                    _gotoNext = 5256860i32;
                } else if (__value__ == (5256859i32)) {
                    _i_5256333 = 0i32;
                    _gotoNext = 5256860i32;
                } else if (__value__ == (5256860i32)) {
                    if (_i_5256333 < (_se._fields._list.length)) {
                        _gotoNext = 5256359i32;
                    } else {
                        _gotoNext = 5256863i32;
                    };
                } else if (__value__ == (5256863i32)) {
                    if (_next_5256299 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5256878i32;
                    } else {
                        _gotoNext = 5256910i32;
                    };
                } else if (__value__ == (5256878i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5256934i32;
                } else if (__value__ == (5256910i32)) {
                    _gotoNext = 5256910i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5256934i32;
                } else if (__value__ == (5256934i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
