package stdgo._internal.net.http.cgi;
function requestFromMap(_params:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        _r.method = (_params[("REQUEST_METHOD" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__();
        if (_r.method == (stdgo.Go.str())) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("cgi: no REQUEST_METHOD in environment" : stdgo.GoString)) };
        };
        _r.proto = (_params[("SERVER_PROTOCOL" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__();
        var _ok:Bool = false;
        {
            var __tmp__ = stdgo._internal.net.http.Http_parseHTTPVersion.parseHTTPVersion(_r.proto?.__copy__());
            _r.protoMajor = __tmp__._0;
            _r.protoMinor = __tmp__._1;
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("cgi: invalid SERVER_PROTOCOL version" : stdgo.GoString)) };
        };
        _r.close = true;
        _r.trailer = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
        _r.header = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>);
        _r.host = (_params[("HTTP_HOST" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__();
        {
            var _lenstr = ((_params[("CONTENT_LENGTH" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_lenstr != (stdgo.Go.str())) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_lenstr?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _clen:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("cgi: bad CONTENT_LENGTH in environment: " : stdgo.GoString) + _lenstr?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
                _r.contentLength = _clen;
            };
        };
        {
            var _ct = ((_params[("CONTENT_TYPE" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_ct != (stdgo.Go.str())) {
                _r.header.set(("Content-Type" : stdgo.GoString), _ct?.__copy__());
            };
        };
        for (_k => _v in _params) {
            if (_k == (("HTTP_HOST" : stdgo.GoString))) {
                continue;
            };
            {
                var __tmp__ = stdgo._internal.strings.Strings_cutPrefix.cutPrefix(_k?.__copy__(), ("HTTP_" : stdgo.GoString)), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if (_found) {
                    _r.header.add(stdgo._internal.strings.Strings_replaceAll.replaceAll(_after?.__copy__(), ("_" : stdgo.GoString), ("-" : stdgo.GoString))?.__copy__(), _v?.__copy__());
                };
            };
        };
        var _uriStr = ((_params[("REQUEST_URI" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_uriStr == (stdgo.Go.str())) {
            _uriStr = ((_params[("SCRIPT_NAME" : stdgo.GoString)] ?? ("" : stdgo.GoString)) + (_params[("PATH_INFO" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__();
            var _s = ((_params[("QUERY_STRING" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_s != (stdgo.Go.str())) {
                _uriStr = (_uriStr + ((("?" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        {
            var _s = ((_params[("HTTPS" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (((_s == (("on" : stdgo.GoString)) || _s == (("ON" : stdgo.GoString)) : Bool) || (_s == ("1" : stdgo.GoString)) : Bool)) {
                _r.tls = (stdgo.Go.setRef(({ handshakeComplete : true } : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
            };
        };
        if (_r.host != (stdgo.Go.str())) {
            var _rawurl = ((_r.host + _uriStr?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_r.tls == null || (_r.tls : Dynamic).__nil__) {
                _rawurl = (("http://" : stdgo.GoString) + _rawurl?.__copy__() : stdgo.GoString)?.__copy__();
            } else {
                _rawurl = (("https://" : stdgo.GoString) + _rawurl?.__copy__() : stdgo.GoString)?.__copy__();
            };
            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_rawurl?.__copy__()), _url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("cgi: failed to parse host and REQUEST_URI into a URL: " : stdgo.GoString) + _rawurl?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            _r.url = _url;
        };
        if (_r.url == null || (_r.url : Dynamic).__nil__) {
            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_uriStr?.__copy__()), _url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("cgi: failed to parse REQUEST_URI into a URL: " : stdgo.GoString) + _uriStr?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
            _r.url = _url;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_params[("REMOTE_PORT" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__()), _remotePort:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        _r.remoteAddr = stdgo._internal.net.Net_joinHostPort.joinHostPort((_params[("REMOTE_ADDR" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__(), stdgo._internal.strconv.Strconv_itoa.itoa(_remotePort)?.__copy__())?.__copy__();
        return { _0 : _r, _1 : (null : stdgo.Error) };
    }
