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
function _testOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _size:stdgo.GoInt):Void {
        var _src = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _test = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _ref = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __blank__ = stdgo._internal.math.rand.Rand_read.read(_src);
        {
            var _n = (_size - (50 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_n > (1 : stdgo.GoInt) : Bool), _n = (_n >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _x = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_x <= (_size - _n : stdgo.GoInt) : Bool), _x = ((_x * (7 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt), {
                        {
                            var _y = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_y <= (_size - _n : stdgo.GoInt) : Bool), _y = ((_y * (9 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt), {
                                _internal.runtime_test.Runtime_test__copyref._copyref(_test, _src);
                                _internal.runtime_test.Runtime_test__copyref._copyref(_ref, _src);
                                stdgo.Go.copySlice((_test.__slice__(_y, (_y + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_test.__slice__(_x, (_x + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                                if ((_y <= _x : Bool)) {
                                    _internal.runtime_test.Runtime_test__copyref._copyref((_ref.__slice__(_y, (_y + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_ref.__slice__(_x, (_x + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                                } else {
                                    _internal.runtime_test.Runtime_test__copybw._copybw((_ref.__slice__(_y, (_y + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_ref.__slice__(_x, (_x + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                                };
                                var _p = (_internal.runtime_test.Runtime_test__cmpb._cmpb(_test, _ref) : stdgo.GoInt);
                                if ((_p >= (0 : stdgo.GoInt) : Bool)) {
                                    _t.fatalf(("Copy failed, copying from src[%d:%d] to dst[%d:%d].\nOffset %d is different, %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface((_x + _n : stdgo.GoInt)), stdgo.Go.toInterface(_y), stdgo.Go.toInterface((_y + _n : stdgo.GoInt)), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_test[(_p : stdgo.GoInt)]), stdgo.Go.toInterface(_ref[(_p : stdgo.GoInt)]));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
