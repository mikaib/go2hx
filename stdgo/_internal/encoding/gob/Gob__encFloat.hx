package stdgo._internal.encoding.gob;
function _encFloat(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _f = (_v.float_() : stdgo.GoFloat64);
        if (((_f != (0 : stdgo.GoFloat64)) || _state._sendZero : Bool)) {
            var _bits = (stdgo._internal.encoding.gob.Gob__floatBits._floatBits(_f) : stdgo.GoUInt64);
            _state._update(_i);
            _state._encodeUint(_bits);
        };
    }
