package stdgo._internal.net.http;
function post(_url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        return stdgo._internal.net.http.Http_defaultClient.defaultClient.post(_url?.__copy__(), _contentType?.__copy__(), _body);
    }
