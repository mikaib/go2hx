package stdgo._internal.net.http;
function detectContentType(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        if (((_data.length) > (512 : stdgo.GoInt) : Bool)) {
            _data = (_data.__slice__(0, (512 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _firstNonWS = (0 : stdgo.GoInt);
        stdgo.Go.cfor(((_firstNonWS < (_data.length) : Bool) && stdgo._internal.net.http.Http__isWS._isWS(_data[(_firstNonWS : stdgo.GoInt)]) : Bool), _firstNonWS++, {});
        for (__143 => _sig in stdgo._internal.net.http.Http__sniffSignatures._sniffSignatures) {
            {
                var _ct = (_sig._match(_data, _firstNonWS)?.__copy__() : stdgo.GoString);
                if (_ct != (stdgo.Go.str())) {
                    return _ct?.__copy__();
                };
            };
        };
        return ("application/octet-stream" : stdgo.GoString);
    }
