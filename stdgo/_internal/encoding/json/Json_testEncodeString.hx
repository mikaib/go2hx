package stdgo._internal.encoding.json;
function testEncodeString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _tt in stdgo._internal.encoding.json.Json__encodeStringTests._encodeStringTests) {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_tt._in)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Marshal(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err));
                continue;
            };
            var _out = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_out != (_tt._out)) {
                _t.errorf(("Marshal(%q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
