package stdgo._internal.encoding.base32;
function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _data = (@:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.encodeToString((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
        @:check2r _b.setBytes((_data.length : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodeString(_data.__copy__());
                _i++;
            };
        };
    }
