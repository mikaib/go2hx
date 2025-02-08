package stdgo._internal.strconv;
function _readFloat(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; var _4 : Bool; var _5 : stdgo.GoInt; var _6 : Bool; } {
        var _mantissa = (0 : stdgo.GoUInt64), _exp = (0 : stdgo.GoInt), _neg = false, _trunc = false, _hex = false, _i = (0 : stdgo.GoInt), _ok = false;
        var _underscores_2778601:Bool = false;
        var _esign_2780218:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdot_2779003:Bool = false;
        var _e_2780369:stdgo.GoInt = (0 : stdgo.GoInt);
        var _loopBreak = false;
        var _dp_2779062:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nd_2779040:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sawdigits_2779020:Bool = false;
        var _base_2778760:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _c_2779110:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ndMant_2779049:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxMantDigits_2778780:stdgo.GoInt = (0 : stdgo.GoInt);
        var _expChar_2778825:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _underscores_2778601 = false;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2778657i32;
                    } else {
                        _gotoNext = 2778672i32;
                    };
                } else if (__value__ == (2778657i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2778672i32;
                } else if (__value__ == (2778672i32)) {
                    _gotoNext = 2778672i32;
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2778682i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2778707i32;
                    } else {
                        _gotoNext = 2778760i32;
                    };
                } else if (__value__ == (2778682i32)) {
                    _i++;
                    _gotoNext = 2778760i32;
                } else if (__value__ == (2778707i32)) {
                    _neg = true;
                    _i++;
                    _gotoNext = 2778760i32;
                } else if (__value__ == (2778760i32)) {
                    _base_2778760 = (10i64 : stdgo.GoUInt64);
                    _maxMantDigits_2778780 = (19 : stdgo.GoInt);
                    _expChar_2778825 = (101 : stdgo.GoUInt8);
                    if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) == (120 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2778902i32;
                    } else {
                        _gotoNext = 2779003i32;
                    };
                } else if (__value__ == (2778902i32)) {
                    _base_2778760 = (16i64 : stdgo.GoUInt64);
                    _maxMantDigits_2778780 = (16 : stdgo.GoInt);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _expChar_2778825 = (112 : stdgo.GoUInt8);
                    _hex = true;
                    _gotoNext = 2779003i32;
                } else if (__value__ == (2779003i32)) {
                    _sawdot_2779003 = false;
                    _sawdigits_2779020 = false;
                    _nd_2779040 = (0 : stdgo.GoInt);
                    _ndMant_2779049 = (0 : stdgo.GoInt);
                    _dp_2779062 = (0 : stdgo.GoInt);
                    _gotoNext = 2779070i32;
                } else if (__value__ == (2779070i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 2779077i32;
                } else if (__value__ == (2779077i32)) {
                    if (!_loopBreak && ((_i < (_s.length) : Bool))) {
                        _gotoNext = 2779099i32;
                    } else {
                        _gotoNext = 2779819i32;
                    };
                } else if (__value__ == (2779099i32)) {
                    _gotoNext = 2779103i32;
                } else if (__value__ == (2779103i32)) {
                    {
                        _c_2779110 = _s[(_i : stdgo.GoInt)];
                        {
                            final __value__ = true;
                            if (__value__ == (_c_2779110 == (95 : stdgo.GoUInt8))) {
                                _gotoNext = 2779130i32;
                            } else if (__value__ == (_c_2779110 == (46 : stdgo.GoUInt8))) {
                                _gotoNext = 2779182i32;
                            } else if (__value__ == ((((48 : stdgo.GoUInt8) <= _c_2779110 : Bool) && (_c_2779110 <= (57 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2779275i32;
                            } else if (__value__ == (((_base_2778760 == ((16i64 : stdgo.GoUInt64)) && ((97 : stdgo.GoUInt8) <= stdgo._internal.strconv.Strconv__lower._lower(_c_2779110) : Bool) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_c_2779110) <= (102 : stdgo.GoUInt8) : Bool) : Bool))) {
                                _gotoNext = 2779567i32;
                            } else {
                                _gotoNext = 2779809i32;
                            };
                        };
                    };
                } else if (__value__ == (2779130i32)) {
                    _underscores_2778601 = true;
                    _i++;
                    _gotoNext = 2779077i32;
                } else if (__value__ == (2779182i32)) {
                    if (_sawdot_2779003) {
                        _gotoNext = 2779210i32;
                    } else {
                        _gotoNext = 2779235i32;
                    };
                } else if (__value__ == (2779210i32)) {
                    _loopBreak = true;
                    _gotoNext = 2779077i32;
                } else if (__value__ == (2779235i32)) {
                    _sawdot_2779003 = true;
                    _dp_2779062 = _nd_2779040;
                    _i++;
                    _gotoNext = 2779077i32;
                } else if (__value__ == (2779275i32)) {
                    _sawdigits_2779020 = true;
                    if (((_c_2779110 == (48 : stdgo.GoUInt8)) && (_nd_2779040 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 2779348i32;
                    } else {
                        _gotoNext = 2779404i32;
                    };
                } else if (__value__ == (2779348i32)) {
                    _dp_2779062--;
                    _i++;
                    _gotoNext = 2779077i32;
                } else if (__value__ == (2779404i32)) {
                    _nd_2779040++;
                    if ((_ndMant_2779049 < _maxMantDigits_2778780 : Bool)) {
                        _gotoNext = 2779438i32;
                    } else if (_c_2779110 != ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 2779528i32;
                    } else {
                        _gotoNext = 2779555i32;
                    };
                } else if (__value__ == (2779438i32)) {
                    _mantissa = (_mantissa * (_base_2778760) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + (((_c_2779110 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2779049++;
                    _gotoNext = 2779555i32;
                } else if (__value__ == (2779528i32)) {
                    _trunc = true;
                    _gotoNext = 2779555i32;
                } else if (__value__ == (2779555i32)) {
                    _i++;
                    _gotoNext = 2779077i32;
                } else if (__value__ == (2779567i32)) {
                    _sawdigits_2779020 = true;
                    _nd_2779040++;
                    if ((_ndMant_2779049 < _maxMantDigits_2778780 : Bool)) {
                        _gotoNext = 2779679i32;
                    } else {
                        _gotoNext = 2779767i32;
                    };
                } else if (__value__ == (2779679i32)) {
                    _mantissa = (_mantissa * ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _mantissa = (_mantissa + ((((stdgo._internal.strconv.Strconv__lower._lower(_c_2779110) - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _ndMant_2779049++;
                    _gotoNext = 2779794i32;
                } else if (__value__ == (2779767i32)) {
                    _gotoNext = 2779767i32;
                    _trunc = true;
                    var __blank__ = 0i32;
                    _gotoNext = 2779794i32;
                } else if (__value__ == (2779794i32)) {
                    _i++;
                    _gotoNext = 2779077i32;
                } else if (__value__ == (2779809i32)) {
                    _gotoNext = 2779819i32;
                } else if (__value__ == (2779819i32)) {
                    if (!_sawdigits_2779020) {
                        _gotoNext = 2779833i32;
                    } else {
                        _gotoNext = 2779848i32;
                    };
                } else if (__value__ == (2779833i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2779848i32;
                } else if (__value__ == (2779848i32)) {
                    if (!_sawdot_2779003) {
                        _gotoNext = 2779859i32;
                    } else {
                        _gotoNext = 2779876i32;
                    };
                } else if (__value__ == (2779859i32)) {
                    _dp_2779062 = _nd_2779040;
                    _gotoNext = 2779876i32;
                } else if (__value__ == (2779876i32)) {
                    if (_base_2778760 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2779890i32;
                    } else {
                        _gotoNext = 2780135i32;
                    };
                } else if (__value__ == (2779890i32)) {
                    _dp_2779062 = (_dp_2779062 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _ndMant_2779049 = (_ndMant_2779049 * ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2780135i32;
                } else if (__value__ == (2780135i32)) {
                    if (((_i < (_s.length) : Bool) && (stdgo._internal.strconv.Strconv__lower._lower(_s[(_i : stdgo.GoInt)]) == _expChar_2778825) : Bool)) {
                        _gotoNext = 2780175i32;
                    } else if (_base_2778760 == ((16i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2780608i32;
                    } else {
                        _gotoNext = 2780649i32;
                    };
                } else if (__value__ == (2780175i32)) {
                    _i++;
                    if ((_i >= (_s.length) : Bool)) {
                        _gotoNext = 2780200i32;
                    } else {
                        _gotoNext = 2780218i32;
                    };
                } else if (__value__ == (2780200i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2780218i32;
                } else if (__value__ == (2780218i32)) {
                    _esign_2780218 = (1 : stdgo.GoInt);
                    if (_s[(_i : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
                        _gotoNext = 2780246i32;
                    } else if (_s[(_i : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 2780279i32;
                    } else {
                        _gotoNext = 2780308i32;
                    };
                } else if (__value__ == (2780246i32)) {
                    _i++;
                    _gotoNext = 2780308i32;
                } else if (__value__ == (2780279i32)) {
                    _i++;
                    _esign_2780218 = (-1 : stdgo.GoInt);
                    _gotoNext = 2780308i32;
                } else if (__value__ == (2780308i32)) {
                    if ((((_i >= (_s.length) : Bool) || (_s[(_i : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 2780351i32;
                    } else {
                        _gotoNext = 2780369i32;
                    };
                } else if (__value__ == (2780351i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2780369i32;
                } else if (__value__ == (2780369i32)) {
                    _e_2780369 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2780378i32;
                } else if (__value__ == (2780378i32)) {
                    if (((_i < (_s.length) : Bool) && (((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_s[(_i : stdgo.GoInt)] == (95 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 2780447i32;
                    } else {
                        _gotoNext = 2780570i32;
                    };
                } else if (__value__ == (2780443i32)) {
                    _i++;
                    _gotoNext = 2780378i32;
                } else if (__value__ == (2780447i32)) {
                    if (_s[(_i : stdgo.GoInt)] == ((95 : stdgo.GoUInt8))) {
                        _gotoNext = 2780467i32;
                    } else {
                        _gotoNext = 2780513i32;
                    };
                } else if (__value__ == (2780467i32)) {
                    _underscores_2778601 = true;
                    _i++;
                    _gotoNext = 2780378i32;
                } else if (__value__ == (2780513i32)) {
                    if ((_e_2780369 < (10000 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2780526i32;
                    } else {
                        _gotoNext = 2780443i32;
                    };
                } else if (__value__ == (2780526i32)) {
                    _e_2780369 = (((_e_2780369 * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2780443i32;
                } else if (__value__ == (2780570i32)) {
                    _dp_2779062 = (_dp_2779062 + ((_e_2780369 * _esign_2780218 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 2780649i32;
                } else if (__value__ == (2780608i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2780649i32;
                } else if (__value__ == (2780649i32)) {
                    if (_mantissa != ((0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 2780666i32;
                    } else {
                        _gotoNext = 2780693i32;
                    };
                } else if (__value__ == (2780666i32)) {
                    _exp = (_dp_2779062 - _ndMant_2779049 : stdgo.GoInt);
                    _gotoNext = 2780693i32;
                } else if (__value__ == (2780693i32)) {
                    if ((_underscores_2778601 && !stdgo._internal.strconv.Strconv__underscoreok._underscoreOK((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()) : Bool)) {
                        _gotoNext = 2780732i32;
                    } else {
                        _gotoNext = 2780748i32;
                    };
                } else if (__value__ == (2780732i32)) {
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = 2780748i32;
                } else if (__value__ == (2780748i32)) {
                    _ok = true;
                    return { _0 : _mantissa, _1 : _exp, _2 : _neg, _3 : _trunc, _4 : _hex, _5 : _i, _6 : _ok };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
