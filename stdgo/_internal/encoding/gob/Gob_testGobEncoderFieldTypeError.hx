package stdgo._internal.encoding.gob;
function testGobEncoderFieldTypeError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1((17 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct(("ABC" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>)) : stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_GobTest2.GobTest2() : stdgo._internal.encoding.gob.Gob_GobTest2.GobTest2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest2.GobTest2>);
        _err = _dec.decode(stdgo.Go.toInterface(_x));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected decode error for mismatched fields (encoder to non-decoder)" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
            _t.fatal(stdgo.Go.toInterface(("expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _err = _enc.encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_GobTest2.GobTest2((17 : stdgo.GoInt), ("ABC" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_GobTest2.GobTest2)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1() : stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1>);
        _err = _dec.decode(stdgo.Go.toInterface(_y));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected decode error for mismatched fields (non-encoder to decoder)" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("type" : stdgo.GoString))) {
            _t.fatal(stdgo.Go.toInterface(("expected type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
