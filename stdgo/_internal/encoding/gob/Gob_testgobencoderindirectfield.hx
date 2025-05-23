package stdgo._internal.encoding.gob;
function testGobEncoderIndirectField(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _s = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct(("HIJKL" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>);
        var _sp = stdgo.Go.pointer(_s);
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtestindirectencdec.GobTestIndirectEncDec((17 : stdgo.GoInt), stdgo.Go.pointer(_sp)) : stdgo._internal.encoding.gob.Gob_gobtestindirectencdec.GobTestIndirectEncDec)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtestindirectencdec.GobTestIndirectEncDec)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtestindirectencdec.GobTestIndirectEncDec>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (((@:checkr _x ?? throw "null pointer dereference").g.value.value : stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct)._s != (("HIJKL" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected `HIJKL` got %s" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _x ?? throw "null pointer dereference").g.value.value : stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct)._s));
        };
    }
