package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _iterator_6345_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 5370i32;
                } else if (__value__ == (5370i32)) {
                    0i32;
                    _fieldBreak = false;
                    _gotoNext = 5378i32;
                } else if (__value__ == (5378i32)) {
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 5392i32;
                    } else {
                        _gotoNext = 6333i32;
                    };
                } else if (__value__ == (5392i32)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5446i32;
                    } else {
                        _gotoNext = 5481i32;
                    };
                } else if (__value__ == (5446i32)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5524i32;
                } else if (__value__ == (5481i32)) {
                    _gotoNext = 5481i32;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i32;
                    _gotoNext = 5524i32;
                } else if (__value__ == (5524i32)) {
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 5565i32;
                    } else {
                        _gotoNext = 5585i32;
                    };
                } else if (__value__ == (5565i32)) {
                    0i32;
                    _gotoNext = 5378i32;
                } else if (__value__ == (5585i32)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5622i32;
                    } else {
                        _gotoNext = 5704i32;
                    };
                } else if (__value__ == (5622i32)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i32;
                    _gotoNext = 5378i32;
                } else if (__value__ == (5704i32)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5784i32;
                } else if (__value__ == (5784i32)) {
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 5801i32;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 5831i32;
                        } else {
                            _gotoNext = 5863i32;
                        };
                    };
                } else if (__value__ == (5801i32)) {
                    _enable_4 = true;
                    _gotoNext = 5985i32;
                } else if (__value__ == (5831i32)) {
                    _enable_4 = false;
                    _gotoNext = 5985i32;
                } else if (__value__ == (5863i32)) {
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5378i32;
                } else if (__value__ == (5985i32)) {
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 6001i32;
                    } else {
                        _gotoNext = 6124i32;
                    };
                } else if (__value__ == (6001i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6096i32;
                    } else {
                        _gotoNext = 6102i32;
                    };
                } else if (__value__ == (6029i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    _i_5++;
                    _gotoNext = 6097i32;
                } else if (__value__ == (6096i32)) {
                    _i_5 = 0i32;
                    _gotoNext = 6097i32;
                } else if (__value__ == (6097i32)) {
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6029i32;
                    } else {
                        _gotoNext = 6102i32;
                    };
                } else if (__value__ == (6102i32)) {
                    _gotoNext = 5378i32;
                } else if (__value__ == (6124i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6268i32;
                    } else {
                        _gotoNext = 6274i32;
                    };
                } else if (__value__ == (6128i32)) {
                    _i_6++;
                    _gotoNext = 6269i32;
                } else if (__value__ == (6147i32)) {
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 6178i32;
                    } else {
                        _gotoNext = 6128i32;
                    };
                } else if (__value__ == (6178i32)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 5378i32;
                } else if (__value__ == (6268i32)) {
                    _i_6 = 0i32;
                    _gotoNext = 6269i32;
                } else if (__value__ == (6269i32)) {
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6147i32;
                    } else {
                        _gotoNext = 6274i32;
                    };
                } else if (__value__ == (6274i32)) {
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 5378i32;
                } else if (__value__ == (6333i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6546i32;
                    } else {
                        _gotoNext = 6549i32;
                    };
                } else if (__value__ == (6359i32)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_6345_7 : stdgo.GoInt)];
                    if (!_o_8.specified) {
                        _gotoNext = 6379i32;
                    } else {
                        _gotoNext = 6400i32;
                    };
                } else if (__value__ == (6379i32)) {
                    _iterator_6345_7++;
                    _gotoNext = 6547i32;
                } else if (__value__ == (6400i32)) {
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 6427i32;
                    } else {
                        _gotoNext = 6524i32;
                    };
                } else if (__value__ == (6427i32)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    _iterator_6345_7++;
                    _gotoNext = 6547i32;
                } else if (__value__ == (6524i32)) {
                    _o_8.feature.value = _o_8.enable;
                    _iterator_6345_7++;
                    _gotoNext = 6547i32;
                } else if (__value__ == (6546i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i32 : stdgo.GoInt)];
                        _iterator_6345_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6547i32;
                } else if (__value__ == (6547i32)) {
                    if (_iterator_6345_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 6359i32;
                    } else {
                        _gotoNext = 6549i32;
                    };
                } else if (__value__ == (6549i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
