package stdgo._internal.math.big;
function _checkLehmerExtGcd(_aBytes:stdgo.Slice<stdgo.GoUInt8>, _bBytes:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_aBytes);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_bBytes);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        if (((_a.sign() <= (0 : stdgo.GoInt) : Bool) || (_b.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return true;
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)._lehmerGCD(_x, _y, _a, _b);
        var __tmp__ = stdgo._internal.math.big.Big__euclidExtGCD._euclidExtGCD(_a, _b), _d0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _x0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._1, _y0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._2;
        return ((_d.cmp(_d0) == ((0 : stdgo.GoInt)) && _x.cmp(_x0) == ((0 : stdgo.GoInt)) : Bool) && (_y.cmp(_y0) == (0 : stdgo.GoInt)) : Bool);
    }
