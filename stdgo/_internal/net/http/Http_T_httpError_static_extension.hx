package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_httpError_asInterface) class T_httpError_static_extension {
    @:keep
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError> = _e;
        return true;
    }
    @:keep
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError> = _e;
        return _e._timeout;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError> = _e;
        return _e._err?.__copy__();
    }
}
