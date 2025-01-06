package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension) class TCPConn {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check3 this.new.close;
    public var file(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_file():() -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } return @:check3 this.new.file;
    public var localAddr(get, never) : () -> stdgo._internal.net.Net_Addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_localAddr():() -> stdgo._internal.net.Net_Addr.Addr return @:check3 this.new.localAddr;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 this.new.read;
    public var remoteAddr(get, never) : () -> stdgo._internal.net.Net_Addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_remoteAddr():() -> stdgo._internal.net.Net_Addr.Addr return @:check3 this.new.remoteAddr;
    public var setDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 this.new.setDeadline;
    public var setReadBuffer(get, never) : stdgo.GoInt -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadBuffer():stdgo.GoInt -> stdgo.Error return @:check3 this.new.setReadBuffer;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 this.new.setReadDeadline;
    public var setWriteBuffer(get, never) : stdgo.GoInt -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteBuffer():stdgo.GoInt -> stdgo.Error return @:check3 this.new.setWriteBuffer;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_Time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_Time.Time -> stdgo.Error return @:check3 this.new.setWriteDeadline;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check3 this.new.write;
    public var _ok(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__ok():() -> Bool return @:check3 this.new._ok;
    public function __copy__() {
        return new TCPConn();
    }
}
