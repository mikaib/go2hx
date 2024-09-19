package stdgo._internal.net;
class TCPListener_asInterface {
    @:keep
    public dynamic function file():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } return __self__.value.file();
    @:keep
    public dynamic function setDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setDeadline(_t);
    @:keep
    public dynamic function addr():stdgo._internal.net.Net_Addr.Addr return __self__.value.addr();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function accept():{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__.value.accept();
    @:keep
    public dynamic function acceptTCP():{ var _0 : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>; var _1 : stdgo.Error; } return __self__.value.acceptTCP();
    @:keep
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } return __self__.value.syscallConn();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.Net_TCPListener.TCPListener>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
