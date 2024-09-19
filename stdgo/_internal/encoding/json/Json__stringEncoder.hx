package stdgo._internal.encoding.json;
function _stringEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        if ((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numberType._numberType.string() : String)) {
            var _numStr = ((_v.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_numStr == (stdgo.Go.str())) {
                _numStr = ("0" : stdgo.GoString);
            };
            if (!stdgo._internal.encoding.json.Json__isValidNumber._isValidNumber(_numStr?.__copy__())) {
                _e._error(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid number literal %q" : stdgo.GoString), stdgo.Go.toInterface(_numStr)));
            };
            var _b = _e.availableBuffer();
            _b = stdgo._internal.encoding.json.Json__mayAppendQuote._mayAppendQuote(_b, _opts._quoted);
            _b = (_b.__append__(...(_numStr : Array<stdgo.GoUInt8>)));
            _b = stdgo._internal.encoding.json.Json__mayAppendQuote._mayAppendQuote(_b, _opts._quoted);
            _e.write(_b);
            return;
        };
        if (_opts._quoted) {
            var _b = stdgo._internal.encoding.json.Json__appendString._appendString((null : stdgo.Slice<stdgo.GoUInt8>), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML);
            _e.write(stdgo._internal.encoding.json.Json__appendString._appendString(_e.availableBuffer(), _b, false));
        } else {
            _e.write(stdgo._internal.encoding.json.Json__appendString._appendString(_e.availableBuffer(), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML));
        };
    }
