package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_5:Bool = false;
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _underscores_0:Bool = false;
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2617643i32;
                    } else {
                        _gotoNext = 2617658i32;
                    };
                } else if (__value__ == (2617643i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2617658i32;
                } else if (__value__ == (2617658i32)) {
                    _gotoNext = 2617658i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2617668i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2617693i32;
                    } else {
                        _gotoNext = 2617746i32;
                    };
                } else if (__value__ == (2617668i32)) {
                    _i++;
                    _gotoNext = 2617746i32;
                } else if (__value__ == (2617693i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2617746i32;
                } else if (__value__ == (2617746i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2617888i32;
                    } else {
                        _gotoNext = 2617989i32;
                    };
                } else if (__value__ == (2617888i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2617989i32;
                } else if (__value__ == (2617989i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2618056i32;
                } else if (__value__ == (2618056i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2618063i32;
                } else if (__value__ == (2618063i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2618085i32;
                    } else {
                        _gotoNext = 2618805i32;
                    };
                } else if (__value__ == (2618085i32)) {
                    _gotoNext = 2618089i32;
                } else if (__value__ == (2618089i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2618116i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2618168i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2618261i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2618553i32;
                            } else {
                                _gotoNext = 2618795i32;
                            };
                        };
                    };
                } else if (__value__ == (2618116i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2618063i32;
                } else if (__value__ == (2618168i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2618196i32;
                    } else {
                        _gotoNext = 2618221i32;
                    };
                } else if (__value__ == (2618196i32)) {
                    _loopBreak = true;
                    _gotoNext = 2618063i32;
                } else if (__value__ == (2618221i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2618063i32;
                } else if (__value__ == (2618261i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2618334i32;
                    } else {
                        _gotoNext = 2618390i32;
                    };
                } else if (__value__ == (2618334i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2618063i32;
                } else if (__value__ == (2618390i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2618424i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2618514i32;
                    } else {
                        _gotoNext = 2618541i32;
                    };
                } else if (__value__ == (2618424i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2618541i32;
                } else if (__value__ == (2618514i32)) {
                    _trunc = true;
                    _gotoNext = 2618541i32;
                } else if (__value__ == (2618541i32)) {
                    _i++;
                    _gotoNext = 2618063i32;
                } else if (__value__ == (2618553i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2618665i32;
                    } else {
                        _gotoNext = 2618753i32;
                    };
                } else if (__value__ == (2618665i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2618780i32;
                } else if (__value__ == (2618753i32)) {
                    _gotoNext = 2618753i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2618780i32;
                } else if (__value__ == (2618780i32)) {
                    _i++;
                    _gotoNext = 2618063i32;
                } else if (__value__ == (2618795i32)) {
                    _gotoNext = 2618805i32;
                } else if (__value__ == (2618805i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2618819i32;
                    } else {
                        _gotoNext = 2618834i32;
                    };
                } else if (__value__ == (2618819i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2618834i32;
                } else if (__value__ == (2618834i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2618845i32;
                    } else {
                        _gotoNext = 2618862i32;
                    };
                } else if (__value__ == (2618845i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2618862i32;
                } else if (__value__ == (2618862i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2618876i32;
                    } else {
                        _gotoNext = 2619121i32;
                    };
                } else if (__value__ == (2618876i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2619121i32;
                } else if (__value__ == (2619121i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2619161i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2619594i32;
                    } else {
                        _gotoNext = 2619635i32;
                    };
                } else if (__value__ == (2619161i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2619186i32;
                    } else {
                        _gotoNext = 2619204i32;
                    };
                } else if (__value__ == (2619186i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619204i32;
                } else if (__value__ == (2619204i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2619232i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2619265i32;
                    } else {
                        _gotoNext = 2619294i32;
                    };
                } else if (__value__ == (2619232i32)) {
                    _i++;
                    _gotoNext = 2619294i32;
                } else if (__value__ == (2619265i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2619294i32;
                } else if (__value__ == (2619294i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2619337i32;
                    } else {
                        _gotoNext = 2619355i32;
                    };
                } else if (__value__ == (2619337i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619355i32;
                } else if (__value__ == (2619355i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2619364i32;
                } else if (__value__ == (2619364i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2619433i32;
                    } else {
                        _gotoNext = 2619556i32;
                    };
                } else if (__value__ == (2619429i32)) {
                    _i++;
                    _gotoNext = 2619364i32;
                } else if (__value__ == (2619433i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2619453i32;
                    } else {
                        _gotoNext = 2619499i32;
                    };
                } else if (__value__ == (2619453i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2619364i32;
                } else if (__value__ == (2619499i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2619512i32;
                    } else {
                        _gotoNext = 2619429i32;
                    };
                } else if (__value__ == (2619512i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2619429i32;
                } else if (__value__ == (2619556i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2619635i32;
                } else if (__value__ == (2619594i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619635i32;
                } else if (__value__ == (2619635i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2619652i32;
                    } else {
                        _gotoNext = 2619679i32;
                    };
                } else if (__value__ == (2619652i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2619679i32;
                } else if (__value__ == (2619679i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2619718i32;
                    } else {
                        _gotoNext = 2619734i32;
                    };
                } else if (__value__ == (2619718i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2619734i32;
                } else if (__value__ == (2619734i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
