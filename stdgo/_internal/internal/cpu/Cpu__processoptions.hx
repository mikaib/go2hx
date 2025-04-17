package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _iterator_253611_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 252636i32;
                } else if (__value__ == (252636i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 252644i32;
                } else if (__value__ == (252644i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 252658i32;
                    } else {
                        _gotoNext = 253599i32;
                    };
                } else if (__value__ == (252658i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 252712i32;
                    } else {
                        _gotoNext = 252747i32;
                    };
                } else if (__value__ == (252712i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 252790i32;
                } else if (__value__ == (252747i32)) {
                    _gotoNext = 252747i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 252790i32;
                } else if (__value__ == (252790i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 252831i32;
                    } else {
                        _gotoNext = 252851i32;
                    };
                } else if (__value__ == (252831i32)) {
                    0i32;
                    _gotoNext = 252644i32;
                } else if (__value__ == (252851i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 252888i32;
                    } else {
                        _gotoNext = 252970i32;
                    };
                } else if (__value__ == (252888i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 252644i32;
                } else if (__value__ == (252970i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 253050i32;
                } else if (__value__ == (253050i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 253067i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 253097i32;
                        } else {
                            _gotoNext = 253129i32;
                        };
                    };
                } else if (__value__ == (253067i32)) {
                    _enable_4 = true;
                    _gotoNext = 253251i32;
                } else if (__value__ == (253097i32)) {
                    _enable_4 = false;
                    _gotoNext = 253251i32;
                } else if (__value__ == (253129i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 252644i32;
                } else if (__value__ == (253251i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 253267i32;
                    } else {
                        _gotoNext = 253390i32;
                    };
                } else if (__value__ == (253267i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253362i32;
                    } else {
                        _gotoNext = 253368i32;
                    };
                } else if (__value__ == (253295i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 253363i32;
                } else if (__value__ == (253362i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 253363i32;
                } else if (__value__ == (253363i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253295i32;
                    } else {
                        _gotoNext = 253368i32;
                    };
                } else if (__value__ == (253368i32)) {
                    _gotoNext = 252644i32;
                } else if (__value__ == (253390i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253534i32;
                    } else {
                        _gotoNext = 253540i32;
                    };
                } else if (__value__ == (253394i32)) {
                    _i_6++;
                    _gotoNext = 253535i32;
                } else if (__value__ == (253413i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 253444i32;
                    } else {
                        _gotoNext = 253394i32;
                    };
                } else if (__value__ == (253444i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 252644i32;
                } else if (__value__ == (253534i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 253535i32;
                } else if (__value__ == (253535i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253413i32;
                    } else {
                        _gotoNext = 253540i32;
                    };
                } else if (__value__ == (253540i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 252644i32;
                } else if (__value__ == (253599i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253812i32;
                    } else {
                        _gotoNext = 253815i32;
                    };
                } else if (__value__ == (253625i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_253611_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 253645i32;
                    } else {
                        _gotoNext = 253666i32;
                    };
                } else if (__value__ == (253645i32)) {
                    _iterator_253611_7++;
                    _gotoNext = 253813i32;
                } else if (__value__ == (253666i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 253693i32;
                    } else {
                        _gotoNext = 253790i32;
                    };
                } else if (__value__ == (253693i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_253611_7++;
                    _gotoNext = 253813i32;
                } else if (__value__ == (253790i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_253611_7++;
                    _gotoNext = 253813i32;
                } else if (__value__ == (253812i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_253611_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 253813i32;
                } else if (__value__ == (253813i32)) {
                    if (_iterator_253611_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 253625i32;
                    } else {
                        _gotoNext = 253815i32;
                    };
                } else if (__value__ == (253815i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
