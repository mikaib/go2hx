package stdgo._internal.encoding.gob;
function _bootstrapType(_name:stdgo.GoString, _e:stdgo.AnyInterface):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId {
        var _rt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_e).elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var __tmp__ = (stdgo._internal.encoding.gob.Gob__types._types != null && stdgo._internal.encoding.gob.Gob__types._types.exists(_rt) ? { _0 : stdgo._internal.encoding.gob.Gob__types._types[_rt], _1 : true } : { _0 : (null : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType), _1 : false }), __8:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType = __tmp__._0, _present:Bool = __tmp__._1;
        if (_present) {
            throw stdgo.Go.toInterface((((("bootstrap type already present: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_rt.string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        var _typ = (stdgo.Go.setRef(({ name : _name?.__copy__() } : stdgo._internal.encoding.gob.Gob_CommonType.CommonType)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>);
        stdgo._internal.encoding.gob.Gob__types._types[_rt] = stdgo.Go.asInterface(_typ);
        stdgo._internal.encoding.gob.Gob__setTypeId._setTypeId(stdgo.Go.asInterface(_typ));
        return _typ._id();
    }
