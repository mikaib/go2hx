package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_2619402:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_2619380:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 2619294i32;
                } else if (__value__ == (2619294i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2619336i32;
                    } else {
                        _gotoNext = 2619380i32;
                    };
                } else if (__value__ == (2619336i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 2619294i32;
                } else if (__value__ == (2619380i32)) {
                    _inrange_2619380 = false;
                    _gotoNext = 2619408i32;
                } else if (__value__ == (2619408i32)) {
                    _i_2619402 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 2619415i32;
                } else if (__value__ == (2619415i32)) {
                    if (!scanBreak && ((_i_2619402 < (_pattern.length) : Bool))) {
                        _gotoNext = 2619448i32;
                    } else {
                        _gotoNext = 2619697i32;
                    };
                } else if (__value__ == (2619444i32)) {
                    _i_2619402++;
                    _gotoNext = 2619415i32;
                } else if (__value__ == (2619448i32)) {
                    _gotoNext = 2619452i32;
                } else if (__value__ == (2619452i32)) {
                    {
                        final __value__ = _pattern[(_i_2619402 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 2619474i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 2619581i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 2619611i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 2619642i32;
                        } else {
                            _gotoNext = 2619444i32;
                        };
                    };
                } else if (__value__ == (2619474i32)) {
                    if (((_i_2619402 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 2619564i32;
                    } else {
                        _gotoNext = 2619444i32;
                    };
                } else if (__value__ == (2619564i32)) {
                    _i_2619402++;
                    _gotoNext = 2619444i32;
                } else if (__value__ == (2619581i32)) {
                    _inrange_2619380 = true;
                    _gotoNext = 2619444i32;
                } else if (__value__ == (2619611i32)) {
                    _inrange_2619380 = false;
                    _gotoNext = 2619444i32;
                } else if (__value__ == (2619642i32)) {
                    if (!_inrange_2619380) {
                        _gotoNext = 2619667i32;
                    } else {
                        _gotoNext = 2619444i32;
                    };
                } else if (__value__ == (2619667i32)) {
                    scanBreak = true;
                    _gotoNext = 2619415i32;
                } else if (__value__ == (2619697i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_2619402) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_2619402) : stdgo.GoString)?.__copy__() };
                        _star = __tmp__._0;
                        _chunk = __tmp__._1;
                        _rest = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
