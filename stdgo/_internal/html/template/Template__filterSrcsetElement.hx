package stdgo._internal.html.template;
function _filterSrcsetElement(_s:stdgo.GoString, _left:stdgo.GoInt, _right:stdgo.GoInt, _b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        var _start = (_left : stdgo.GoInt);
        while (((_start < _right : Bool) && stdgo._internal.html.template.Template__isHTMLSpace._isHTMLSpace(_s[(_start : stdgo.GoInt)]) : Bool)) {
            _start++;
        };
        var _end = (_right : stdgo.GoInt);
        {
            var _i = (_start : stdgo.GoInt);
            stdgo.Go.cfor((_i < _right : Bool), _i++, {
                if (stdgo._internal.html.template.Template__isHTMLSpace._isHTMLSpace(_s[(_i : stdgo.GoInt)])) {
                    _end = _i;
                    break;
                };
            });
        };
        {
            var _url = ((_s.__slice__(_start, _end) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (stdgo._internal.html.template.Template__isSafeURL._isSafeURL(_url?.__copy__())) {
                var _metadataOk = (true : Bool);
                {
                    var _i = (_end : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _right : Bool), _i++, {
                        if (!stdgo._internal.html.template.Template__isHTMLSpaceOrASCIIAlnum._isHTMLSpaceOrASCIIAlnum(_s[(_i : stdgo.GoInt)])) {
                            _metadataOk = false;
                            break;
                        };
                    });
                };
                if (_metadataOk) {
                    _b.writeString((_s.__slice__(_left, _start) : stdgo.GoString)?.__copy__());
                    stdgo._internal.html.template.Template__processURLOnto._processURLOnto(_url?.__copy__(), true, _b);
                    _b.writeString((_s.__slice__(_end, _right) : stdgo.GoString)?.__copy__());
                    return;
                };
            };
        };
        _b.writeString(("#" : stdgo.GoString));
        _b.writeString(("ZgotmplZ" : stdgo.GoString));
    }
