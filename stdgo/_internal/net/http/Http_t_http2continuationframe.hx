package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2continuationframe_static_extension.T_http2ContinuationFrame_static_extension) class T_http2ContinuationFrame {
    @:embedded
    public var _http2FrameHeader : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader = ({} : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader);
    public function new(?_http2FrameHeader:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader) {
        if (_http2FrameHeader != null) this._http2FrameHeader = _http2FrameHeader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var header(get, never) : () -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader;
    @:embedded
    @:embeddededffieldsffun
    public function get_header():() -> stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:check31 (this._http2FrameHeader ?? throw "null pointer dereference").header;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this._http2FrameHeader ?? throw "null pointer dereference").string;
    public var _checkValid(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkValid():() -> Void return @:check32 this._http2FrameHeader._checkValid;
    public var _invalidate(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__invalidate():() -> Void return @:check32 this._http2FrameHeader._invalidate;
    public var _writeDebug(get, never) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeDebug():stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> -> Void return @:check31 (this._http2FrameHeader ?? throw "null pointer dereference")._writeDebug;
    public function __copy__() {
        return new T_http2ContinuationFrame(_http2FrameHeader);
    }
}
