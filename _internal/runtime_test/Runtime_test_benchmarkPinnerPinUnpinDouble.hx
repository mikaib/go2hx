package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function benchmarkPinnerPinUnpinDouble(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_obj.T_obj)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>);
        {
            var _n = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n < _b.n : Bool), _n++, {
                var _pinner:stdgo._internal.runtime.Runtime_Pinner.Pinner = ({} : stdgo._internal.runtime.Runtime_Pinner.Pinner);
                _pinner.pin(stdgo.Go.toInterface(_p));
                _pinner.pin(stdgo.Go.toInterface(_p));
                _pinner.unpin();
            });
        };
    }
