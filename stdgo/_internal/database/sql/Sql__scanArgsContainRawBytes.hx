package stdgo._internal.database.sql;
function _scanArgsContainRawBytes(_args:stdgo.Slice<stdgo.AnyInterface>):Bool {
        for (__22 => _a in _args) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_a : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>)) : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>), _1 : false };
                }, __23 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return true;
                };
            };
        };
        return false;
    }
