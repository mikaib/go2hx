package stdgo._internal.encoding.json;
function _stateEndTop(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (!stdgo._internal.encoding.json.Json__isSpace._isSpace(_c)) {
            _s._error(_c, ("after top-level value" : stdgo.GoString));
        };
        return (10 : stdgo.GoInt);
    }
