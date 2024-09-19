package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function benchmarkStableInt1K(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _unsorted = (new stdgo.Slice<stdgo.GoInt>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _ in _unsorted) {
            _unsorted[(_i : stdgo.GoInt)] = (_i ^ (716 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _data = (new stdgo.Slice<stdgo.GoInt>((_unsorted.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo.Go.copySlice(_data, _unsorted);
                _b.startTimer();
                stdgo._internal.sort.Sort_stable.stable(stdgo.Go.asInterface((_data : stdgo._internal.sort.Sort_IntSlice.IntSlice)));
                _b.stopTimer();
            });
        };
    }
