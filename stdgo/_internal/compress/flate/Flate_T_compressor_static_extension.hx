package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_compressor_asInterface) class T_compressor_static_extension {
    @:keep
    static public function _close( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if (stdgo.Go.toInterface(_d._err) == (stdgo.Go.toInterface(stdgo._internal.compress.flate.Flate__errWriterClosed._errWriterClosed))) {
            return (null : stdgo.Error);
        };
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err != null) {
            return _d._err;
        };
        {
            _d._w._writeStoredHeader((0 : stdgo.GoInt), true);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._flush();
        if (_d._w._err != null) {
            return _d._w._err;
        };
        _d._err = stdgo._internal.compress.flate.Flate__errWriterClosed._errWriterClosed;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _reset( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        _d._w._reset(_w);
        _d._sync = false;
        _d._err = (null : stdgo.Error);
        {
            final __value__ = _d._compressionLevel._level;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _d._windowEnd = (0 : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _d._windowEnd = (0 : stdgo.GoInt);
                _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                _d._bestSpeed._reset();
            } else {
                _d._chainHead = (-1 : stdgo.GoInt);
                for (_i => _ in _d._hashHead) {
                    _d._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                for (_i => _ in _d._hashPrev) {
                    _d._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                _d._hashOffset = (1 : stdgo.GoInt);
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = (0 : stdgo.GoInt);
                    _d._index = __tmp__0;
                    _d._windowEnd = __tmp__1;
                };
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = false;
                    _d._blockStart = __tmp__0;
                    _d._byteAvailable = __tmp__1;
                };
                _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                _d._length = (3 : stdgo.GoInt);
                _d._offset = (0 : stdgo.GoInt);
                _d._maxInsertIndex = (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    static public function _init( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _err = (null : stdgo.Error);
        _d._w = stdgo._internal.compress.flate.Flate__newHuffmanBitWriter._newHuffmanBitWriter(_w);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_level == (0 : stdgo.GoInt)))) {
                    _d._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _d._fill = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillStore;
                    _d._step = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._store;
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_level == (-2 : stdgo.GoInt)))) {
                    _d._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _d._fill = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillStore;
                    _d._step = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._storeHuff;
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_level == (1 : stdgo.GoInt)))) {
                    _d._compressionLevel = stdgo._internal.compress.flate.Flate__levels._levels[(_level : stdgo.GoInt)];
                    _d._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _d._fill = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillStore;
                    _d._step = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._encSpeed;
                    _d._bestSpeed = stdgo._internal.compress.flate.Flate__newDeflateFast._newDeflateFast();
                    _d._tokens = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    break;
                    break;
                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_level == (-1 : stdgo.GoInt)))) {
                    _level = (6 : stdgo.GoInt);
                    @:fallthrough {
                        __switchIndex__ = 4;
                        __run__ = true;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (((2 : stdgo.GoInt) <= _level : Bool) && (_level <= (9 : stdgo.GoInt) : Bool) : Bool))) {
                    _d._compressionLevel = stdgo._internal.compress.flate.Flate__levels._levels[(_level : stdgo.GoInt)];
                    _d._initDeflate();
                    _d._fill = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillDeflate;
                    _d._step = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._deflate;
                    break;
                    break;
                } else {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("flate: invalid compression level %d: want value in range [-2, 9]" : stdgo.GoString), stdgo.Go.toInterface(_level));
                    break;
                };
                break;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _syncFlush( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err == null) {
            _d._w._writeStoredHeader((0 : stdgo.GoInt), false);
            _d._w._flush();
            _d._err = _d._w._err;
        };
        _d._sync = false;
        return _d._err;
    }
    @:keep
    static public function _write( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_d._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        _n = (_b.length);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            _d._step(_d);
            _b = (_b.__slice__(_d._fill(_d, _b)) : stdgo.Slice<stdgo.GoUInt8>);
            if (_d._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
            };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _storeHuff( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((((_d._windowEnd < (_d._window.length) : Bool) && !_d._sync : Bool) || (_d._windowEnd == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        _d._w._writeBlockHuff(false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        _d._err = _d._w._err;
        _d._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _store( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if (((_d._windowEnd > (0 : stdgo.GoInt) : Bool) && (((_d._windowEnd == (65535 : stdgo.GoInt)) || _d._sync : Bool)) : Bool)) {
            _d._err = _d._writeStoredBlock((_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
            _d._windowEnd = (0 : stdgo.GoInt);
        };
    }
    @:keep
    static public function _fillStore( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _n = (stdgo.Go.copySlice((_d._window.__slice__(_d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>), _b) : stdgo.GoInt);
        _d._windowEnd = (_d._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
    @:keep
    static public function _deflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _i_3715984:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newOffset_3713850:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minIndex_3713557:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newIndex_3714839:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newLength_3713839:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevOffset_3713485:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hash_3713238:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _prevLength_3713460:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lookahead_3712556:stdgo.GoInt = (0 : stdgo.GoInt);
        var loopBreak = false;
        var _hh_3715257:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var _hash_3715094:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _index_3714991:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3713861:Bool = false;
        var _hh_3713299:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((((_d._windowEnd - _d._index : stdgo.GoInt) < (262 : stdgo.GoInt) : Bool) && !_d._sync : Bool)) {
                        _gotoNext = 3712407i32;
                    } else {
                        _gotoNext = 3712423i32;
                    };
                } else if (__value__ == (3712407i32)) {
                    return;
                    _gotoNext = 3712423i32;
                } else if (__value__ == (3712423i32)) {
                    _d._maxInsertIndex = (_d._windowEnd - (3 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3712478i32;
                } else if (__value__ == (3712478i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3712485i32;
                } else if (__value__ == (3712485i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3712489i32;
                    } else {
                        _gotoNext = 3716388i32;
                    };
                } else if (__value__ == (3712489i32)) {
                    if ((_d._index > _d._windowEnd : Bool)) {
                        _gotoNext = 3712518i32;
                    } else {
                        _gotoNext = 3712556i32;
                    };
                } else if (__value__ == (3712518i32)) {
                    throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                    _gotoNext = 3712556i32;
                } else if (__value__ == (3712556i32)) {
                    _lookahead_3712556 = (_d._windowEnd - _d._index : stdgo.GoInt);
                    if ((_lookahead_3712556 < (262 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3712638i32;
                    } else {
                        _gotoNext = 3713181i32;
                    };
                } else if (__value__ == (3712638i32)) {
                    if (!_d._sync) {
                        _gotoNext = 3712654i32;
                    } else {
                        _gotoNext = 3712679i32;
                    };
                } else if (__value__ == (3712654i32)) {
                    loopBreak = true;
                    _gotoNext = 3712485i32;
                } else if (__value__ == (3712679i32)) {
                    if ((_d._index > _d._windowEnd : Bool)) {
                        _gotoNext = 3712704i32;
                    } else {
                        _gotoNext = 3712745i32;
                    };
                } else if (__value__ == (3712704i32)) {
                    throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                    _gotoNext = 3712745i32;
                } else if (__value__ == (3712745i32)) {
                    if (_lookahead_3712556 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3712763i32;
                    } else {
                        _gotoNext = 3713181i32;
                    };
                } else if (__value__ == (3712763i32)) {
                    if (_d._byteAvailable) {
                        _gotoNext = 3712830i32;
                    } else {
                        _gotoNext = 3713013i32;
                    };
                } else if (__value__ == (3712830i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__literalToken._literalToken((_d._window[(_d._index - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32))));
                    _d._byteAvailable = false;
                    _gotoNext = 3713013i32;
                } else if (__value__ == (3713013i32)) {
                    if (((_d._tokens.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3713034i32;
                    } else {
                        _gotoNext = 3713159i32;
                    };
                } else if (__value__ == (3713034i32)) {
                    {
                        _d._err = _d._writeBlock(_d._tokens, _d._index);
                        if (_d._err != null) {
                            _gotoNext = 3713098i32;
                        } else {
                            _gotoNext = 3713125i32;
                        };
                    };
                } else if (__value__ == (3713098i32)) {
                    return;
                    _gotoNext = 3713125i32;
                } else if (__value__ == (3713125i32)) {
                    _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    _gotoNext = 3713159i32;
                } else if (__value__ == (3713159i32)) {
                    loopBreak = true;
                    _gotoNext = 3712485i32;
                } else if (__value__ == (3713181i32)) {
                    if ((_d._index < _d._maxInsertIndex : Bool)) {
                        _gotoNext = 3713211i32;
                    } else {
                        _gotoNext = 3713460i32;
                    };
                } else if (__value__ == (3713211i32)) {
                    _hash_3713238 = stdgo._internal.compress.flate.Flate__hash4._hash4((_d._window.__slice__(_d._index, (_d._index + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_3713299 = stdgo.Go.pointer(_d._hashHead[((_hash_3713238 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._chainHead = (_hh_3713299.value : stdgo.GoInt);
                    _d._hashPrev[(_d._index & (32767 : stdgo.GoInt) : stdgo.GoInt)] = (_d._chainHead : stdgo.GoUInt32);
                    _hh_3713299.value = ((_d._index + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 3713460i32;
                } else if (__value__ == (3713460i32)) {
                    _prevLength_3713460 = _d._length;
                    _prevOffset_3713485 = _d._offset;
                    _d._length = (3 : stdgo.GoInt);
                    _d._offset = (0 : stdgo.GoInt);
                    _minIndex_3713557 = (_d._index - (32768 : stdgo.GoInt) : stdgo.GoInt);
                    if ((_minIndex_3713557 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3713608i32;
                    } else {
                        _gotoNext = 3713633i32;
                    };
                } else if (__value__ == (3713608i32)) {
                    _minIndex_3713557 = (0 : stdgo.GoInt);
                    _gotoNext = 3713633i32;
                } else if (__value__ == (3713633i32)) {
                    if ((((_d._chainHead - _d._hashOffset : stdgo.GoInt) >= _minIndex_3713557 : Bool) && (((_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_lookahead_3712556 > (3 : stdgo.GoInt) : Bool) : Bool) || ((_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_lookahead_3712556 > _prevLength_3713460 : Bool) : Bool) && (_prevLength_3713460 < _d._compressionLevel._lazy : Bool) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3713831i32;
                    } else {
                        _gotoNext = 3714010i32;
                    };
                } else if (__value__ == (3713831i32)) {
                    {
                        {
                            var __tmp__ = _d._findMatch(_d._index, (_d._chainHead - _d._hashOffset : stdgo.GoInt), (3 : stdgo.GoInt), _lookahead_3712556);
                            _newLength_3713839 = __tmp__._0;
                            _newOffset_3713850 = __tmp__._1;
                            _ok_3713861 = __tmp__._2;
                        };
                        if (_ok_3713861) {
                            _gotoNext = 3713947i32;
                        } else {
                            _gotoNext = 3714010i32;
                        };
                    };
                } else if (__value__ == (3713947i32)) {
                    _d._length = _newLength_3713839;
                    _d._offset = _newOffset_3713850;
                    _gotoNext = 3714010i32;
                } else if (__value__ == (3714010i32)) {
                    if (((_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_d._length >= (4 : stdgo.GoInt) : Bool) : Bool) || ((_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_prevLength_3713460 >= (4 : stdgo.GoInt) : Bool) : Bool) && (_d._length <= _prevLength_3713460 : Bool) : Bool) : Bool)) {
                        _gotoNext = 3714169i32;
                    } else {
                        _gotoNext = 3715920i32;
                    };
                } else if (__value__ == (3714169i32)) {
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3714324i32;
                    } else {
                        _gotoNext = 3714448i32;
                    };
                } else if (__value__ == (3714324i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken(((_d._length - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_d._offset - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    _gotoNext = 3714796i32;
                } else if (__value__ == (3714448i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken(((_prevLength_3713460 - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_prevOffset_3713485 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    _gotoNext = 3714796i32;
                } else if (__value__ == (3714796i32)) {
                    if ((_d._length <= _d._compressionLevel._fastSkipHashing : Bool)) {
                        _gotoNext = 3714829i32;
                    } else {
                        _gotoNext = 3715573i32;
                    };
                } else if (__value__ == (3714829i32)) {
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3714890i32;
                    } else {
                        _gotoNext = 3714938i32;
                    };
                } else if (__value__ == (3714890i32)) {
                    _newIndex_3714839 = (_d._index + _d._length : stdgo.GoInt);
                    _gotoNext = 3714991i32;
                } else if (__value__ == (3714938i32)) {
                    _newIndex_3714839 = ((_d._index + _prevLength_3713460 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3714991i32;
                } else if (__value__ == (3714991i32)) {
                    _index_3714991 = _d._index;
                    _index_3714991++;
                    _gotoNext = 3715012i32;
                } else if (__value__ == (3715012i32)) {
                    if ((_index_3714991 < _newIndex_3714839 : Bool)) {
                        _gotoNext = 3715051i32;
                    } else {
                        _gotoNext = 3715436i32;
                    };
                } else if (__value__ == (3715043i32)) {
                    _index_3714991++;
                    _gotoNext = 3715012i32;
                } else if (__value__ == (3715051i32)) {
                    if ((_index_3714991 < _d._maxInsertIndex : Bool)) {
                        _gotoNext = 3715086i32;
                    } else {
                        _gotoNext = 3715043i32;
                    };
                } else if (__value__ == (3715086i32)) {
                    _hash_3715094 = stdgo._internal.compress.flate.Flate__hash4._hash4((_d._window.__slice__(_index_3714991, (_index_3714991 + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_3715257 = stdgo.Go.pointer(_d._hashHead[((_hash_3715094 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._hashPrev[(_index_3714991 & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh_3715257.value;
                    _hh_3715257.value = ((_index_3714991 + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 3715043i32;
                } else if (__value__ == (3715436i32)) {
                    _d._index = _index_3714991;
                    if (_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3715491i32;
                    } else {
                        _gotoNext = 3715707i32;
                    };
                } else if (__value__ == (3715491i32)) {
                    _d._byteAvailable = false;
                    _d._length = (3 : stdgo.GoInt);
                    _gotoNext = 3715707i32;
                } else if (__value__ == (3715573i32)) {
                    _d._index = (_d._index + (_d._length) : stdgo.GoInt);
                    _gotoNext = 3715707i32;
                } else if (__value__ == (3715707i32)) {
                    if ((_d._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 3715747i32;
                    } else {
                        _gotoNext = 3716388i32;
                    };
                } else if (__value__ == (3715747i32)) {
                    {
                        _d._err = _d._writeBlock(_d._tokens, _d._index);
                        if (_d._err != null) {
                            _gotoNext = 3715858i32;
                        } else {
                            _gotoNext = 3715882i32;
                        };
                    };
                } else if (__value__ == (3715858i32)) {
                    return;
                    _gotoNext = 3715882i32;
                } else if (__value__ == (3715882i32)) {
                    _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    _gotoNext = 3716388i32;
                } else if (__value__ == (3715920i32)) {
                    if (((_d._compressionLevel._fastSkipHashing != (2147483647 : stdgo.GoInt)) || _d._byteAvailable : Bool)) {
                        _gotoNext = 3715978i32;
                    } else {
                        _gotoNext = 3716300i32;
                    };
                } else if (__value__ == (3715978i32)) {
                    _i_3715984 = (_d._index - (1 : stdgo.GoInt) : stdgo.GoInt);
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3716039i32;
                    } else {
                        _gotoNext = 3716068i32;
                    };
                } else if (__value__ == (3716039i32)) {
                    _i_3715984 = _d._index;
                    _gotoNext = 3716068i32;
                } else if (__value__ == (3716068i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__literalToken._literalToken((_d._window[(_i_3715984 : stdgo.GoInt)] : stdgo.GoUInt32))));
                    if ((_d._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 3716175i32;
                    } else {
                        _gotoNext = 3716300i32;
                    };
                } else if (__value__ == (3716175i32)) {
                    {
                        _d._err = _d._writeBlock(_d._tokens, (_i_3715984 + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_d._err != null) {
                            _gotoNext = 3716235i32;
                        } else {
                            _gotoNext = 3716262i32;
                        };
                    };
                } else if (__value__ == (3716235i32)) {
                    return;
                    _gotoNext = 3716262i32;
                } else if (__value__ == (3716262i32)) {
                    _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    _gotoNext = 3716300i32;
                } else if (__value__ == (3716300i32)) {
                    _d._index++;
                    if (_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3716347i32;
                    } else {
                        _gotoNext = 3716388i32;
                    };
                } else if (__value__ == (3716347i32)) {
                    _d._byteAvailable = true;
                    _gotoNext = 3716388i32;
                } else if (__value__ == (3716388i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    static public function _initDeflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        _d._window = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _d._hashOffset = (1 : stdgo.GoInt);
        _d._tokens = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>((0 : stdgo.GoInt).toBasic(), (16385 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        _d._length = (3 : stdgo.GoInt);
        _d._offset = (0 : stdgo.GoInt);
        _d._byteAvailable = false;
        _d._index = (0 : stdgo.GoInt);
        _d._chainHead = (-1 : stdgo.GoInt);
        _d._bulkHasher = stdgo._internal.compress.flate.Flate__bulkHash4._bulkHash4;
    }
    @:keep
    static public function _encSpeed( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((_d._windowEnd < (65535 : stdgo.GoInt) : Bool)) {
            if (!_d._sync) {
                return;
            };
            if ((_d._windowEnd < (128 : stdgo.GoInt) : Bool)) {
                if (_d._windowEnd == ((0 : stdgo.GoInt))) {
                    return;
                } else if ((_d._windowEnd <= (16 : stdgo.GoInt) : Bool)) {
                    _d._err = _d._writeStoredBlock((_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    _d._w._writeBlockHuff(false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                    _d._err = _d._w._err;
                };
                _d._windowEnd = (0 : stdgo.GoInt);
                _d._bestSpeed._reset();
                return;
            };
        };
        _d._tokens = _d._bestSpeed._encode((_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>), (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        if (((_d._tokens.length) > (_d._windowEnd - ((_d._windowEnd >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
            _d._w._writeBlockHuff(false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            _d._w._writeBlockDynamic(_d._tokens, false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        };
        _d._err = _d._w._err;
        _d._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _writeStoredBlock( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        {
            _d._w._writeStoredHeader((_buf.length), false);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._writeBytes(_buf);
        return _d._w._err;
    }
    @:keep
    static public function _findMatch( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _pos:stdgo.GoInt, _prevHead:stdgo.GoInt, _prevLength:stdgo.GoInt, _lookahead:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _length = (0 : stdgo.GoInt), _offset = (0 : stdgo.GoInt), _ok = false;
        var _minMatchLook = (258 : stdgo.GoInt);
        if ((_lookahead < _minMatchLook : Bool)) {
            _minMatchLook = _lookahead;
        };
        var _win = (_d._window.__slice__((0 : stdgo.GoInt), (_pos + _minMatchLook : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _nice = ((_win.length) - _pos : stdgo.GoInt);
        if ((_d._compressionLevel._nice < _nice : Bool)) {
            _nice = _d._compressionLevel._nice;
        };
        var _tries = (_d._compressionLevel._chain : stdgo.GoInt);
        _length = _prevLength;
        if ((_length >= _d._compressionLevel._good : Bool)) {
            _tries = (_tries >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        var _wEnd = (_win[(_pos + _length : stdgo.GoInt)] : stdgo.GoUInt8);
        var _wPos = (_win.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>);
        var _minIndex = (_pos - (32768 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _i = (_prevHead : stdgo.GoInt);
            while ((_tries > (0 : stdgo.GoInt) : Bool)) {
                if (_wEnd == (_win[((_i + _length : stdgo.GoInt) : stdgo.GoInt)])) {
                    var _n = (stdgo._internal.compress.flate.Flate__matchLen._matchLen((_win.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _wPos, _minMatchLook) : stdgo.GoInt);
                    if (((_n > _length : Bool) && (((_n > (4 : stdgo.GoInt) : Bool) || ((_pos - _i : stdgo.GoInt) <= (4096 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _length = _n;
                        _offset = (_pos - _i : stdgo.GoInt);
                        _ok = true;
                        if ((_n >= _nice : Bool)) {
                            break;
                        };
                        _wEnd = _win[(_pos + _n : stdgo.GoInt)];
                    };
                };
if (_i == (_minIndex)) {
                    break;
                };
_i = ((_d._hashPrev[(_i & (32767 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) - _d._hashOffset : stdgo.GoInt);
if (((_i < _minIndex : Bool) || (_i < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
                _tries--;
            };
        };
        return { _0 : _length, _1 : _offset, _2 : _ok };
    }
    @:keep
    static public function _fillWindow( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((_d._compressionLevel._level < (2 : stdgo.GoInt) : Bool)) {
            return;
        };
        if (((_d._index != (0 : stdgo.GoInt)) || (_d._windowEnd != (0 : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("internal error: fillWindow called with stale data" : stdgo.GoString));
        };
        if (((_b.length) > (32768 : stdgo.GoInt) : Bool)) {
            _b = (_b.__slice__(((_b.length) - (32768 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n = (stdgo.Go.copySlice(_d._window, _b) : stdgo.GoInt);
        var _loops = ((((_n + (256 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt)) / (256 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < _loops : Bool)) {
                var _index = (_j * (256 : stdgo.GoInt) : stdgo.GoInt);
var _end = (((_index + (256 : stdgo.GoInt) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
if ((_end > _n : Bool)) {
                    _end = _n;
                };
var _toCheck = (_d._window.__slice__(_index, _end) : stdgo.Slice<stdgo.GoUInt8>);
var _dstSize = (((_toCheck.length) - (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
if ((_dstSize <= (0 : stdgo.GoInt) : Bool)) {
                    {
                        _j++;
                        continue;
                    };
                };
var _dst = (_d._hashMatch.__slice__(0, _dstSize) : stdgo.Slice<stdgo.GoUInt32>);
_d._bulkHasher(_toCheck, _dst);
for (_i => _val in _dst) {
                    var _di = (_i + _index : stdgo.GoInt);
                    var _hh = stdgo.Go.pointer(_d._hashHead[((_val & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._hashPrev[(_di & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh.value;
                    _hh.value = ((_di + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                };
                _j++;
            };
        };
        _d._windowEnd = _n;
        _d._index = _n;
    }
    @:keep
    static public function _writeBlock( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _index:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((_index > (0 : stdgo.GoInt) : Bool)) {
            var _window:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if ((_d._blockStart <= _index : Bool)) {
                _window = (_d._window.__slice__(_d._blockStart, _index) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _d._blockStart = _index;
            _d._w._writeBlock(_tokens, false, _window);
            return _d._w._err;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _fillDeflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((_d._index >= (65274 : stdgo.GoInt) : Bool)) {
            stdgo.Go.copySlice(_d._window, (_d._window.__slice__((32768 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _d._index = (_d._index - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            _d._windowEnd = (_d._windowEnd - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_d._blockStart >= (32768 : stdgo.GoInt) : Bool)) {
                _d._blockStart = (_d._blockStart - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                _d._blockStart = (2147483647 : stdgo.GoInt);
            };
            _d._hashOffset = (_d._hashOffset + ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_d._hashOffset > (16777216 : stdgo.GoInt) : Bool)) {
                var _delta = (_d._hashOffset - (1 : stdgo.GoInt) : stdgo.GoInt);
                _d._hashOffset = (_d._hashOffset - (_delta) : stdgo.GoInt);
                _d._chainHead = (_d._chainHead - (_delta) : stdgo.GoInt);
                for (_i => _v in (_d._hashPrev.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        _d._hashPrev[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        _d._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
                for (_i => _v in (_d._hashHead.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        _d._hashHead[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        _d._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
            };
        };
        var _n = (stdgo.Go.copySlice((_d._window.__slice__(_d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>), _b) : stdgo.GoInt);
        _d._windowEnd = (_d._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
}
