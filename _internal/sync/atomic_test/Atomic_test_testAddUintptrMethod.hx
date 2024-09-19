package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testAddUintptrMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_9.T__struct_9 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr), _after : (0 : stdgo.GoUIntptr) } : _internal.sync.atomic_test.Atomic_test_T__struct_9.T__struct_9);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            var _delta = ((1 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUIntptr) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUIntptr), {
                var _k = (_x._i.add(_delta) : stdgo.GoUIntptr);
                _j = (_j + (_delta) : stdgo.GoUIntptr);
                if (((_x._i.load() != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
