package stdgo._internal.math.big;
function _testRatBin(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _i:stdgo.GoInt, _name:stdgo.GoString, _f:stdgo._internal.math.big.Big_T_ratBinFun.T_ratBinFun, _a:stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg):Void {
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_a._x?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __14:Bool = __tmp__._1;
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_a._y?.__copy__()), _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __15:Bool = __tmp__._1;
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_a._z?.__copy__()), _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, __16:Bool = __tmp__._1;
        var _out = _f((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>), _x, _y);
        if (_out.cmp(_z) != ((0 : stdgo.GoInt))) {
            _t.errorf(("%s #%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
    }
