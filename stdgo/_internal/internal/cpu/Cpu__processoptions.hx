package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _enable_4:Bool = false;
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _iterator_229946_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 228971i32;
                } else if (__value__ == (228971i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 228979i32;
                } else if (__value__ == (228979i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 228993i32;
                    } else {
                        _gotoNext = 229934i32;
                    };
                } else if (__value__ == (228993i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 229047i32;
                    } else {
                        _gotoNext = 229082i32;
                    };
                } else if (__value__ == (229047i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 229125i32;
                } else if (__value__ == (229082i32)) {
                    _gotoNext = 229082i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 229125i32;
                } else if (__value__ == (229125i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 229166i32;
                    } else {
                        _gotoNext = 229186i32;
                    };
                } else if (__value__ == (229166i32)) {
                    0i32;
                    _gotoNext = 228979i32;
                } else if (__value__ == (229186i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 229223i32;
                    } else {
                        _gotoNext = 229305i32;
                    };
                } else if (__value__ == (229223i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 228979i32;
                } else if (__value__ == (229305i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 229385i32;
                } else if (__value__ == (229385i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 229402i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 229432i32;
                        } else {
                            _gotoNext = 229464i32;
                        };
                    };
                } else if (__value__ == (229402i32)) {
                    _enable_4 = true;
                    _gotoNext = 229586i32;
                } else if (__value__ == (229432i32)) {
                    _enable_4 = false;
                    _gotoNext = 229586i32;
                } else if (__value__ == (229464i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 228979i32;
                } else if (__value__ == (229586i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 229602i32;
                    } else {
                        _gotoNext = 229725i32;
                    };
                } else if (__value__ == (229602i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 229697i32;
                    } else {
                        _gotoNext = 229703i32;
                    };
                } else if (__value__ == (229630i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 229698i32;
                } else if (__value__ == (229697i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 229698i32;
                } else if (__value__ == (229698i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 229630i32;
                    } else {
                        _gotoNext = 229703i32;
                    };
                } else if (__value__ == (229703i32)) {
                    _gotoNext = 228979i32;
                } else if (__value__ == (229725i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 229869i32;
                    } else {
                        _gotoNext = 229875i32;
                    };
                } else if (__value__ == (229729i32)) {
                    _i_6++;
                    _gotoNext = 229870i32;
                } else if (__value__ == (229748i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 229779i32;
                    } else {
                        _gotoNext = 229729i32;
                    };
                } else if (__value__ == (229779i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 228979i32;
                } else if (__value__ == (229869i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 229870i32;
                } else if (__value__ == (229870i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 229748i32;
                    } else {
                        _gotoNext = 229875i32;
                    };
                } else if (__value__ == (229875i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 228979i32;
                } else if (__value__ == (229934i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 230147i32;
                    } else {
                        _gotoNext = 230150i32;
                    };
                } else if (__value__ == (229960i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_229946_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 229980i32;
                    } else {
                        _gotoNext = 230001i32;
                    };
                } else if (__value__ == (229980i32)) {
                    _iterator_229946_7++;
                    _gotoNext = 230148i32;
                } else if (__value__ == (230001i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 230028i32;
                    } else {
                        _gotoNext = 230125i32;
                    };
                } else if (__value__ == (230028i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_229946_7++;
                    _gotoNext = 230148i32;
                } else if (__value__ == (230125i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_229946_7++;
                    _gotoNext = 230148i32;
                } else if (__value__ == (230147i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_229946_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 230148i32;
                } else if (__value__ == (230148i32)) {
                    if (_iterator_229946_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 229960i32;
                    } else {
                        _gotoNext = 230150i32;
                    };
                } else if (__value__ == (230150i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
