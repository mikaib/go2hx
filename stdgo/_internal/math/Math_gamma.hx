package stdgo._internal.math;
function gamma(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        var _sq1_462904:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _p_462428:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _q_462415:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _sq2_462909:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var euler_462144;
        var _ip_462735:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _signgam_462717:stdgo.GoInt = (0 : stdgo.GoInt);
        var _y2_462476:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _absz_462930:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _d_462947:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_462785:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _y1_462472:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _z_463101:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    euler_462144 = (0.5772156649015329 : stdgo.GoFloat64);
                    _gotoNext = 462235i32;
                } else if (__value__ == (462235i32)) {
                    if (((stdgo._internal.math.Math__isnegint._isNegInt(_x) || stdgo._internal.math.Math_isinf.isInf(_x, (-1 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool)) {
                        _gotoNext = 462245i32;
                    } else if (stdgo._internal.math.Math_isinf.isInf(_x, (1 : stdgo.GoInt))) {
                        _gotoNext = 462307i32;
                    } else if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 462342i32;
                    } else {
                        _gotoNext = 462415i32;
                    };
                } else if (__value__ == (462245i32)) {
                    return stdgo._internal.math.Math_nan.naN();
                    _gotoNext = 462415i32;
                } else if (__value__ == (462307i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 462415i32;
                } else if (__value__ == (462342i32)) {
                    if (stdgo._internal.math.Math_signbit.signbit(_x)) {
                        _gotoNext = 462371i32;
                    } else {
                        _gotoNext = 462397i32;
                    };
                } else if (__value__ == (462371i32)) {
                    return stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
                    _gotoNext = 462397i32;
                } else if (__value__ == (462397i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 462415i32;
                } else if (__value__ == (462415i32)) {
                    _q_462415 = stdgo._internal.math.Math_abs.abs(_x);
                    _p_462428 = stdgo._internal.math.Math_floor.floor(_q_462415);
                    if ((_q_462415 > (33 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462453i32;
                    } else {
                        _gotoNext = 463101i32;
                    };
                } else if (__value__ == (462453i32)) {
                    if ((_x >= (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462467i32;
                    } else {
                        _gotoNext = 462717i32;
                    };
                } else if (__value__ == (462467i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_x);
                        _y1_462472 = @:tmpset0 __tmp__._0;
                        _y2_462476 = @:tmpset0 __tmp__._1;
                    };
                    return (_y1_462472 * _y2_462476 : stdgo.GoFloat64);
                    _gotoNext = 462717i32;
                } else if (__value__ == (462717i32)) {
                    _signgam_462717 = (1 : stdgo.GoInt);
                    {
                        _ip_462735 = (_p_462428 : stdgo.GoInt64);
                        if ((_ip_462735 & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                            _gotoNext = 462761i32;
                        } else {
                            _gotoNext = 462785i32;
                        };
                    };
                } else if (__value__ == (462761i32)) {
                    _signgam_462717 = (-1 : stdgo.GoInt);
                    _gotoNext = 462785i32;
                } else if (__value__ == (462785i32)) {
                    _z_462785 = (_q_462415 - _p_462428 : stdgo.GoFloat64);
                    if ((_z_462785 > (0.5 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 462809i32;
                    } else {
                        _gotoNext = 462843i32;
                    };
                } else if (__value__ == (462809i32)) {
                    _p_462428 = (_p_462428 + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_462785 = (_q_462415 - _p_462428 : stdgo.GoFloat64);
                    _gotoNext = 462843i32;
                } else if (__value__ == (462843i32)) {
                    _z_462785 = (_q_462415 * stdgo._internal.math.Math_sin.sin(((3.141592653589793 : stdgo.GoFloat64) * _z_462785 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    if (_z_462785 == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 462873i32;
                    } else {
                        _gotoNext = 462904i32;
                    };
                } else if (__value__ == (462873i32)) {
                    return stdgo._internal.math.Math_inf.inf(_signgam_462717);
                    _gotoNext = 462904i32;
                } else if (__value__ == (462904i32)) {
                    {
                        var __tmp__ = stdgo._internal.math.Math__stirling._stirling(_q_462415);
                        _sq1_462904 = @:tmpset0 __tmp__._0;
                        _sq2_462909 = @:tmpset0 __tmp__._1;
                    };
                    _absz_462930 = stdgo._internal.math.Math_abs.abs(_z_462785);
                    _d_462947 = ((_absz_462930 * _sq1_462904 : stdgo.GoFloat64) * _sq2_462909 : stdgo.GoFloat64);
                    if (stdgo._internal.math.Math_isinf.isInf(_d_462947, (0 : stdgo.GoInt))) {
                        _gotoNext = 462986i32;
                    } else {
                        _gotoNext = 463026i32;
                    };
                } else if (__value__ == (462986i32)) {
                    _z_462785 = ((((3.141592653589793 : stdgo.GoFloat64) / _absz_462930 : stdgo.GoFloat64) / _sq1_462904 : stdgo.GoFloat64) / _sq2_462909 : stdgo.GoFloat64);
                    _gotoNext = 463048i32;
                } else if (__value__ == (463026i32)) {
                    _gotoNext = 463026i32;
                    _z_462785 = ((3.141592653589793 : stdgo.GoFloat64) / _d_462947 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 463048i32;
                } else if (__value__ == (463048i32)) {
                    return ((_signgam_462717 : stdgo.GoFloat64) * _z_462785 : stdgo.GoFloat64);
                    _gotoNext = 463101i32;
                } else if (__value__ == (463101i32)) {
                    _z_463101 = (1 : stdgo.GoFloat64);
                    var __blank__ = 0i32;
                    _gotoNext = 463111i32;
                } else if (__value__ == (463111i32)) {
                    if ((_x >= (3 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463122i32;
                    } else {
                        _gotoNext = 463152i32;
                    };
                } else if (__value__ == (463122i32)) {
                    _x = (_x - (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _z_463101 = (_z_463101 * _x : stdgo.GoFloat64);
                    _gotoNext = 463111i32;
                } else if (__value__ == (463152i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 463152i32;
                    if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463162i32;
                    } else {
                        _gotoNext = 463228i32;
                    };
                } else if (__value__ == (463162i32)) {
                    if ((_x > (-1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463180i32;
                    } else {
                        _gotoNext = 463202i32;
                    };
                } else if (__value__ == (463180i32)) {
                    _gotoNext = 463558i32;
                } else if (__value__ == (463202i32)) {
                    _z_463101 = (_z_463101 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 463152i32;
                } else if (__value__ == (463228i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 463228i32;
                    if ((_x < (2 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463238i32;
                    } else {
                        _gotoNext = 463304i32;
                    };
                } else if (__value__ == (463238i32)) {
                    if ((_x < (1e-09 : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 463255i32;
                    } else {
                        _gotoNext = 463277i32;
                    };
                } else if (__value__ == (463255i32)) {
                    _gotoNext = 463558i32;
                } else if (__value__ == (463277i32)) {
                    _z_463101 = (_z_463101 / _x : stdgo.GoFloat64);
                    _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _gotoNext = 463228i32;
                } else if (__value__ == (463304i32)) {
                    if (_x == (2 : stdgo.GoFloat64)) {
                        _gotoNext = 463314i32;
                    } else {
                        _gotoNext = 463332i32;
                    };
                } else if (__value__ == (463314i32)) {
                    return _z_463101;
                    _gotoNext = 463332i32;
                } else if (__value__ == (463332i32)) {
                    _x = (_x - (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _p_462428 = (((((((((((((((((_x * stdgo._internal.math.Math___gamp.__gamP[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamp.__gamP[(6 : stdgo.GoInt)] : stdgo.GoFloat64);
                    _q_462415 = ((((((((((((((((((((_x * stdgo._internal.math.Math___gamq.__gamQ[(0 : stdgo.GoInt)] : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(1 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(2 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(3 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(4 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(5 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(6 : stdgo.GoInt)] : stdgo.GoFloat64)) * _x : stdgo.GoFloat64) + stdgo._internal.math.Math___gamq.__gamQ[(7 : stdgo.GoInt)] : stdgo.GoFloat64);
                    return ((_z_463101 * _p_462428 : stdgo.GoFloat64) / _q_462415 : stdgo.GoFloat64);
                    _gotoNext = 463558i32;
                } else if (__value__ == (463558i32)) {
                    if (_x == (0 : stdgo.GoFloat64)) {
                        _gotoNext = 463576i32;
                    } else {
                        _gotoNext = 463598i32;
                    };
                } else if (__value__ == (463576i32)) {
                    return stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt));
                    _gotoNext = 463598i32;
                } else if (__value__ == (463598i32)) {
                    return (_z_463101 / (((((1 : stdgo.GoFloat64) + ((0.5772156649015329 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) : stdgo.GoFloat64)) * _x : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
