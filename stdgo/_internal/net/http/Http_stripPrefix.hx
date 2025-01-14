package stdgo._internal.net.http;
function stripPrefix(_prefix:stdgo.GoString, _h:stdgo._internal.net.http.Http_Handler.Handler):stdgo._internal.net.http.Http_Handler.Handler {
        if (_prefix == (stdgo.Go.str())) {
            return _h;
        };
        return stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
            var _p = (stdgo._internal.strings.Strings_trimPrefix.trimPrefix((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__(), _prefix?.__copy__())?.__copy__() : stdgo.GoString);
            var _rp = (stdgo._internal.strings.Strings_trimPrefix.trimPrefix((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawPath?.__copy__(), _prefix?.__copy__())?.__copy__() : stdgo.GoString);
            if ((((_p.length) < ((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path.length) : Bool) && ((((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawPath == stdgo.Go.str()) || ((_rp.length) < ((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawPath.length) : Bool) : Bool)) : Bool)) {
                var _r2 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
                {
                    var __tmp__ = (_r : stdgo._internal.net.http.Http_Request.Request)?.__copy__();
                    var x = (_r2 : stdgo._internal.net.http.Http_Request.Request);
                    x.method = __tmp__?.method;
                    x.uRL = __tmp__?.uRL;
                    x.proto = __tmp__?.proto;
                    x.protoMajor = __tmp__?.protoMajor;
                    x.protoMinor = __tmp__?.protoMinor;
                    x.header = __tmp__?.header;
                    x.body = __tmp__?.body;
                    x.getBody = __tmp__?.getBody;
                    x.contentLength = __tmp__?.contentLength;
                    x.transferEncoding = __tmp__?.transferEncoding;
                    x.close = __tmp__?.close;
                    x.host = __tmp__?.host;
                    x.form = __tmp__?.form;
                    x.postForm = __tmp__?.postForm;
                    x.multipartForm = __tmp__?.multipartForm;
                    x.trailer = __tmp__?.trailer;
                    x.remoteAddr = __tmp__?.remoteAddr;
                    x.requestURI = __tmp__?.requestURI;
                    x.tLS = __tmp__?.tLS;
                    x.cancel = __tmp__?.cancel;
                    x.response = __tmp__?.response;
                    x._ctx = __tmp__?._ctx;
                };
                (@:checkr _r2 ?? throw "null pointer dereference").uRL = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
                {
                    var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference").uRL : stdgo._internal.net.url.Url_URL.URL)?.__copy__();
                    var x = ((@:checkr _r2 ?? throw "null pointer dereference").uRL : stdgo._internal.net.url.Url_URL.URL);
                    x.scheme = __tmp__?.scheme;
                    x.opaque = __tmp__?.opaque;
                    x.user = __tmp__?.user;
                    x.host = __tmp__?.host;
                    x.path = __tmp__?.path;
                    x.rawPath = __tmp__?.rawPath;
                    x.omitHost = __tmp__?.omitHost;
                    x.forceQuery = __tmp__?.forceQuery;
                    x.rawQuery = __tmp__?.rawQuery;
                    x.fragment = __tmp__?.fragment;
                    x.rawFragment = __tmp__?.rawFragment;
                };
                (@:checkr (@:checkr _r2 ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path = _p?.__copy__();
                (@:checkr (@:checkr _r2 ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawPath = _rp?.__copy__();
                _h.serveHTTP(_w, _r2);
            } else {
                stdgo._internal.net.http.Http_notFound.notFound(_w, _r);
            };
        } : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc));
    }
