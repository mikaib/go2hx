package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _sr_3:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2864767 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _iterator_2864780 = @:invalid_type null;
        var _i_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_5:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _tr_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _size_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _keys_2864767 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tr_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_7:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_0 = (0 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 2864282i32;
                } else if (__value__ == (2864282i32)) {
                    if (((_i_0 < (_s.length) : Bool) && (_i_0 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2864318i32;
                    } else {
                        _gotoNext = 2864707i32;
                    };
                } else if (__value__ == (2864318i32)) {
                    _sr_1 = _s[(_i_0 : stdgo.GoInt)];
                    _tr_2 = _t[(_i_0 : stdgo.GoInt)];
                    if (((_sr_1 | _tr_2 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2864374i32;
                    } else {
                        _gotoNext = 2864418i32;
                    };
                } else if (__value__ == (2864374i32)) {
                    _gotoNext = 2864732i32;
                } else if (__value__ == (2864418i32)) {
                    if (_tr_2 == (_sr_1)) {
                        _gotoNext = 2864430i32;
                    } else {
                        _gotoNext = 2864495i32;
                    };
                } else if (__value__ == (2864430i32)) {
                    _i_0++;
                    _gotoNext = 2864282i32;
                } else if (__value__ == (2864495i32)) {
                    if ((_tr_2 < _sr_1 : Bool)) {
                        _gotoNext = 2864506i32;
                    } else {
                        _gotoNext = 2864581i32;
                    };
                } else if (__value__ == (2864506i32)) {
                    {
                        final __tmp__0 = _sr_1;
                        final __tmp__1 = _tr_2;
                        _tr_2 = @:binopAssign __tmp__0;
                        _sr_1 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2864581i32;
                } else if (__value__ == (2864581i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_1 : Bool) && (_sr_1 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2 == ((_sr_1 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2864627i32;
                    } else {
                        _gotoNext = 2864647i32;
                    };
                } else if (__value__ == (2864627i32)) {
                    _i_0++;
                    _gotoNext = 2864282i32;
                } else if (__value__ == (2864647i32)) {
                    return false;
                    _i_0++;
                    _gotoNext = 2864282i32;
                } else if (__value__ == (2864707i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2864732i32;
                } else if (__value__ == (2864732i32)) {
                    _s = (_s.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_0) : stdgo.GoString)?.__copy__();
                    _keys_2864767 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2864767 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2864767 = (_keys_2864767.__append__(_key));
                        _values_2864767 = (_values_2864767.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2864767.length)) {
                        _gotoNext = 2865698i32;
                    } else {
                        _gotoNext = 2865772i32;
                    };
                } else if (__value__ == (2864788i32)) {
                    _sr_3 = _values_2864767[@:invalid_index_invalid_type _iterator_2864780];
                    _keys_2864767[@:invalid_index_invalid_type _iterator_2864780];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2864857i32;
                    } else {
                        _gotoNext = 2864926i32;
                    };
                } else if (__value__ == (2864857i32)) {
                    return false;
                    _gotoNext = 2864926i32;
                } else if (__value__ == (2864926i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2864964i32;
                    } else {
                        _gotoNext = 2865004i32;
                    };
                } else if (__value__ == (2864964i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_4 = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2865148i32;
                } else if (__value__ == (2865004i32)) {
                    _gotoNext = 2865004i32;
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
                    0i32;
                    _gotoNext = 2865148i32;
                } else if (__value__ == (2865148i32)) {
                    if (_tr_4 == (_sr_3)) {
                        _gotoNext = 2865160i32;
                    } else {
                        _gotoNext = 2865225i32;
                    };
                } else if (__value__ == (2865160i32)) {
                    _iterator_2864780++;
                    _gotoNext = 2865699i32;
                } else if (__value__ == (2865225i32)) {
                    if ((_tr_4 < _sr_3 : Bool)) {
                        _gotoNext = 2865236i32;
                    } else {
                        _gotoNext = 2865290i32;
                    };
                } else if (__value__ == (2865236i32)) {
                    {
                        final __tmp__0 = _sr_3;
                        final __tmp__1 = _tr_4;
                        _tr_4 = @:binopAssign __tmp__0;
                        _sr_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2865290i32;
                } else if (__value__ == (2865290i32)) {
                    if ((_tr_4 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2865312i32;
                    } else {
                        _gotoNext = 2865565i32;
                    };
                } else if (__value__ == (2865312i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_3 : Bool) && (_sr_3 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_4 == ((_sr_3 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2865412i32;
                    } else {
                        _gotoNext = 2865435i32;
                    };
                } else if (__value__ == (2865412i32)) {
                    _iterator_2864780++;
                    _gotoNext = 2865699i32;
                } else if (__value__ == (2865435i32)) {
                    return false;
                    _gotoNext = 2865565i32;
                } else if (__value__ == (2865565i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_3);
                    0i32;
                    _gotoNext = 2865595i32;
                } else if (__value__ == (2865595i32)) {
                    if (((_r_7 != _sr_3) && (_r_7 < _tr_4 : Bool) : Bool)) {
                        _gotoNext = 2865617i32;
                    } else {
                        _gotoNext = 2865654i32;
                    };
                } else if (__value__ == (2865617i32)) {
                    _r_7 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_7);
                    _gotoNext = 2865595i32;
                } else if (__value__ == (2865654i32)) {
                    if (_r_7 == (_tr_4)) {
                        _gotoNext = 2865665i32;
                    } else {
                        _gotoNext = 2865685i32;
                    };
                } else if (__value__ == (2865665i32)) {
                    _iterator_2864780++;
                    _gotoNext = 2865699i32;
                } else if (__value__ == (2865685i32)) {
                    return false;
                    _iterator_2864780++;
                    _gotoNext = 2865699i32;
                } else if (__value__ == (2865698i32)) {
                    _iterator_2864780 = 0i32;
                    _gotoNext = 2865699i32;
                } else if (__value__ == (2865699i32)) {
                    if (_iterator_2864780 < (_keys_2864767.length)) {
                        _gotoNext = 2864788i32;
                    } else {
                        _gotoNext = 2865772i32;
                    };
                } else if (__value__ == (2865772i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
