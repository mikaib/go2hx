package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_284991:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_284685:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_285321:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_285326_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_285109:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_284690:stdgo.GoString = ("" : stdgo.GoString);
        var _i_284391:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_284377:stdgo.GoString = ("" : stdgo.GoString);
        var _enable_284751:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 284351i32;
                } else if (__value__ == (284351i32)) {
                    var __blank__ = 0i32;
                    _fieldBreak = false;
                    _gotoNext = 284359i32;
                } else if (__value__ == (284359i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 284373i32;
                    } else {
                        _gotoNext = 285314i32;
                    };
                } else if (__value__ == (284373i32)) {
                    _field_284377 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_284391 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_284391 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 284427i32;
                    } else {
                        _gotoNext = 284462i32;
                    };
                } else if (__value__ == (284427i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_284377 = __tmp__0;
                        _env = __tmp__1;
                    };
                    _gotoNext = 284505i32;
                } else if (__value__ == (284462i32)) {
                    _gotoNext = 284462i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_284391) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_284391 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_284377 = __tmp__0;
                        _env = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 284505i32;
                } else if (__value__ == (284505i32)) {
                    if ((((_field_284377.length) < (4 : stdgo.GoInt) : Bool) || ((_field_284377.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 284546i32;
                    } else {
                        _gotoNext = 284566i32;
                    };
                } else if (__value__ == (284546i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 284359i32;
                } else if (__value__ == (284566i32)) {
                    _i_284391 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_284377?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_284391 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 284603i32;
                    } else {
                        _gotoNext = 284685i32;
                    };
                } else if (__value__ == (284603i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_284377, ("\"\n" : stdgo.GoString));
                    var __blank__ = 0i32;
                    _gotoNext = 284359i32;
                } else if (__value__ == (284685i32)) {
                    {
                        final __tmp__0 = (_field_284377.__slice__((4 : stdgo.GoInt), _i_284391) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_284377.__slice__((_i_284391 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_284685 = __tmp__0;
                        _value_284690 = __tmp__1;
                    };
                    _gotoNext = 284765i32;
                } else if (__value__ == (284765i32)) {
                    {
                        final __value__ = _value_284690;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 284782i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 284812i32;
                        } else {
                            _gotoNext = 284844i32;
                        };
                    };
                } else if (__value__ == (284782i32)) {
                    _enable_284751 = true;
                    _gotoNext = 284966i32;
                } else if (__value__ == (284812i32)) {
                    _enable_284751 = false;
                    _gotoNext = 284966i32;
                } else if (__value__ == (284844i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_284690, ("\" not supported for cpu option \"" : stdgo.GoString), _key_284685, ("\"\n" : stdgo.GoString));
                    _gotoNext = 284359i32;
                } else if (__value__ == (284966i32)) {
                    if (_key_284685 == (("all" : stdgo.GoString))) {
                        _gotoNext = 284982i32;
                    } else {
                        _gotoNext = 285105i32;
                    };
                } else if (__value__ == (284982i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285077i32;
                    } else {
                        _gotoNext = 285083i32;
                    };
                } else if (__value__ == (285010i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_284991 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_284991 : stdgo.GoInt)].enable = _enable_284751;
                    _i_284991++;
                    _gotoNext = 285078i32;
                } else if (__value__ == (285077i32)) {
                    _i_284991 = 0i32;
                    _gotoNext = 285078i32;
                } else if (__value__ == (285078i32)) {
                    if (_i_284991 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285010i32;
                    } else {
                        _gotoNext = 285083i32;
                    };
                } else if (__value__ == (285083i32)) {
                    _gotoNext = 284359i32;
                } else if (__value__ == (285105i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285249i32;
                    } else {
                        _gotoNext = 285255i32;
                    };
                } else if (__value__ == (285109i32)) {
                    _i_285109++;
                    _gotoNext = 285250i32;
                } else if (__value__ == (285128i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_285109 : stdgo.GoInt)].name == (_key_284685)) {
                        _gotoNext = 285159i32;
                    } else {
                        _gotoNext = 285109i32;
                    };
                } else if (__value__ == (285159i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_285109 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_285109 : stdgo.GoInt)].enable = _enable_284751;
                    _gotoNext = 284359i32;
                } else if (__value__ == (285249i32)) {
                    _i_285109 = 0i32;
                    _gotoNext = 285250i32;
                } else if (__value__ == (285250i32)) {
                    if (_i_285109 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285128i32;
                    } else {
                        _gotoNext = 285255i32;
                    };
                } else if (__value__ == (285255i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_284685, ("\"\n" : stdgo.GoString));
                    _gotoNext = 284359i32;
                } else if (__value__ == (285314i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285527i32;
                    } else {
                        _gotoNext = 285530i32;
                    };
                } else if (__value__ == (285340i32)) {
                    _o_285321 = stdgo._internal.internal.cpu.Cpu__options._options[(_i_285326_0 : stdgo.GoInt)];
                    if (!_o_285321.specified) {
                        _gotoNext = 285360i32;
                    } else {
                        _gotoNext = 285381i32;
                    };
                } else if (__value__ == (285360i32)) {
                    _i_285326_0++;
                    _gotoNext = 285528i32;
                } else if (__value__ == (285381i32)) {
                    if ((_o_285321.enable && !_o_285321.feature.value : Bool)) {
                        _gotoNext = 285408i32;
                    } else {
                        _gotoNext = 285505i32;
                    };
                } else if (__value__ == (285408i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_285321.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _i_285326_0++;
                    _gotoNext = 285528i32;
                } else if (__value__ == (285505i32)) {
                    _o_285321.feature.value = _o_285321.enable;
                    _i_285326_0++;
                    _gotoNext = 285528i32;
                } else if (__value__ == (285527i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _i_285326_0 = __tmp__0;
                        _o_285321 = __tmp__1;
                    };
                    _gotoNext = 285528i32;
                } else if (__value__ == (285528i32)) {
                    if (_i_285326_0 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 285340i32;
                    } else {
                        _gotoNext = 285530i32;
                    };
                } else if (__value__ == (285530i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
