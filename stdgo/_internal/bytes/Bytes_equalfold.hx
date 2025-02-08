package stdgo._internal.bytes;
function equalFold(_s:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _r_3052251:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_3052126:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_3052044:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3051521:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3052254:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3052123:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3052040:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_3051534:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3051473:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3052799:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_3051473 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3051481i32;
                } else if (__value__ == (3051481i32)) {
                    if (((_i_3051473 < (_s.length) : Bool) && (_i_3051473 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3051517i32;
                    } else {
                        _gotoNext = 3051906i32;
                    };
                } else if (__value__ == (3051517i32)) {
                    _sr_3051521 = _s[(_i_3051473 : stdgo.GoInt)];
                    _tr_3051534 = _t[(_i_3051473 : stdgo.GoInt)];
                    if (((_sr_3051521 | _tr_3051534 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3051573i32;
                    } else {
                        _gotoNext = 3051617i32;
                    };
                } else if (__value__ == (3051573i32)) {
                    _gotoNext = 3051931i32;
                } else if (__value__ == (3051617i32)) {
                    if (_tr_3051534 == (_sr_3051521)) {
                        _gotoNext = 3051629i32;
                    } else {
                        _gotoNext = 3051694i32;
                    };
                } else if (__value__ == (3051629i32)) {
                    _i_3051473++;
                    _gotoNext = 3051481i32;
                } else if (__value__ == (3051694i32)) {
                    if ((_tr_3051534 < _sr_3051521 : Bool)) {
                        _gotoNext = 3051705i32;
                    } else {
                        _gotoNext = 3051780i32;
                    };
                } else if (__value__ == (3051705i32)) {
                    {
                        final __tmp__0 = _sr_3051521;
                        final __tmp__1 = _tr_3051534;
                        _tr_3051534 = __tmp__0;
                        _sr_3051521 = __tmp__1;
                    };
                    _gotoNext = 3051780i32;
                } else if (__value__ == (3051780i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_3051521 : Bool) && (_sr_3051521 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_3051534 == ((_sr_3051521 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3051826i32;
                    } else {
                        _gotoNext = 3051846i32;
                    };
                } else if (__value__ == (3051826i32)) {
                    _i_3051473++;
                    _gotoNext = 3051481i32;
                } else if (__value__ == (3051846i32)) {
                    return false;
                    _i_3051473++;
                    _gotoNext = 3051481i32;
                } else if (__value__ == (3051906i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3051931i32;
                } else if (__value__ == (3051931i32)) {
                    _s = (_s.__slice__(_i_3051473) : stdgo.Slice<stdgo.GoUInt8>);
                    _t = (_t.__slice__(_i_3051473) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 3051966i32;
                } else if (__value__ == (3051966i32)) {
                    if (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3051997i32;
                    } else {
                        _gotoNext = 3052972i32;
                    };
                } else if (__value__ == (3051997i32)) {
                    if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3052078i32;
                    } else {
                        _gotoNext = 3052118i32;
                    };
                } else if (__value__ == (3052078i32)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3052040 = __tmp__0;
                        _s = __tmp__1;
                    };
                    _gotoNext = 3052182i32;
                } else if (__value__ == (3052118i32)) {
                    _gotoNext = 3052118i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                        _r_3052123 = @:tmpset0 __tmp__._0;
                        _size_3052126 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3052123;
                        final __tmp__1 = (_s.__slice__(_size_3052126) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr_3052040 = __tmp__0;
                        _s = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3052182i32;
                } else if (__value__ == (3052182i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3052206i32;
                    } else {
                        _gotoNext = 3052246i32;
                    };
                } else if (__value__ == (3052206i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3052044 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 3052382i32;
                } else if (__value__ == (3052246i32)) {
                    _gotoNext = 3052246i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_t);
                        _r_3052251 = @:tmpset0 __tmp__._0;
                        _size_3052254 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_3052251;
                        final __tmp__1 = (_t.__slice__(_size_3052254) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr_3052044 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3052382i32;
                } else if (__value__ == (3052382i32)) {
                    if (_tr_3052044 == (_sr_3052040)) {
                        _gotoNext = 3052394i32;
                    } else {
                        _gotoNext = 3052459i32;
                    };
                } else if (__value__ == (3052394i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3051966i32;
                } else if (__value__ == (3052459i32)) {
                    if ((_tr_3052044 < _sr_3052040 : Bool)) {
                        _gotoNext = 3052470i32;
                    } else {
                        _gotoNext = 3052524i32;
                    };
                } else if (__value__ == (3052470i32)) {
                    {
                        final __tmp__0 = _sr_3052040;
                        final __tmp__1 = _tr_3052044;
                        _tr_3052044 = __tmp__0;
                        _sr_3052040 = __tmp__1;
                    };
                    _gotoNext = 3052524i32;
                } else if (__value__ == (3052524i32)) {
                    if ((_tr_3052044 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3052546i32;
                    } else {
                        _gotoNext = 3052799i32;
                    };
                } else if (__value__ == (3052546i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3052040 : Bool) && (_sr_3052040 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_3052044 == ((_sr_3052040 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3052646i32;
                    } else {
                        _gotoNext = 3052669i32;
                    };
                } else if (__value__ == (3052646i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3051966i32;
                } else if (__value__ == (3052669i32)) {
                    return false;
                    _gotoNext = 3052799i32;
                } else if (__value__ == (3052799i32)) {
                    _r_3052799 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3052040);
                    var __blank__ = 0i32;
                    _gotoNext = 3052829i32;
                } else if (__value__ == (3052829i32)) {
                    if (((_r_3052799 != _sr_3052040) && (_r_3052799 < _tr_3052044 : Bool) : Bool)) {
                        _gotoNext = 3052851i32;
                    } else {
                        _gotoNext = 3052888i32;
                    };
                } else if (__value__ == (3052851i32)) {
                    _r_3052799 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_3052799);
                    _gotoNext = 3052829i32;
                } else if (__value__ == (3052888i32)) {
                    if (_r_3052799 == (_tr_3052044)) {
                        _gotoNext = 3052899i32;
                    } else {
                        _gotoNext = 3052919i32;
                    };
                } else if (__value__ == (3052899i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3051966i32;
                } else if (__value__ == (3052919i32)) {
                    return false;
                    _gotoNext = 3051966i32;
                } else if (__value__ == (3052972i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
