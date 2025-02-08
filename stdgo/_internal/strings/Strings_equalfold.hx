package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        var _r_2977750:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_2976459:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_2977197:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tr_2977115:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sr_2976959:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _values_2976952 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _keys_2976952 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _i_2976965 = @:invalid_type null;
        var _tr_2976520:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sr_2976507:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_2977194:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _i_2976459 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 2976467i32;
                } else if (__value__ == (2976467i32)) {
                    if (((_i_2976459 < (_s.length) : Bool) && (_i_2976459 < (_t.length) : Bool) : Bool)) {
                        _gotoNext = 2976503i32;
                    } else {
                        _gotoNext = 2976892i32;
                    };
                } else if (__value__ == (2976503i32)) {
                    _sr_2976507 = _s[(_i_2976459 : stdgo.GoInt)];
                    _tr_2976520 = _t[(_i_2976459 : stdgo.GoInt)];
                    if (((_sr_2976507 | _tr_2976520 : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2976559i32;
                    } else {
                        _gotoNext = 2976603i32;
                    };
                } else if (__value__ == (2976559i32)) {
                    _gotoNext = 2976917i32;
                } else if (__value__ == (2976603i32)) {
                    if (_tr_2976520 == (_sr_2976507)) {
                        _gotoNext = 2976615i32;
                    } else {
                        _gotoNext = 2976680i32;
                    };
                } else if (__value__ == (2976615i32)) {
                    _i_2976459++;
                    _gotoNext = 2976467i32;
                } else if (__value__ == (2976680i32)) {
                    if ((_tr_2976520 < _sr_2976507 : Bool)) {
                        _gotoNext = 2976691i32;
                    } else {
                        _gotoNext = 2976766i32;
                    };
                } else if (__value__ == (2976691i32)) {
                    {
                        final __tmp__0 = _sr_2976507;
                        final __tmp__1 = _tr_2976520;
                        _tr_2976520 = __tmp__0;
                        _sr_2976507 = __tmp__1;
                    };
                    _gotoNext = 2976766i32;
                } else if (__value__ == (2976766i32)) {
                    if (((((65 : stdgo.GoUInt8) <= _sr_2976507 : Bool) && (_sr_2976507 <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr_2976520 == ((_sr_2976507 + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2976812i32;
                    } else {
                        _gotoNext = 2976832i32;
                    };
                } else if (__value__ == (2976812i32)) {
                    _i_2976459++;
                    _gotoNext = 2976467i32;
                } else if (__value__ == (2976832i32)) {
                    return false;
                    _i_2976459++;
                    _gotoNext = 2976467i32;
                } else if (__value__ == (2976892i32)) {
                    return (_s.length) == ((_t.length));
                    _gotoNext = 2976917i32;
                } else if (__value__ == (2976917i32)) {
                    _s = (_s.__slice__(_i_2976459) : stdgo.GoString)?.__copy__();
                    _t = (_t.__slice__(_i_2976459) : stdgo.GoString)?.__copy__();
                    _keys_2976952 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_2976952 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _s) {
                        _keys_2976952 = (_keys_2976952.__append__(_key));
                        _values_2976952 = (_values_2976952.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_2976952.length)) {
                        _gotoNext = 2977883i32;
                    } else {
                        _gotoNext = 2977957i32;
                    };
                } else if (__value__ == (2976973i32)) {
                    _sr_2976959 = _values_2976952[@:invalid_index_invalid_type _i_2976965];
                    var __blank__ = _keys_2976952[@:invalid_index_invalid_type _i_2976965];
                    if ((_t.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2977042i32;
                    } else {
                        _gotoNext = 2977111i32;
                    };
                } else if (__value__ == (2977042i32)) {
                    return false;
                    _gotoNext = 2977111i32;
                } else if (__value__ == (2977111i32)) {
                    if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                        _gotoNext = 2977149i32;
                    } else {
                        _gotoNext = 2977189i32;
                    };
                } else if (__value__ == (2977149i32)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr_2977115 = __tmp__0;
                        _t = __tmp__1;
                    };
                    _gotoNext = 2977333i32;
                } else if (__value__ == (2977189i32)) {
                    _gotoNext = 2977189i32;
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_t?.__copy__());
                        _r_2977194 = @:tmpset0 __tmp__._0;
                        _size_2977197 = @:tmpset0 __tmp__._1;
                    };
                    {
                        final __tmp__0 = _r_2977194;
                        final __tmp__1 = (_t.__slice__(_size_2977197) : stdgo.GoString)?.__copy__();
                        _tr_2977115 = __tmp__0;
                        _t = __tmp__1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 2977333i32;
                } else if (__value__ == (2977333i32)) {
                    if (_tr_2977115 == (_sr_2976959)) {
                        _gotoNext = 2977345i32;
                    } else {
                        _gotoNext = 2977410i32;
                    };
                } else if (__value__ == (2977345i32)) {
                    _i_2976965++;
                    _gotoNext = 2977884i32;
                } else if (__value__ == (2977410i32)) {
                    if ((_tr_2977115 < _sr_2976959 : Bool)) {
                        _gotoNext = 2977421i32;
                    } else {
                        _gotoNext = 2977475i32;
                    };
                } else if (__value__ == (2977421i32)) {
                    {
                        final __tmp__0 = _sr_2976959;
                        final __tmp__1 = _tr_2977115;
                        _tr_2977115 = __tmp__0;
                        _sr_2976959 = __tmp__1;
                    };
                    _gotoNext = 2977475i32;
                } else if (__value__ == (2977475i32)) {
                    if ((_tr_2977115 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 2977497i32;
                    } else {
                        _gotoNext = 2977750i32;
                    };
                } else if (__value__ == (2977497i32)) {
                    if (((((65 : stdgo.GoInt32) <= _sr_2976959 : Bool) && (_sr_2976959 <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr_2977115 == ((_sr_2976959 + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 2977597i32;
                    } else {
                        _gotoNext = 2977620i32;
                    };
                } else if (__value__ == (2977597i32)) {
                    _i_2976965++;
                    _gotoNext = 2977884i32;
                } else if (__value__ == (2977620i32)) {
                    return false;
                    _gotoNext = 2977750i32;
                } else if (__value__ == (2977750i32)) {
                    _r_2977750 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_sr_2976959);
                    var __blank__ = 0i32;
                    _gotoNext = 2977780i32;
                } else if (__value__ == (2977780i32)) {
                    if (((_r_2977750 != _sr_2976959) && (_r_2977750 < _tr_2977115 : Bool) : Bool)) {
                        _gotoNext = 2977802i32;
                    } else {
                        _gotoNext = 2977839i32;
                    };
                } else if (__value__ == (2977802i32)) {
                    _r_2977750 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r_2977750);
                    _gotoNext = 2977780i32;
                } else if (__value__ == (2977839i32)) {
                    if (_r_2977750 == (_tr_2977115)) {
                        _gotoNext = 2977850i32;
                    } else {
                        _gotoNext = 2977870i32;
                    };
                } else if (__value__ == (2977850i32)) {
                    _i_2976965++;
                    _gotoNext = 2977884i32;
                } else if (__value__ == (2977870i32)) {
                    return false;
                    _i_2976965++;
                    _gotoNext = 2977884i32;
                } else if (__value__ == (2977883i32)) {
                    _i_2976965 = 0i32;
                    _gotoNext = 2977884i32;
                } else if (__value__ == (2977884i32)) {
                    if (_i_2976965 < (_keys_2976952.length)) {
                        _gotoNext = 2976973i32;
                    } else {
                        _gotoNext = 2977957i32;
                    };
                } else if (__value__ == (2977957i32)) {
                    return (_t.length) == ((0 : stdgo.GoInt));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
