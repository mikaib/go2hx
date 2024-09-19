package stdgo._internal.encoding.gob;
function testDecoderOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((new stdgo.Slice<stdgo.GoUInt8>(24, 24, ...[
(18 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(248 : stdgo.GoUInt8),
(127 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))));
        var _r:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _err = (_dec.decode(_r) : stdgo.Error);
        if (_err == null) {
            _t.fatalf(("expected an error" : stdgo.GoString));
        };
    }
