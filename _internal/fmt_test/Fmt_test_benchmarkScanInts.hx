package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function benchmarkScanInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _ints = _internal.fmt_test.Fmt_test__makeInts._makeInts((800 : stdgo.GoInt));
        var _r:_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt = ({} : _internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_ints);
                _b.startTimer();
                _internal.fmt_test.Fmt_test__scanInts._scanInts((stdgo.Go.setRef(_r) : stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>), _buf);
                _b.stopTimer();
            });
        };
    }
