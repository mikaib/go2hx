package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2pseudoHeaderError_asInterface) class T_http2pseudoHeaderError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.net.http.Http_T_http2pseudoHeaderError.T_http2pseudoHeaderError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_T_http2pseudoHeaderError.T_http2pseudoHeaderError = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid pseudo-header %q" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoString)))?.__copy__();
    }
}
