package stdgo._internal.encoding.gob;
function _encInt32Slice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<stdgo.GoInt32>)) : stdgo.Slice<stdgo.GoInt32>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : false };
        }, _slice = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        for (__8 => _x in _slice) {
            if (((_x != (0 : stdgo.GoInt32)) || _state._sendZero : Bool)) {
                _state._encodeInt((_x : stdgo.GoInt64));
            };
        };
        return true;
    }
