package stdgo._internal.path;
function split(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _dir = ("" : stdgo.GoString), _file = ("" : stdgo.GoString);
        var _i = (stdgo._internal.path.Path__lastSlash._lastSlash(_path?.__copy__()) : stdgo.GoInt);
        return { _0 : (_path.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
    }
