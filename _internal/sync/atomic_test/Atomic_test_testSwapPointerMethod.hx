package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testSwapPointerMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:_internal.sync.atomic_test.Atomic_test_T__struct_11.T__struct_11 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoUInt8>), _after : (0 : stdgo.GoUIntptr) } : _internal.sync.atomic_test.Atomic_test_T__struct_11.T__struct_11);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
        for (__34 => _p in _internal.sync.atomic_test.Atomic_test__testPointers._testPointers()) {
            var _p = (_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoUInt8>);
            var _k = _x._i.swap(_p);
            if (((_x._i.load() != _p) || (_k != _j) : Bool)) {
                _t.fatalf(("p=%p i=%p j=%p k=%p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
            };
            _j = _p;
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
