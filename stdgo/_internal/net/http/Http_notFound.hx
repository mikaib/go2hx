package stdgo._internal.net.http;
function notFound(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        stdgo._internal.net.http.Http_error.error(_w, ("404 page not found" : stdgo.GoString), (404 : stdgo.GoInt));
    }
