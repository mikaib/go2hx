package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.os.Os.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:stdgo._internal.os.Os_T__struct_0.T__struct_0, __0:stdgo.GoInt32) __self__.mutex._unlockSlow(__0);
    @:embedded
    public static function _lockSlow( __self__:stdgo._internal.os.Os_T__struct_0.T__struct_0) __self__.mutex._lockSlow();
    @:embedded
    public static function unlock( __self__:stdgo._internal.os.Os_T__struct_0.T__struct_0) __self__.mutex.unlock();
    @:embedded
    public static function tryLock( __self__:stdgo._internal.os.Os_T__struct_0.T__struct_0):Bool return return __self__.mutex.tryLock();
    @:embedded
    public static function lock( __self__:stdgo._internal.os.Os_T__struct_0.T__struct_0) __self__.mutex.lock();
}
