package stdgo._internal.encoding.json;
function _stateNeg(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (_c == ((48 : stdgo.GoUInt8))) {
            _s._step = stdgo._internal.encoding.json.Json__state0._state0;
            return (0 : stdgo.GoInt);
        };
        if ((((49 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _s._step = stdgo._internal.encoding.json.Json__state1._state1;
            return (0 : stdgo.GoInt);
        };
        return _s._error(_c, ("in numeric literal" : stdgo.GoString));
    }
