package stdgo._internal.encoding.gob;
function _encodeReflectValue(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _op:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp, _indir:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < _indir : Bool) && _v.isValid() : Bool), _i++, {
                _v = stdgo._internal.reflect.Reflect_indirect.indirect(_v?.__copy__())?.__copy__();
            });
        };
        if (!_v.isValid()) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("encodeReflectValue: nil element" : stdgo.GoString));
        };
        _op(null, _state, _v?.__copy__());
    }
