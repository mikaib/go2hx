package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _i_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_9:Bool = false;
        var scanBreak = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    0i32;
                    _gotoNext = 3964806i32;
                } else if (__value__ == (3964806i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3964848i32;
                    } else {
                        _gotoNext = 3964892i32;
                    };
                } else if (__value__ == (3964848i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 3964806i32;
                } else if (__value__ == (3964892i32)) {
                    _inrange_9 = false;
                    _gotoNext = 3964920i32;
                } else if (__value__ == (3964920i32)) {
                    _i_10 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 3964927i32;
                } else if (__value__ == (3964927i32)) {
                    if (!scanBreak && ((_i_10 < (_pattern.length) : Bool))) {
                        _gotoNext = 3964960i32;
                    } else {
                        _gotoNext = 3965252i32;
                    };
                } else if (__value__ == (3964956i32)) {
                    _i_10++;
                    _gotoNext = 3964927i32;
                } else if (__value__ == (3964960i32)) {
                    _gotoNext = 3964964i32;
                } else if (__value__ == (3964964i32)) {
                    {
                        final __value__ = _pattern[(_i_10 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 3964986i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3965136i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3965166i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 3965197i32;
                        } else {
                            _gotoNext = 3964956i32;
                        };
                    };
                } else if (__value__ == (3964986i32)) {
                    if (true) {
                        _gotoNext = 3965029i32;
                    } else {
                        _gotoNext = 3964956i32;
                    };
                } else if (__value__ == (3965029i32)) {
                    if (((_i_10 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 3965112i32;
                    } else {
                        _gotoNext = 3964956i32;
                    };
                } else if (__value__ == (3965112i32)) {
                    _i_10++;
                    _gotoNext = 3964956i32;
                } else if (__value__ == (3965136i32)) {
                    _inrange_9 = true;
                    _gotoNext = 3964956i32;
                } else if (__value__ == (3965166i32)) {
                    _inrange_9 = false;
                    _gotoNext = 3964956i32;
                } else if (__value__ == (3965197i32)) {
                    if (!_inrange_9) {
                        _gotoNext = 3965222i32;
                    } else {
                        _gotoNext = 3964956i32;
                    };
                } else if (__value__ == (3965222i32)) {
                    scanBreak = true;
                    _gotoNext = 3964927i32;
                } else if (__value__ == (3965252i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_10) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_10) : stdgo.GoString)?.__copy__() };
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
