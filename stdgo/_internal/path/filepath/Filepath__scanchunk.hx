package stdgo._internal.path.filepath;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var scanBreak = false;
        var _i_10:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inrange_9:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4019577i32;
                } else if (__value__ == (4019577i32)) {
                    if ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4019619i32;
                    } else {
                        _gotoNext = 4019663i32;
                    };
                } else if (__value__ == (4019619i32)) {
                    _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _star = true;
                    _gotoNext = 4019577i32;
                } else if (__value__ == (4019663i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4019691i32;
                } else if (__value__ == (4019691i32)) {
                    _i_10 = (0 : stdgo.GoInt);
                    scanBreak = false;
                    _gotoNext = 4019698i32;
                } else if (__value__ == (4019698i32)) {
                    if (!scanBreak && ((_i_10 < (_pattern.length) : Bool))) {
                        _gotoNext = 4019731i32;
                    } else {
                        _gotoNext = 4020023i32;
                    };
                } else if (__value__ == (4019727i32)) {
                    _i_10++;
                    _gotoNext = 4019698i32;
                } else if (__value__ == (4019731i32)) {
                    _gotoNext = 4019735i32;
                } else if (__value__ == (4019735i32)) {
                    {
                        final __value__ = _pattern[(_i_10 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 4019757i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 4019907i32;
                        } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 4019937i32;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4019968i32;
                        } else {
                            _gotoNext = 4019727i32;
                        };
                    };
                } else if (__value__ == (4019757i32)) {
                    if (true) {
                        _gotoNext = 4019800i32;
                    } else {
                        _gotoNext = 4019727i32;
                    };
                } else if (__value__ == (4019800i32)) {
                    if (((_i_10 + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                        _gotoNext = 4019883i32;
                    } else {
                        _gotoNext = 4019727i32;
                    };
                } else if (__value__ == (4019883i32)) {
                    _i_10++;
                    _gotoNext = 4019727i32;
                } else if (__value__ == (4019907i32)) {
                    _inrange_9 = true;
                    _gotoNext = 4019727i32;
                } else if (__value__ == (4019937i32)) {
                    _inrange_9 = false;
                    _gotoNext = 4019727i32;
                } else if (__value__ == (4019968i32)) {
                    if (!_inrange_9) {
                        _gotoNext = 4019993i32;
                    } else {
                        _gotoNext = 4019727i32;
                    };
                } else if (__value__ == (4019993i32)) {
                    scanBreak = true;
                    _gotoNext = 4019698i32;
                } else if (__value__ == (4020023i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i_10) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i_10) : stdgo.GoString)?.__copy__() };
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
