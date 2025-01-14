package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        var _n1_7875971:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _d_7875540:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _v_7875531:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7875499:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s0_7874921:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _maxVal_7874849:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cutoff_7874841:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_bitSize == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7874881i32;
                    } else {
                        _gotoNext = 7874921i32;
                    };
                } else if (__value__ == (7874881i32)) {
                    _bitSize = (32 : stdgo.GoInt);
                    _gotoNext = 7874921i32;
                } else if (__value__ == (7874921i32)) {
                    _s0_7874921 = _s;
                    _gotoNext = 7874930i32;
                } else if (__value__ == (7874930i32)) {
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7874940i32;
                    } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 7874998i32;
                    } else if (_base == ((0 : stdgo.GoInt))) {
                        _gotoNext = 7875061i32;
                    } else {
                        _gotoNext = 7875342i32;
                    };
                } else if (__value__ == (7874940i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7876130i32;
                } else if (__value__ == (7874998i32)) {
                    _gotoNext = 7875426i32;
                } else if (__value__ == (7875061i32)) {
                    _gotoNext = 7875112i32;
                } else if (__value__ == (7875112i32)) {
                    if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _gotoNext = 7875123i32;
                    } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                        _gotoNext = 7875282i32;
                    } else {
                        _gotoNext = 7875314i32;
                    };
                } else if (__value__ == (7875123i32)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 7875230i32;
                    } else {
                        _gotoNext = 7875426i32;
                    };
                } else if (__value__ == (7875230i32)) {
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7876130i32;
                } else if (__value__ == (7875282i32)) {
                    _base = (8 : stdgo.GoInt);
                    _gotoNext = 7875426i32;
                } else if (__value__ == (7875314i32)) {
                    _base = (10 : stdgo.GoInt);
                    _gotoNext = 7875426i32;
                } else if (__value__ == (7875342i32)) {
                    _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 7876130i32;
                } else if (__value__ == (7875426i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _cutoff_7874841 = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
                    _maxVal_7874849 = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _i_7875499 = (0 : stdgo.GoInt);
                    _gotoNext = 7875495i32;
                } else if (__value__ == (7875495i32)) {
                    if ((_i_7875499 < (_s.length) : Bool)) {
                        _gotoNext = 7875523i32;
                    } else {
                        _gotoNext = 7876115i32;
                    };
                } else if (__value__ == (7875523i32)) {
                    _d_7875540 = _s[(_i_7875499 : stdgo.GoInt)];
                    _gotoNext = 7875552i32;
                } else if (__value__ == (7875552i32)) {
                    if ((((48 : stdgo.GoUInt8) <= _d_7875540 : Bool) && (_d_7875540 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7875563i32;
                    } else if ((((97 : stdgo.GoUInt8) <= _d_7875540 : Bool) && (_d_7875540 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7875607i32;
                    } else if ((((65 : stdgo.GoUInt8) <= _d_7875540 : Bool) && (_d_7875540 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 7875656i32;
                    } else {
                        _gotoNext = 7875705i32;
                    };
                } else if (__value__ == (7875563i32)) {
                    _v_7875531 = (_d_7875540 - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7875770i32;
                } else if (__value__ == (7875607i32)) {
                    _v_7875531 = ((_d_7875540 - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7875770i32;
                } else if (__value__ == (7875656i32)) {
                    _v_7875531 = ((_d_7875540 - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _gotoNext = 7875770i32;
                } else if (__value__ == (7875705i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7876130i32;
                } else if (__value__ == (7875770i32)) {
                    if (((_v_7875531 : stdgo.GoInt) >= _base : Bool)) {
                        _gotoNext = 7875788i32;
                    } else {
                        _gotoNext = 7875847i32;
                    };
                } else if (__value__ == (7875788i32)) {
                    _n = (0i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                    _gotoNext = 7876130i32;
                } else if (__value__ == (7875847i32)) {
                    if ((_n >= _cutoff_7874841 : Bool)) {
                        _gotoNext = 7875862i32;
                    } else {
                        _gotoNext = 7875950i32;
                    };
                } else if (__value__ == (7875862i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7876130i32;
                } else if (__value__ == (7875950i32)) {
                    _n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _n1_7875971 = (_n + (_v_7875531 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    if (((_n1_7875971 < _n : Bool) || (_n1_7875971 > _maxVal_7874849 : Bool) : Bool)) {
                        _gotoNext = 7876018i32;
                    } else {
                        _gotoNext = 7876103i32;
                    };
                } else if (__value__ == (7876018i32)) {
                    _n = (-1i64 : stdgo.GoUInt64);
                    _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                    _gotoNext = 7876130i32;
                } else if (__value__ == (7876103i32)) {
                    _n = _n1_7875971;
                    _i_7875499++;
                    _gotoNext = 7875495i32;
                } else if (__value__ == (7876115i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 7876130i32;
                } else if (__value__ == (7876130i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0_7874921 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
