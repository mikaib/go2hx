package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_compressor_asInterface) class T_compressor_static_extension {
    @:keep
    @:tdfield
    static public function _close( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        if (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.compress.flate.Flate__errwriterclosed._errWriterClosed))) {
            return (null : stdgo.Error);
        };
        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _d ?? throw "null pointer dereference")._err;
        };
        (@:checkr _d ?? throw "null pointer dereference")._sync = true;
        (@:checkr _d ?? throw "null pointer dereference")._step(_d);
        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _d ?? throw "null pointer dereference")._err;
        };
        {
            @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._writeStoredHeader((0 : stdgo.GoInt), true);
            if ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err != null) {
                return (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err;
            };
        };
        @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._flush();
        if ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err != null) {
            return (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err;
        };
        (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.compress.flate.Flate__errwriterclosed._errWriterClosed;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _reset( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._reset(_w);
        (@:checkr _d ?? throw "null pointer dereference")._sync = false;
        (@:checkr _d ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._compressionLevel._level;
            if (__value__ == ((0 : stdgo.GoInt))) {
                (@:checkr _d ?? throw "null pointer dereference")._windowEnd = (0 : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                (@:checkr _d ?? throw "null pointer dereference")._windowEnd = (0 : stdgo.GoInt);
                (@:checkr _d ?? throw "null pointer dereference")._tokens = ((@:checkr _d ?? throw "null pointer dereference")._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                @:check2r (@:checkr _d ?? throw "null pointer dereference")._bestSpeed._reset();
            } else {
                (@:checkr _d ?? throw "null pointer dereference")._chainHead = (-1 : stdgo.GoInt);
                for (_i => _ in (@:checkr _d ?? throw "null pointer dereference")._hashHead) {
                    (@:checkr _d ?? throw "null pointer dereference")._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                for (_i => _ in (@:checkr _d ?? throw "null pointer dereference")._hashPrev) {
                    (@:checkr _d ?? throw "null pointer dereference")._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                (@:checkr _d ?? throw "null pointer dereference")._hashOffset = (1 : stdgo.GoInt);
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = (0 : stdgo.GoInt);
                    (@:checkr _d ?? throw "null pointer dereference")._index = __tmp__0;
                    (@:checkr _d ?? throw "null pointer dereference")._windowEnd = __tmp__1;
                };
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = false;
                    (@:checkr _d ?? throw "null pointer dereference")._blockStart = __tmp__0;
                    (@:checkr _d ?? throw "null pointer dereference")._byteAvailable = __tmp__1;
                };
                (@:checkr _d ?? throw "null pointer dereference")._tokens = ((@:checkr _d ?? throw "null pointer dereference")._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                (@:checkr _d ?? throw "null pointer dereference")._length = (3 : stdgo.GoInt);
                (@:checkr _d ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
                (@:checkr _d ?? throw "null pointer dereference")._maxInsertIndex = (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _init( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _err = (null : stdgo.Error);
        (@:checkr _d ?? throw "null pointer dereference")._w = stdgo._internal.compress.flate.Flate__newhuffmanbitwriter._newHuffmanBitWriter(_w);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_level == (0 : stdgo.GoInt)))) {
                    (@:checkr _d ?? throw "null pointer dereference")._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _d ?? throw "null pointer dereference")._fill = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillStore;
                    (@:checkr _d ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._store;
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_level == (-2 : stdgo.GoInt)))) {
                    (@:checkr _d ?? throw "null pointer dereference")._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _d ?? throw "null pointer dereference")._fill = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillStore;
                    (@:checkr _d ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._storeHuff;
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_level == (1 : stdgo.GoInt)))) {
                    (@:checkr _d ?? throw "null pointer dereference")._compressionLevel = stdgo._internal.compress.flate.Flate__levels._levels[(_level : stdgo.GoInt)];
                    (@:checkr _d ?? throw "null pointer dereference")._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _d ?? throw "null pointer dereference")._fill = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillStore;
                    (@:checkr _d ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._encSpeed;
                    (@:checkr _d ?? throw "null pointer dereference")._bestSpeed = stdgo._internal.compress.flate.Flate__newdeflatefast._newDeflateFast();
                    (@:checkr _d ?? throw "null pointer dereference")._tokens = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
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
                    (@:checkr _d ?? throw "null pointer dereference")._compressionLevel = stdgo._internal.compress.flate.Flate__levels._levels[(_level : stdgo.GoInt)];
                    @:check2r _d._initDeflate();
                    (@:checkr _d ?? throw "null pointer dereference")._fill = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillDeflate;
                    (@:checkr _d ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._deflate;
                    break;
                    break;
                } else {
                    return _err = stdgo._internal.fmt.Fmt_errorf.errorf(("flate: invalid compression level %d: want value in range [-2, 9]" : stdgo.GoString), stdgo.Go.toInterface(_level));
                    break;
                };
                break;
            };
        };
        return _err = (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _syncFlush( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _d ?? throw "null pointer dereference")._err;
        };
        (@:checkr _d ?? throw "null pointer dereference")._sync = true;
        (@:checkr _d ?? throw "null pointer dereference")._step(_d);
        if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
            @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._writeStoredHeader((0 : stdgo.GoInt), false);
            @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._flush();
            (@:checkr _d ?? throw "null pointer dereference")._err = (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err;
        };
        (@:checkr _d ?? throw "null pointer dereference")._sync = false;
        return (@:checkr _d ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function _write( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _n = (_b.length);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._step(_d);
            _b = (_b.__slice__((@:checkr _d ?? throw "null pointer dereference")._fill(_d, _b)) : stdgo.Slice<stdgo.GoUInt8>);
            if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _storeHuff( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        if (((((@:checkr _d ?? throw "null pointer dereference")._windowEnd < ((@:checkr _d ?? throw "null pointer dereference")._window.length) : Bool) && !(@:checkr _d ?? throw "null pointer dereference")._sync : Bool) || ((@:checkr _d ?? throw "null pointer dereference")._windowEnd == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._writeBlockHuff(false, ((@:checkr _d ?? throw "null pointer dereference")._window.__slice__(0, (@:checkr _d ?? throw "null pointer dereference")._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _d ?? throw "null pointer dereference")._err = (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err;
        (@:checkr _d ?? throw "null pointer dereference")._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _store( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        if ((((@:checkr _d ?? throw "null pointer dereference")._windowEnd > (0 : stdgo.GoInt) : Bool) && ((((@:checkr _d ?? throw "null pointer dereference")._windowEnd == (65535 : stdgo.GoInt)) || (@:checkr _d ?? throw "null pointer dereference")._sync : Bool)) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._writeStoredBlock(((@:checkr _d ?? throw "null pointer dereference")._window.__slice__(0, (@:checkr _d ?? throw "null pointer dereference")._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _d ?? throw "null pointer dereference")._windowEnd = (0 : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function _fillStore( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _n = (((@:checkr _d ?? throw "null pointer dereference")._window.__slice__((@:checkr _d ?? throw "null pointer dereference")._windowEnd) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b) : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._windowEnd = ((@:checkr _d ?? throw "null pointer dereference")._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
    @:keep
    @:tdfield
    static public function _deflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _newLength_3654422:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevLength_3654043:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hash_3653821:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _newIndex_3655422:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newOffset_3654433:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minIndex_3654140:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hh_3653882:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var _lookahead_3653139:stdgo.GoInt = (0 : stdgo.GoInt);
        var loopBreak = false;
        var _i_3656567:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hash_3655677:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _ok_3654444:Bool = false;
        var _hh_3655840:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var _index_3655574:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevOffset_3654068:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((((@:checkr _d ?? throw "null pointer dereference")._windowEnd - (@:checkr _d ?? throw "null pointer dereference")._index : stdgo.GoInt) < (262 : stdgo.GoInt) : Bool) && !(@:checkr _d ?? throw "null pointer dereference")._sync : Bool)) {
                        _gotoNext = 3652990i32;
                    } else {
                        _gotoNext = 3653006i32;
                    };
                } else if (__value__ == (3652990i32)) {
                    return;
                    _gotoNext = 3653006i32;
                } else if (__value__ == (3653006i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._maxInsertIndex = ((@:checkr _d ?? throw "null pointer dereference")._windowEnd - (3 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3653061i32;
                } else if (__value__ == (3653061i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3653068i32;
                } else if (__value__ == (3653068i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3653072i32;
                    } else {
                        _gotoNext = 3656971i32;
                    };
                } else if (__value__ == (3653072i32)) {
                    if (((@:checkr _d ?? throw "null pointer dereference")._index > (@:checkr _d ?? throw "null pointer dereference")._windowEnd : Bool)) {
                        _gotoNext = 3653101i32;
                    } else {
                        _gotoNext = 3653139i32;
                    };
                } else if (__value__ == (3653101i32)) {
                    throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                    _gotoNext = 3653139i32;
                } else if (__value__ == (3653139i32)) {
                    _lookahead_3653139 = ((@:checkr _d ?? throw "null pointer dereference")._windowEnd - (@:checkr _d ?? throw "null pointer dereference")._index : stdgo.GoInt);
                    if ((_lookahead_3653139 < (262 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3653221i32;
                    } else {
                        _gotoNext = 3653764i32;
                    };
                } else if (__value__ == (3653221i32)) {
                    if (!(@:checkr _d ?? throw "null pointer dereference")._sync) {
                        _gotoNext = 3653237i32;
                    } else {
                        _gotoNext = 3653262i32;
                    };
                } else if (__value__ == (3653237i32)) {
                    loopBreak = true;
                    _gotoNext = 3653068i32;
                } else if (__value__ == (3653262i32)) {
                    if (((@:checkr _d ?? throw "null pointer dereference")._index > (@:checkr _d ?? throw "null pointer dereference")._windowEnd : Bool)) {
                        _gotoNext = 3653287i32;
                    } else {
                        _gotoNext = 3653328i32;
                    };
                } else if (__value__ == (3653287i32)) {
                    throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                    _gotoNext = 3653328i32;
                } else if (__value__ == (3653328i32)) {
                    if (_lookahead_3653139 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3653346i32;
                    } else {
                        _gotoNext = 3653764i32;
                    };
                } else if (__value__ == (3653346i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._byteAvailable) {
                        _gotoNext = 3653413i32;
                    } else {
                        _gotoNext = 3653596i32;
                    };
                } else if (__value__ == (3653413i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._tokens = ((@:checkr _d ?? throw "null pointer dereference")._tokens.__append__(stdgo._internal.compress.flate.Flate__literaltoken._literalToken(((@:checkr _d ?? throw "null pointer dereference")._window[((@:checkr _d ?? throw "null pointer dereference")._index - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32))));
                    (@:checkr _d ?? throw "null pointer dereference")._byteAvailable = false;
                    _gotoNext = 3653596i32;
                } else if (__value__ == (3653596i32)) {
                    if ((((@:checkr _d ?? throw "null pointer dereference")._tokens.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3653617i32;
                    } else {
                        _gotoNext = 3653742i32;
                    };
                } else if (__value__ == (3653617i32)) {
                    {
                        (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._writeBlock((@:checkr _d ?? throw "null pointer dereference")._tokens, (@:checkr _d ?? throw "null pointer dereference")._index);
                        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                            _gotoNext = 3653681i32;
                        } else {
                            _gotoNext = 3653708i32;
                        };
                    };
                } else if (__value__ == (3653681i32)) {
                    return;
                    _gotoNext = 3653708i32;
                } else if (__value__ == (3653708i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._tokens = ((@:checkr _d ?? throw "null pointer dereference")._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    _gotoNext = 3653742i32;
                } else if (__value__ == (3653742i32)) {
                    loopBreak = true;
                    _gotoNext = 3653068i32;
                } else if (__value__ == (3653764i32)) {
                    if (((@:checkr _d ?? throw "null pointer dereference")._index < (@:checkr _d ?? throw "null pointer dereference")._maxInsertIndex : Bool)) {
                        _gotoNext = 3653794i32;
                    } else {
                        _gotoNext = 3654043i32;
                    };
                } else if (__value__ == (3653794i32)) {
                    _hash_3653821 = stdgo._internal.compress.flate.Flate__hash4._hash4(((@:checkr _d ?? throw "null pointer dereference")._window.__slice__((@:checkr _d ?? throw "null pointer dereference")._index, ((@:checkr _d ?? throw "null pointer dereference")._index + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_3653882 = stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._hashHead[((_hash_3653821 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    (@:checkr _d ?? throw "null pointer dereference")._chainHead = (_hh_3653882.value : stdgo.GoInt);
                    (@:checkr _d ?? throw "null pointer dereference")._hashPrev[((@:checkr _d ?? throw "null pointer dereference")._index & (32767 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _d ?? throw "null pointer dereference")._chainHead : stdgo.GoUInt32);
                    _hh_3653882.value = (((@:checkr _d ?? throw "null pointer dereference")._index + (@:checkr _d ?? throw "null pointer dereference")._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 3654043i32;
                } else if (__value__ == (3654043i32)) {
                    _prevLength_3654043 = (@:checkr _d ?? throw "null pointer dereference")._length;
                    _prevOffset_3654068 = (@:checkr _d ?? throw "null pointer dereference")._offset;
                    (@:checkr _d ?? throw "null pointer dereference")._length = (3 : stdgo.GoInt);
                    (@:checkr _d ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
                    _minIndex_3654140 = ((@:checkr _d ?? throw "null pointer dereference")._index - (32768 : stdgo.GoInt) : stdgo.GoInt);
                    if ((_minIndex_3654140 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3654191i32;
                    } else {
                        _gotoNext = 3654216i32;
                    };
                } else if (__value__ == (3654191i32)) {
                    _minIndex_3654140 = (0 : stdgo.GoInt);
                    _gotoNext = 3654216i32;
                } else if (__value__ == (3654216i32)) {
                    if (((((@:checkr _d ?? throw "null pointer dereference")._chainHead - (@:checkr _d ?? throw "null pointer dereference")._hashOffset : stdgo.GoInt) >= _minIndex_3654140 : Bool) && ((((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_lookahead_3653139 > (3 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_lookahead_3653139 > _prevLength_3654043 : Bool) : Bool) && (_prevLength_3654043 < (@:checkr _d ?? throw "null pointer dereference")._compressionLevel._lazy : Bool) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3654414i32;
                    } else {
                        _gotoNext = 3654593i32;
                    };
                } else if (__value__ == (3654414i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._findMatch((@:checkr _d ?? throw "null pointer dereference")._index, ((@:checkr _d ?? throw "null pointer dereference")._chainHead - (@:checkr _d ?? throw "null pointer dereference")._hashOffset : stdgo.GoInt), (3 : stdgo.GoInt), _lookahead_3653139);
                            _newLength_3654422 = @:tmpset0 __tmp__._0;
                            _newOffset_3654433 = @:tmpset0 __tmp__._1;
                            _ok_3654444 = @:tmpset0 __tmp__._2;
                        };
                        if (_ok_3654444) {
                            _gotoNext = 3654530i32;
                        } else {
                            _gotoNext = 3654593i32;
                        };
                    };
                } else if (__value__ == (3654530i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._length = _newLength_3654422;
                    (@:checkr _d ?? throw "null pointer dereference")._offset = _newOffset_3654433;
                    _gotoNext = 3654593i32;
                } else if (__value__ == (3654593i32)) {
                    if ((((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && ((@:checkr _d ?? throw "null pointer dereference")._length >= (4 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_prevLength_3654043 >= (4 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _d ?? throw "null pointer dereference")._length <= _prevLength_3654043 : Bool) : Bool) : Bool)) {
                        _gotoNext = 3654752i32;
                    } else {
                        _gotoNext = 3656503i32;
                    };
                } else if (__value__ == (3654752i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3654907i32;
                    } else {
                        _gotoNext = 3655031i32;
                    };
                } else if (__value__ == (3654907i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._tokens = ((@:checkr _d ?? throw "null pointer dereference")._tokens.__append__(stdgo._internal.compress.flate.Flate__matchtoken._matchToken((((@:checkr _d ?? throw "null pointer dereference")._length - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), (((@:checkr _d ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    _gotoNext = 3655379i32;
                } else if (__value__ == (3655031i32)) {
                    _gotoNext = 3655031i32;
                    (@:checkr _d ?? throw "null pointer dereference")._tokens = ((@:checkr _d ?? throw "null pointer dereference")._tokens.__append__(stdgo._internal.compress.flate.Flate__matchtoken._matchToken(((_prevLength_3654043 - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_prevOffset_3654068 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    var __blank__ = 0i32;
                    _gotoNext = 3655379i32;
                } else if (__value__ == (3655379i32)) {
                    if (((@:checkr _d ?? throw "null pointer dereference")._length <= (@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing : Bool)) {
                        _gotoNext = 3655412i32;
                    } else {
                        _gotoNext = 3656156i32;
                    };
                } else if (__value__ == (3655412i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3655473i32;
                    } else {
                        _gotoNext = 3655521i32;
                    };
                } else if (__value__ == (3655473i32)) {
                    _newIndex_3655422 = ((@:checkr _d ?? throw "null pointer dereference")._index + (@:checkr _d ?? throw "null pointer dereference")._length : stdgo.GoInt);
                    _gotoNext = 3655574i32;
                } else if (__value__ == (3655521i32)) {
                    _gotoNext = 3655521i32;
                    _newIndex_3655422 = (((@:checkr _d ?? throw "null pointer dereference")._index + _prevLength_3654043 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3655574i32;
                } else if (__value__ == (3655574i32)) {
                    _index_3655574 = (@:checkr _d ?? throw "null pointer dereference")._index;
                    _index_3655574++;
                    _gotoNext = 3655595i32;
                } else if (__value__ == (3655595i32)) {
                    if ((_index_3655574 < _newIndex_3655422 : Bool)) {
                        _gotoNext = 3655634i32;
                    } else {
                        _gotoNext = 3656019i32;
                    };
                } else if (__value__ == (3655626i32)) {
                    _index_3655574++;
                    _gotoNext = 3655595i32;
                } else if (__value__ == (3655634i32)) {
                    if ((_index_3655574 < (@:checkr _d ?? throw "null pointer dereference")._maxInsertIndex : Bool)) {
                        _gotoNext = 3655669i32;
                    } else {
                        _gotoNext = 3655626i32;
                    };
                } else if (__value__ == (3655669i32)) {
                    _hash_3655677 = stdgo._internal.compress.flate.Flate__hash4._hash4(((@:checkr _d ?? throw "null pointer dereference")._window.__slice__(_index_3655574, (_index_3655574 + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_3655840 = stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._hashHead[((_hash_3655677 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    (@:checkr _d ?? throw "null pointer dereference")._hashPrev[(_index_3655574 & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh_3655840.value;
                    _hh_3655840.value = ((_index_3655574 + (@:checkr _d ?? throw "null pointer dereference")._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 3655626i32;
                } else if (__value__ == (3656019i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._index = _index_3655574;
                    if ((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3656074i32;
                    } else {
                        _gotoNext = 3656290i32;
                    };
                } else if (__value__ == (3656074i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._byteAvailable = false;
                    (@:checkr _d ?? throw "null pointer dereference")._length = (3 : stdgo.GoInt);
                    _gotoNext = 3656290i32;
                } else if (__value__ == (3656156i32)) {
                    _gotoNext = 3656156i32;
                    (@:checkr _d ?? throw "null pointer dereference")._index = ((@:checkr _d ?? throw "null pointer dereference")._index + ((@:checkr _d ?? throw "null pointer dereference")._length) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3656290i32;
                } else if (__value__ == (3656290i32)) {
                    if (((@:checkr _d ?? throw "null pointer dereference")._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 3656330i32;
                    } else {
                        _gotoNext = 3653068i32;
                    };
                } else if (__value__ == (3656330i32)) {
                    {
                        (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._writeBlock((@:checkr _d ?? throw "null pointer dereference")._tokens, (@:checkr _d ?? throw "null pointer dereference")._index);
                        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                            _gotoNext = 3656441i32;
                        } else {
                            _gotoNext = 3656465i32;
                        };
                    };
                } else if (__value__ == (3656441i32)) {
                    return;
                    _gotoNext = 3656465i32;
                } else if (__value__ == (3656465i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._tokens = ((@:checkr _d ?? throw "null pointer dereference")._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    _gotoNext = 3653068i32;
                } else if (__value__ == (3656503i32)) {
                    _gotoNext = 3656503i32;
                    if ((((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing != (2147483647 : stdgo.GoInt)) || (@:checkr _d ?? throw "null pointer dereference")._byteAvailable : Bool)) {
                        _gotoNext = 3656561i32;
                    } else {
                        _gotoNext = 3656883i32;
                    };
                } else if (__value__ == (3656561i32)) {
                    _i_3656567 = ((@:checkr _d ?? throw "null pointer dereference")._index - (1 : stdgo.GoInt) : stdgo.GoInt);
                    if ((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3656622i32;
                    } else {
                        _gotoNext = 3656651i32;
                    };
                } else if (__value__ == (3656622i32)) {
                    _i_3656567 = (@:checkr _d ?? throw "null pointer dereference")._index;
                    _gotoNext = 3656651i32;
                } else if (__value__ == (3656651i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._tokens = ((@:checkr _d ?? throw "null pointer dereference")._tokens.__append__(stdgo._internal.compress.flate.Flate__literaltoken._literalToken(((@:checkr _d ?? throw "null pointer dereference")._window[(_i_3656567 : stdgo.GoInt)] : stdgo.GoUInt32))));
                    if (((@:checkr _d ?? throw "null pointer dereference")._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 3656758i32;
                    } else {
                        _gotoNext = 3656883i32;
                    };
                } else if (__value__ == (3656758i32)) {
                    {
                        (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._writeBlock((@:checkr _d ?? throw "null pointer dereference")._tokens, (_i_3656567 + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                            _gotoNext = 3656818i32;
                        } else {
                            _gotoNext = 3656845i32;
                        };
                    };
                } else if (__value__ == (3656818i32)) {
                    return;
                    _gotoNext = 3656845i32;
                } else if (__value__ == (3656845i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._tokens = ((@:checkr _d ?? throw "null pointer dereference")._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    _gotoNext = 3656883i32;
                } else if (__value__ == (3656883i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._index++;
                    if ((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3656930i32;
                    } else {
                        _gotoNext = 3653068i32;
                    };
                } else if (__value__ == (3656930i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._byteAvailable = true;
                    _gotoNext = 3653068i32;
                } else if (__value__ == (3656971i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _initDeflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        (@:checkr _d ?? throw "null pointer dereference")._window = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _d ?? throw "null pointer dereference")._hashOffset = (1 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._tokens = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>((0 : stdgo.GoInt).toBasic(), (16385 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        (@:checkr _d ?? throw "null pointer dereference")._length = (3 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._byteAvailable = false;
        (@:checkr _d ?? throw "null pointer dereference")._index = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._chainHead = (-1 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._bulkHasher = stdgo._internal.compress.flate.Flate__bulkhash4._bulkHash4;
    }
    @:keep
    @:tdfield
    static public function _encSpeed( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        if (((@:checkr _d ?? throw "null pointer dereference")._windowEnd < (65535 : stdgo.GoInt) : Bool)) {
            if (!(@:checkr _d ?? throw "null pointer dereference")._sync) {
                return;
            };
            if (((@:checkr _d ?? throw "null pointer dereference")._windowEnd < (128 : stdgo.GoInt) : Bool)) {
                if ((@:checkr _d ?? throw "null pointer dereference")._windowEnd == ((0 : stdgo.GoInt))) {
                    return;
                } else if (((@:checkr _d ?? throw "null pointer dereference")._windowEnd <= (16 : stdgo.GoInt) : Bool)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._writeStoredBlock(((@:checkr _d ?? throw "null pointer dereference")._window.__slice__(0, (@:checkr _d ?? throw "null pointer dereference")._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._writeBlockHuff(false, ((@:checkr _d ?? throw "null pointer dereference")._window.__slice__(0, (@:checkr _d ?? throw "null pointer dereference")._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _d ?? throw "null pointer dereference")._err = (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err;
                };
                (@:checkr _d ?? throw "null pointer dereference")._windowEnd = (0 : stdgo.GoInt);
                @:check2r (@:checkr _d ?? throw "null pointer dereference")._bestSpeed._reset();
                return;
            };
        };
        (@:checkr _d ?? throw "null pointer dereference")._tokens = @:check2r (@:checkr _d ?? throw "null pointer dereference")._bestSpeed._encode(((@:checkr _d ?? throw "null pointer dereference")._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>), ((@:checkr _d ?? throw "null pointer dereference")._window.__slice__(0, (@:checkr _d ?? throw "null pointer dereference")._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        if ((((@:checkr _d ?? throw "null pointer dereference")._tokens.length) > ((@:checkr _d ?? throw "null pointer dereference")._windowEnd - (((@:checkr _d ?? throw "null pointer dereference")._windowEnd >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
            @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._writeBlockHuff(false, ((@:checkr _d ?? throw "null pointer dereference")._window.__slice__(0, (@:checkr _d ?? throw "null pointer dereference")._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._writeBlockDynamic((@:checkr _d ?? throw "null pointer dereference")._tokens, false, ((@:checkr _d ?? throw "null pointer dereference")._window.__slice__(0, (@:checkr _d ?? throw "null pointer dereference")._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        };
        (@:checkr _d ?? throw "null pointer dereference")._err = (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err;
        (@:checkr _d ?? throw "null pointer dereference")._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeStoredBlock( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        {
            @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._writeStoredHeader((_buf.length), false);
            if ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err != null) {
                return (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err;
            };
        };
        @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._writeBytes(_buf);
        return (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function _findMatch( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _pos:stdgo.GoInt, _prevHead:stdgo.GoInt, _prevLength:stdgo.GoInt, _lookahead:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _length = (0 : stdgo.GoInt), _offset = (0 : stdgo.GoInt), _ok = false;
        var _minMatchLook = (258 : stdgo.GoInt);
        if ((_lookahead < _minMatchLook : Bool)) {
            _minMatchLook = _lookahead;
        };
        var _win = ((@:checkr _d ?? throw "null pointer dereference")._window.__slice__((0 : stdgo.GoInt), (_pos + _minMatchLook : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _nice = ((_win.length) - _pos : stdgo.GoInt);
        if (((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._nice < _nice : Bool)) {
            _nice = (@:checkr _d ?? throw "null pointer dereference")._compressionLevel._nice;
        };
        var _tries = ((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._chain : stdgo.GoInt);
        _length = _prevLength;
        if ((_length >= (@:checkr _d ?? throw "null pointer dereference")._compressionLevel._good : Bool)) {
            _tries = (_tries >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        var _wEnd = (_win[(_pos + _length : stdgo.GoInt)] : stdgo.GoUInt8);
        var _wPos = (_win.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>);
        var _minIndex = (_pos - (32768 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _i = (_prevHead : stdgo.GoInt);
            while ((_tries > (0 : stdgo.GoInt) : Bool)) {
                if (_wEnd == (_win[((_i + _length : stdgo.GoInt) : stdgo.GoInt)])) {
                    var _n = (stdgo._internal.compress.flate.Flate__matchlen._matchLen((_win.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _wPos, _minMatchLook) : stdgo.GoInt);
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
_i = (((@:checkr _d ?? throw "null pointer dereference")._hashPrev[(_i & (32767 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) - (@:checkr _d ?? throw "null pointer dereference")._hashOffset : stdgo.GoInt);
if (((_i < _minIndex : Bool) || (_i < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
                _tries--;
            };
        };
        return { _0 : _length, _1 : _offset, _2 : _ok };
    }
    @:keep
    @:tdfield
    static public function _fillWindow( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        if (((@:checkr _d ?? throw "null pointer dereference")._compressionLevel._level < (2 : stdgo.GoInt) : Bool)) {
            return;
        };
        if ((((@:checkr _d ?? throw "null pointer dereference")._index != (0 : stdgo.GoInt)) || ((@:checkr _d ?? throw "null pointer dereference")._windowEnd != (0 : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("internal error: fillWindow called with stale data" : stdgo.GoString));
        };
        if (((_b.length) > (32768 : stdgo.GoInt) : Bool)) {
            _b = (_b.__slice__(((_b.length) - (32768 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n = ((@:checkr _d ?? throw "null pointer dereference")._window.__copyTo__(_b) : stdgo.GoInt);
        var _loops = ((((_n + (256 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt)) / (256 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < _loops : Bool)) {
                var _index = (_j * (256 : stdgo.GoInt) : stdgo.GoInt);
var _end = (((_index + (256 : stdgo.GoInt) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
if ((_end > _n : Bool)) {
                    _end = _n;
                };
var _toCheck = ((@:checkr _d ?? throw "null pointer dereference")._window.__slice__(_index, _end) : stdgo.Slice<stdgo.GoUInt8>);
var _dstSize = (((_toCheck.length) - (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
if ((_dstSize <= (0 : stdgo.GoInt) : Bool)) {
                    {
                        _j++;
                        continue;
                    };
                };
var _dst = ((@:checkr _d ?? throw "null pointer dereference")._hashMatch.__slice__(0, _dstSize) : stdgo.Slice<stdgo.GoUInt32>);
(@:checkr _d ?? throw "null pointer dereference")._bulkHasher(_toCheck, _dst);
for (_i => _val in _dst) {
                    var _di = (_i + _index : stdgo.GoInt);
                    var _hh = stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._hashHead[((_val & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    (@:checkr _d ?? throw "null pointer dereference")._hashPrev[(_di & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh.value;
                    _hh.value = ((_di + (@:checkr _d ?? throw "null pointer dereference")._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                };
                _j++;
            };
        };
        (@:checkr _d ?? throw "null pointer dereference")._windowEnd = _n;
        (@:checkr _d ?? throw "null pointer dereference")._index = _n;
    }
    @:keep
    @:tdfield
    static public function _writeBlock( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _index:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        if ((_index > (0 : stdgo.GoInt) : Bool)) {
            var _window:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (((@:checkr _d ?? throw "null pointer dereference")._blockStart <= _index : Bool)) {
                _window = ((@:checkr _d ?? throw "null pointer dereference")._window.__slice__((@:checkr _d ?? throw "null pointer dereference")._blockStart, _index) : stdgo.Slice<stdgo.GoUInt8>);
            };
            (@:checkr _d ?? throw "null pointer dereference")._blockStart = _index;
            @:check2r (@:checkr _d ?? throw "null pointer dereference")._w._writeBlock(_tokens, false, _window);
            return (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._err;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _fillDeflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        if (((@:checkr _d ?? throw "null pointer dereference")._index >= (65274 : stdgo.GoInt) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._window.__copyTo__(((@:checkr _d ?? throw "null pointer dereference")._window.__slice__((32768 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _d ?? throw "null pointer dereference")._index = ((@:checkr _d ?? throw "null pointer dereference")._index - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            (@:checkr _d ?? throw "null pointer dereference")._windowEnd = ((@:checkr _d ?? throw "null pointer dereference")._windowEnd - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            if (((@:checkr _d ?? throw "null pointer dereference")._blockStart >= (32768 : stdgo.GoInt) : Bool)) {
                (@:checkr _d ?? throw "null pointer dereference")._blockStart = ((@:checkr _d ?? throw "null pointer dereference")._blockStart - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                (@:checkr _d ?? throw "null pointer dereference")._blockStart = (2147483647 : stdgo.GoInt);
            };
            (@:checkr _d ?? throw "null pointer dereference")._hashOffset = ((@:checkr _d ?? throw "null pointer dereference")._hashOffset + ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            if (((@:checkr _d ?? throw "null pointer dereference")._hashOffset > (16777216 : stdgo.GoInt) : Bool)) {
                var _delta = ((@:checkr _d ?? throw "null pointer dereference")._hashOffset - (1 : stdgo.GoInt) : stdgo.GoInt);
                (@:checkr _d ?? throw "null pointer dereference")._hashOffset = ((@:checkr _d ?? throw "null pointer dereference")._hashOffset - (_delta) : stdgo.GoInt);
                (@:checkr _d ?? throw "null pointer dereference")._chainHead = ((@:checkr _d ?? throw "null pointer dereference")._chainHead - (_delta) : stdgo.GoInt);
                for (_i => _v in ((@:checkr _d ?? throw "null pointer dereference")._hashPrev.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        (@:checkr _d ?? throw "null pointer dereference")._hashPrev[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        (@:checkr _d ?? throw "null pointer dereference")._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
                for (_i => _v in ((@:checkr _d ?? throw "null pointer dereference")._hashHead.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        (@:checkr _d ?? throw "null pointer dereference")._hashHead[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        (@:checkr _d ?? throw "null pointer dereference")._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
            };
        };
        var _n = (((@:checkr _d ?? throw "null pointer dereference")._window.__slice__((@:checkr _d ?? throw "null pointer dereference")._windowEnd) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b) : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._windowEnd = ((@:checkr _d ?? throw "null pointer dereference")._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
}
