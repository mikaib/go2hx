package stdgo._internal.encoding.gob;
function _decUint8(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _v = (_state._decodeUint() : stdgo.GoUInt64);
        if (((255i64 : stdgo.GoUInt64) < _v : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_i._ovfl);
        };
        _value.setUint(_v);
    }
