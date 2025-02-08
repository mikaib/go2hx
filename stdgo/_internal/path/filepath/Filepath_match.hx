package stdgo._internal.path.filepath;
function match(_pattern:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var patternBreak = false;
        var _err_4006846:stdgo.Error = (null : stdgo.Error);
        var _i_4006782:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_4006393:Bool = false;
        var _chunk_4006142:stdgo.GoString = ("" : stdgo.GoString);
        var _star_4006126:Bool = false;
        var _t_4006390:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_4006842:Bool = false;
        var _t_4006839:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4006397:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4006087i32;
                } else if (__value__ == (4006087i32)) {
                    var __blank__ = 0i32;
                    patternBreak = false;
                    _gotoNext = 4006097i32;
                } else if (__value__ == (4006097i32)) {
                    if (!patternBreak && (((_pattern.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4006118i32;
                    } else {
                        _gotoNext = 4007148i32;
                    };
                } else if (__value__ == (4006118i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__scanchunk._scanChunk(_pattern?.__copy__());
                        _star_4006126 = @:tmpset0 __tmp__._0;
                        _chunk_4006142 = @:tmpset0 __tmp__._1?.__copy__();
                        _pattern = @:tmpset0 __tmp__._2?.__copy__();
                    };
                    if ((_star_4006126 && (_chunk_4006142 == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4006224i32;
                    } else {
                        _gotoNext = 4006390i32;
                    };
                } else if (__value__ == (4006224i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)), _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4006390i32;
                } else if (__value__ == (4006390i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4006142?.__copy__(), _name?.__copy__());
                        _t_4006390 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4006393 = @:tmpset0 __tmp__._1;
                        _err_4006397 = @:tmpset0 __tmp__._2;
                    };
                    if ((_ok_4006393 && (((_t_4006390.length == (0 : stdgo.GoInt)) || ((_pattern.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4006628i32;
                    } else {
                        _gotoNext = 4006660i32;
                    };
                } else if (__value__ == (4006628i32)) {
                    _name = _t_4006390?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 4006097i32;
                } else if (__value__ == (4006660i32)) {
                    if (_err_4006397 != null) {
                        _gotoNext = 4006674i32;
                    } else {
                        _gotoNext = 4006703i32;
                    };
                } else if (__value__ == (4006674i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4006397 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4006703i32;
                } else if (__value__ == (4006703i32)) {
                    if (_star_4006126) {
                        _gotoNext = 4006711i32;
                    } else {
                        _gotoNext = 4007126i32;
                    };
                } else if (__value__ == (4006711i32)) {
                    _i_4006782 = (0 : stdgo.GoInt);
                    _gotoNext = 4006778i32;
                } else if (__value__ == (4006778i32)) {
                    if (((_i_4006782 < (_name.length) : Bool) && (_name[(_i_4006782 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4006833i32;
                    } else {
                        _gotoNext = 4007126i32;
                    };
                } else if (__value__ == (4006829i32)) {
                    _i_4006782++;
                    _gotoNext = 4006778i32;
                } else if (__value__ == (4006833i32)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath__matchchunk._matchChunk(_chunk_4006142?.__copy__(), (_name.__slice__((_i_4006782 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _t_4006839 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4006842 = @:tmpset0 __tmp__._1;
                        _err_4006846 = @:tmpset0 __tmp__._2;
                    };
                    if (_ok_4006842) {
                        _gotoNext = 4006893i32;
                    } else {
                        _gotoNext = 4007070i32;
                    };
                } else if (__value__ == (4006893i32)) {
                    if (((_pattern.length == (0 : stdgo.GoInt)) && ((_t_4006839.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 4007000i32;
                    } else {
                        _gotoNext = 4007029i32;
                    };
                } else if (__value__ == (4007000i32)) {
                    _i_4006782++;
                    _gotoNext = 4006778i32;
                } else if (__value__ == (4007029i32)) {
                    _name = _t_4006839?.__copy__();
                    _gotoNext = 4006097i32;
                } else if (__value__ == (4007070i32)) {
                    if (_err_4006846 != null) {
                        _gotoNext = 4007084i32;
                    } else {
                        _gotoNext = 4006829i32;
                    };
                } else if (__value__ == (4007084i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err_4006846 };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4006829i32;
                } else if (__value__ == (4007126i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _matched = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4006097i32;
                } else if (__value__ == (4007148i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_name.length) == ((0 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
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
