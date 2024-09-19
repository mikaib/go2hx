package stdgo._internal.math.big;
function benchmarkProbablyPrime(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(("203956878356401977405765866929034577280193993314348263094772646453283062722701277632936616063144088173312372882677123879538709400158306567338328279154499698366071906766440037074217117805690872792848149112022286332144876183376326512083574821647933992961249917319836219304274280243803104015000563790123" : stdgo.GoString), (10 : stdgo.GoInt)), _p:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __14:Bool = __tmp__._1;
        for (__15 => _n in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (10 : stdgo.GoInt), (20 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("n=%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _p.probablyPrime(_n);
                    });
                };
            });
        };
        _b.run(("Lucas" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _p._abs._probablyPrimeLucas();
                });
            };
        });
        _b.run(("MillerRabinBase2" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _p._abs._probablyPrimeMillerRabin((1 : stdgo.GoInt), true);
                });
            };
        });
    }
