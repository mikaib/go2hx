package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_3014357 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _keys_3014357 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_3014370 = @:invalid_type null;
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3013872i32;
                } else if (__value__ == (3013872i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 3013908i32;
                    } else {
                        _gotoNext = 3014297i32;
                    };
                } else if (__value__ == (3013908i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3013964i32;
                    } else {
                        _gotoNext = 3014008i32;
                    };
                } else if (__value__ == (3013964i32)) {
                    _gotoNext = 3014322i32;
                } else if (__value__ == (3014008i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 3014020i32;
                    } else {
                        _gotoNext = 3014085i32;
                    };
                } else if (__value__ == (3014020i32)) {
                    _i_0++;
                    _gotoNext = 3013872i32;
                } else if (__value__ == (3014085i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 3014096i32;
                    } else {
                        _gotoNext = 3014171i32;
                    };
                } else if (__value__ == (3014096i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3014171i32;
                } else if (__value__ == (3014171i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3014217i32;
                    } else {
                        _gotoNext = 3014237i32;
                    };
                } else if (__value__ == (3014217i32)) {
                    _i_0++;
                    _gotoNext = 3013872i32;
                } else if (__value__ == (3014237i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 3013872i32;
                } else if (__value__ == (3014297i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 3014322i32;
                } else if (__value__ == (3014322i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_3014357 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_3014357 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_3014357 = (_keys_3014357.__append__(_key));
                        _values_3014357 = (_values_3014357.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_3014357.length)) {
                        _gotoNext = 3015288i32;
                    } else {
                        _gotoNext = 3015362i32;
                    };
                } else if (__value__ == (3014378i32)) {
                    _sr_3 = _values_3014357[@:invalid_index_invalid_type _i_3014370];
                    var __blank__ = _keys_3014357[@:invalid_index_invalid_type _i_3014370];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3014447i32;
                    } else {
                        _gotoNext = 3014516i32;
                    };
                } else if (__value__ == (3014447i32)) {
                    return false;
                    _gotoNext = 3014516i32;
                } else if (__value__ == (3014516i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 3014554i32;
                    } else {
                        _gotoNext = 3014594i32;
                    };
                } else if (__value__ == (3014554i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3014738i32;
                } else if (__value__ == (3014594i32)) {
                    _gotoNext = 3014594i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_5 = @:tmpset0 __tmp__._0;
                        _size_6 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_5;
                        final __tmp__1 = (_t.__slice__(_size_6) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 3014738i32;
                } else if (__value__ == (3014738i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 3014750i32;
                    } else {
                        _gotoNext = 3014815i32;
                    };
                } else if (__value__ == (3014750i32)) {
                    _i_3014370++;
                    _gotoNext = 3015289i32;
                } else if (__value__ == (3014815i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 3014826i32;
                    } else {
                        _gotoNext = 3014880i32;
                    };
                } else if (__value__ == (3014826i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3014880i32;
                } else if (__value__ == (3014880i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3014902i32;
                    } else {
                        _gotoNext = 3015155i32;
                    };
                } else if (__value__ == (3014902i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3015002i32;
                    } else {
                        _gotoNext = 3015025i32;
                    };
                } else if (__value__ == (3015002i32)) {
                    _i_3014370++;
                    _gotoNext = 3015289i32;
                } else if (__value__ == (3015025i32)) {
                    return false;
                    _gotoNext = 3015155i32;
                } else if (__value__ == (3015155i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    var __blank__ = 0i32;
                    _gotoNext = 3015185i32;
                } else if (__value__ == (3015185i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 3015207i32;
                    } else {
                        _gotoNext = 3015244i32;
                    };
                } else if (__value__ == (3015207i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 3015185i32;
                } else if (__value__ == (3015244i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 3015255i32;
                    } else {
                        _gotoNext = 3015275i32;
                    };
                } else if (__value__ == (3015255i32)) {
                    _i_3014370++;
                    _gotoNext = 3015289i32;
                } else if (__value__ == (3015275i32)) {
                    return false;
                    _i_3014370++;
                    _gotoNext = 3015289i32;
                } else if (__value__ == (3015288i32)) {
                    _i_3014370 = 0i32;
                    _gotoNext = 3015289i32;
                } else if (__value__ == (3015289i32)) {
                    if (_i_3014370 < (_keys_3014357.length)) {
                        _gotoNext = 3014378i32;
                    } else {
                        _gotoNext = 3015362i32;
                    };
                } else if (__value__ == (3015362i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
