package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkMutexNoSpin(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _acc1 = __1, _acc0 = __0;
        _b.setParallelism((4 : stdgo.GoInt));
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            var _data:stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt64)]);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_pb.next(), _i++, {
                    if ((_i % (4 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _m.lock();
                        _acc0 = (_acc0 - ((100i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _acc1 = (_acc1 + ((100i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _m.unlock();
                    } else {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (_data.length) : Bool), _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                                _data[(_i : stdgo.GoInt)]++;
                            });
                        };
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                _c.__send__(true);
                            };
                            a();
                        });
                        _c.__get__();
                    };
                });
            };
        });
    }
