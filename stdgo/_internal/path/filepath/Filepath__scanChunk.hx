package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_4069370:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_4069348:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4069262i32;
                } else if (__value__ == (4069262i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4069304i32;
                    } else {
                        _gotoNext = 4069348i32;
                    };
                } else if (__value__ == (4069304i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4069262i32;
                } else if (__value__ == (4069348i32)) {
                    _inrange_4069348 = false;
                    _gotoNext = 4069376i32;
                } else if (__value__ == (4069376i32)) {
                    _i_4069370 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4069383i32;
                } else if (__value__ == (4069383i32)) {
                    if (!scanBreak && ((_i_4069370 < (_pattern.length) : Bool))) {
                        _gotoNext = 4069416i32;
                    } else {
                        _gotoNext = 4069708i32;
                    };
                } else if (__value__ == (4069412i32)) {
                    _i_4069370++;
                    _gotoNext = 4069383i32;
                } else if (__value__ == (4069416i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4069420i32;
                } else if (__value__ == (4069420i32)) {
                    {
                        final __value__ = _pattern[(_i_4069370 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4069442i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4069592i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4069622i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4069653i32;
                        } else {
                            _gotoNext = 4069412i32;
                        };
                    };
                } else if (__value__ == (4069442i32)) {
                    if (true) {
                        _gotoNext = 4069485i32;
                    } else {
                        _gotoNext = 4069412i32;
                    };
                } else if (__value__ == (4069485i32)) {
                    if (((_i_4069370 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4069568i32;
                    } else {
                        _gotoNext = 4069412i32;
                    };
                } else if (__value__ == (4069568i32)) {
                    _i_4069370++;
                    _gotoNext = 4069412i32;
                } else if (__value__ == (4069592i32)) {
                    _inrange_4069348 = true;
                    _gotoNext = 4069412i32;
                } else if (__value__ == (4069622i32)) {
                    _inrange_4069348 = false;
                    _gotoNext = 4069412i32;
                } else if (__value__ == (4069653i32)) {
                    if (!_inrange_4069348) {
                        _gotoNext = 4069678i32;
                    } else {
                        _gotoNext = 4069412i32;
                    };
                } else if (__value__ == (4069678i32)) {
                    scanBreak = true;
                    _gotoNext = 4069383i32;
                } else if (__value__ == (4069708i32)) {
                    return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_4069370) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_4069370) : stdgo.GoString)?.__copy__() };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
