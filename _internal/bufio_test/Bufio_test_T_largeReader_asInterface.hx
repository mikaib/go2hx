package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
class T_largeReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.bufio_test.Bufio_test_T_largeReader.T_largeReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
