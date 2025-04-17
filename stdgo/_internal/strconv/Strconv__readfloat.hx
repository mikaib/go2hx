package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _e_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _esign_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndMant_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_4:Bool = false;
        var _expChar_3:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _loopBreak = false;
        var _c_9:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sawdigits_5:Bool = false;
        var _underscores_0:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_0 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2673577i32;
                    } else {
                        _gotoNext = 2673592i32;
                    };
                } else if (__value__ == (2673577i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2673592i32;
                } else if (__value__ == (2673592i32)) {
                    _gotoNext = 2673592i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2673602i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2673627i32;
                    } else {
                        _gotoNext = 2673680i32;
                    };
                } else if (__value__ == (2673602i32)) {
                    _i++;
                    _gotoNext = 2673680i32;
                } else if (__value__ == (2673627i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2673680i32;
                } else if (__value__ == (2673680i32)) {
                    _base_1 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (19 : stdgo.GoInt);
                    _expChar_3 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2673822i32;
                    } else {
                        _gotoNext = 2673923i32;
                    };
                } else if (__value__ == (2673822i32)) {
                    _base_1 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_3 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2673923i32;
                } else if (__value__ == (2673923i32)) {
                    _sawdot_4 = false;
                    _sawdigits_5 = false;
                    _nd_6 = (0 : stdgo.GoInt);
                    _ndMant_7 = (0 : stdgo.GoInt);
                    _dp_8 = (0 : stdgo.GoInt);
                    _gotoNext = 2673990i32;
                } else if (__value__ == (2673990i32)) {
                    0i32;
                    _loopBreak = false;
                    _gotoNext = 2673997i32;
                } else if (__value__ == (2673997i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2674019i32;
                    } else {
                        _gotoNext = 2674739i32;
                    };
                } else if (__value__ == (2674019i32)) {
                    _gotoNext = 2674023i32;
                } else if (__value__ == (2674023i32)) {
                    {
                        _c_9 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_9 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2674050i32;
                            } else if (__value__ == (_c_9 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2674102i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_9 : Bool) && (_c_9 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2674195i32;
                            } else if (__value__ == (((_base_1 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_9) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_9) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2674487i32;
                            } else {
                                _gotoNext = 2674729i32;
                            };
                        };
                    };
                } else if (__value__ == (2674050i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2673997i32;
                } else if (__value__ == (2674102i32)) {
                    if (_sawdot_4) {
                        _gotoNext = 2674130i32;
                    } else {
                        _gotoNext = 2674155i32;
                    };
                } else if (__value__ == (2674130i32)) {
                    _loopBreak = true;
                    _gotoNext = 2673997i32;
                } else if (__value__ == (2674155i32)) {
                    _sawdot_4 = true;
                    _dp_8 = _nd_6;
                    _i++;
                    _gotoNext = 2673997i32;
                } else if (__value__ == (2674195i32)) {
                    _sawdigits_5 = true;
                    if (((_c_9 == (48 : stdgo.GoUInt8)) && (_nd_6 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2674268i32;
                    } else {
                        _gotoNext = 2674324i32;
                    };
                } else if (__value__ == (2674268i32)) {
                    _dp_8--;
                    _i++;
                    _gotoNext = 2673997i32;
                } else if (__value__ == (2674324i32)) {
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2674358i32;
                    } else if (_c_9 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2674448i32;
                    } else {
                        _gotoNext = 2674475i32;
                    };
                } else if (__value__ == (2674358i32)) {
                    _mantissa = (_mantissa * (_base_1) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_9 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2674475i32;
                } else if (__value__ == (2674448i32)) {
                    _trunc = true;
                    _gotoNext = 2674475i32;
                } else if (__value__ == (2674475i32)) {
                    _i++;
                    _gotoNext = 2673997i32;
                } else if (__value__ == (2674487i32)) {
                    _sawdigits_5 = true;
                    _nd_6++;
                    if ((_ndMant_7 < _maxMantDigits_2 : Bool)) {
                        _gotoNext = 2674599i32;
                    } else {
                        _gotoNext = 2674687i32;
                    };
                } else if (__value__ == (2674599i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_9) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_7++;
                    _gotoNext = 2674714i32;
                } else if (__value__ == (2674687i32)) {
                    _gotoNext = 2674687i32;
                    _trunc = true;
                    0i32;
                    _gotoNext = 2674714i32;
                } else if (__value__ == (2674714i32)) {
                    _i++;
                    _gotoNext = 2673997i32;
                } else if (__value__ == (2674729i32)) {
                    _gotoNext = 2674739i32;
                } else if (__value__ == (2674739i32)) {
                    if (!_sawdigits_5) {
                        _gotoNext = 2674753i32;
                    } else {
                        _gotoNext = 2674768i32;
                    };
                } else if (__value__ == (2674753i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2674768i32;
                } else if (__value__ == (2674768i32)) {
                    if (!_sawdot_4) {
                        _gotoNext = 2674779i32;
                    } else {
                        _gotoNext = 2674796i32;
                    };
                } else if (__value__ == (2674779i32)) {
                    _dp_8 = _nd_6;
                    _gotoNext = 2674796i32;
                } else if (__value__ == (2674796i32)) {
                    if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2674810i32;
                    } else {
                        _gotoNext = 2675055i32;
                    };
                } else if (__value__ == (2674810i32)) {
                    _dp_8 = (_dp_8 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_7 = (_ndMant_7 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2675055i32;
                } else if (__value__ == (2675055i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_3) : Bool)) {
                        _gotoNext = 2675095i32;
                    } else if (_base_1 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2675528i32;
                    } else {
                        _gotoNext = 2675569i32;
                    };
                } else if (__value__ == (2675095i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2675120i32;
                    } else {
                        _gotoNext = 2675138i32;
                    };
                } else if (__value__ == (2675120i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2675138i32;
                } else if (__value__ == (2675138i32)) {
                    _esign_10 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2675166i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2675199i32;
                    } else {
                        _gotoNext = 2675228i32;
                    };
                } else if (__value__ == (2675166i32)) {
                    _i++;
                    _gotoNext = 2675228i32;
                } else if (__value__ == (2675199i32)) {
                    _i++;
                    _esign_10 = (-1 : stdgo.GoInt);
                    _gotoNext = 2675228i32;
                } else if (__value__ == (2675228i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2675271i32;
                    } else {
                        _gotoNext = 2675289i32;
                    };
                } else if (__value__ == (2675271i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2675289i32;
                } else if (__value__ == (2675289i32)) {
                    _e_11 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2675298i32;
                } else if (__value__ == (2675298i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2675367i32;
                    } else {
                        _gotoNext = 2675490i32;
                    };
                } else if (__value__ == (2675363i32)) {
                    _i++;
                    _gotoNext = 2675298i32;
                } else if (__value__ == (2675367i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2675387i32;
                    } else {
                        _gotoNext = 2675433i32;
                    };
                } else if (__value__ == (2675387i32)) {
                    _underscores_0 = true;
                    _i++;
                    _gotoNext = 2675298i32;
                } else if (__value__ == (2675433i32)) {
                    if ((_e_11 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2675446i32;
                    } else {
                        _gotoNext = 2675363i32;
                    };
                } else if (__value__ == (2675446i32)) {
                    _e_11 = (((_e_11 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2675363i32;
                } else if (__value__ == (2675490i32)) {
                    _dp_8 = (_dp_8 + ((_e_11 * _esign_10 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2675569i32;
                } else if (__value__ == (2675528i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2675569i32;
                } else if (__value__ == (2675569i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2675586i32;
                    } else {
                        _gotoNext = 2675613i32;
                    };
                } else if (__value__ == (2675586i32)) {
                    _exp = (_dp_8 - _ndMant_7 : stdgo.GoInt);
                    _gotoNext = 2675613i32;
                } else if (__value__ == (2675613i32)) {
                    if ((_underscores_0 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2675652i32;
                    } else {
                        _gotoNext = 2675668i32;
                    };
                } else if (__value__ == (2675652i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2675668i32;
                } else if (__value__ == (2675668i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
