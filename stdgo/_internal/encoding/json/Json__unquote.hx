package stdgo._internal.encoding.json;
function _unquote(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _t = ("" : stdgo.GoString), _ok = false;
        {
            var __tmp__ = stdgo._internal.encoding.json.Json__unquoteBytes._unquoteBytes(_s);
            _s = __tmp__._0;
            _ok = __tmp__._1;
        };
        _t = (_s : stdgo.GoString)?.__copy__();
        return { _0 : _t, _1 : _ok };
    }
