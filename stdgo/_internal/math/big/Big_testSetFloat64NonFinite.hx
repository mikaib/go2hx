package stdgo._internal.math.big;
function testSetFloat64NonFinite(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _f in (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[stdgo._internal.math.Math_naN.naN(), stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)) {
            var _r:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat);
            {
                var _r2 = _r.setFloat64(_f);
                if (_r2 != null && ((_r2 : Dynamic).__nil__ == null || !(_r2 : Dynamic).__nil__)) {
                    _t.errorf(("SetFloat64(%g) was %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo.Go.asInterface(_r2)));
                };
            };
        };
    }
