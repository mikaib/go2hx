package stdgo._internal.path;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _t_6:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _t_2:stdgo.GoString = ("" : stdgo.GoString);
        var _star_0:Bool = false;
        var _err_9:stdgo.Error = (null : stdgo.Error);
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _ok_7:Bool = false;
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3:Bool = false;
        var _chunk_1:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 2674261i32;
                } else if (__value__ == (2674261i32)) {
                    0i32;
                    patternBreak = false;
                    _gotoNext = 2674271i32;
                } else if (__value__ == (2674271i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 2674292i32;
                    } else {
                        _gotoNext = 2675577i32;
                    };
                } else if (__value__ == (2674292i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_0 = @:tmpset0 __tmp__._0;
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_0 && (_chunk_1 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 2674398i32;
                    } else {
                        _gotoNext = 2674560i32;
                    };
                } else if (__value__ == (2674398i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_name?.__copy__(), (47 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2674560i32;
                } else if (__value__ == (2674560i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), _name?.__copy__());
                        _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_3 = @:tmpset0 __tmp__._1;
                        _err_4 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_3 && (((_t_2.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 2674798i32;
                    } else {
                        _gotoNext = 2674830i32;
                    };
                } else if (__value__ == (2674798i32)) {
                    _name = _t_2?.__copy__();
                    0i32;
                    _gotoNext = 2674271i32;
                } else if (__value__ == (2674830i32)) {
                    if (_err_4 != null) {
                        _gotoNext = 2674844i32;
                    } else {
                        _gotoNext = 2674873i32;
                    };
                } else if (__value__ == (2674844i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2674873i32;
                } else if (__value__ == (2674873i32)) {
                    if (_star_0) {
                        _gotoNext = 2674881i32;
                    } else {
                        _gotoNext = 2675402i32;
                    };
                } else if (__value__ == (2674881i32)) {
                    _i_5 = (0 : stdgo.GoInt);
                    _gotoNext = 2674948i32;
                } else if (__value__ == (2674948i32)) {
                    if (((_i_5 < (_name.length) : Bool) && (_name[(_i_5 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 2674997i32;
                    } else {
                        _gotoNext = 2675402i32;
                    };
                } else if (__value__ == (2674993i32)) {
                    _i_5++;
                    _gotoNext = 2674948i32;
                } else if (__value__ == (2674997i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (_name.__slice__((_i_5 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_6 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_7 = @:tmpset0 __tmp__._1;
                        _err_8 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_7) {
                        _gotoNext = 2675057i32;
                    } else {
                        _gotoNext = 2675234i32;
                    };
                } else if (__value__ == (2675057i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_6.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 2675164i32;
                    } else {
                        _gotoNext = 2675193i32;
                    };
                } else if (__value__ == (2675164i32)) {
                    _i_5++;
                    _gotoNext = 2674948i32;
                } else if (__value__ == (2675193i32)) {
                    _name = _t_6?.__copy__();
                    _gotoNext = 2674271i32;
                } else if (__value__ == (2675234i32)) {
                    if (_err_8 != null) {
                        _gotoNext = 2675248i32;
                    } else {
                        _gotoNext = 2674993i32;
                    };
                } else if (__value__ == (2675248i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_8 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2674993i32;
                } else if (__value__ == (2675402i32)) {
                    0i32;
                    _gotoNext = 2675402i32;
                    if (((_pattern.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2675423i32;
                    } else {
                        _gotoNext = 2675555i32;
                    };
                } else if (__value__ == (2675423i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.Path__scanchunk._scanChunk(_pattern?.__copy__());
                        _chunk_1 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    {
                        {
                            var __tmp__ = stdgo._internal.path.Path__matchchunk._matchChunk(_chunk_1?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
                            _err_9 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_9 != null) {
                            _gotoNext = 2675520i32;
                        } else {
                            _gotoNext = 2675402i32;
                        };
                    };
                } else if (__value__ == (2675520i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_9 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2675402i32;
                } else if (__value__ == (2675555i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 2674271i32;
                } else if (__value__ == (2675577i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
