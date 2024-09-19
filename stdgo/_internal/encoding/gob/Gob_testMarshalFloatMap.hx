package stdgo._internal.encoding.gob;
function testMarshalFloatMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _nan1 = (stdgo._internal.math.Math_naN.naN() : stdgo.GoFloat64);
        var _nan2 = (stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_nan1) ^ (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoFloat64);
        var _in = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(_nan1, ("a" : stdgo.GoString));
x.set(_nan1, ("b" : stdgo.GoString));
x.set(_nan2, ("c" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>);
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        {
            var _err = (_enc.encode(stdgo.Go.toInterface(_in)) : stdgo.Error);
            if (_err != null) {
                _t.errorf(("Encode : %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _out = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>);
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        {
            var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>>))) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Decode : %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {};
        var _readMap = function(_m:stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>):stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951> {
            var _entries = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951>);
            for (_k => _v in _m) {
                _entries = (_entries.__append__((new stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951(stdgo._internal.math.Math_float64bits.float64bits(_k), _v?.__copy__()) : stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951)));
            };
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_entries), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                var __0 = (_entries[(_i : stdgo.GoInt)] : stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951), __1 = (_entries[(_j : stdgo.GoInt)] : stdgo._internal.encoding.gob.Gob_T_testMarshalFloatMap___localname___mapEntry_27951.T_testMarshalFloatMap___localname___mapEntry_27951);
var _ej = __1, _ei = __0;
                if (_ei._keyBits != (_ej._keyBits)) {
                    return (_ei._keyBits < _ej._keyBits : Bool);
                };
                return (_ei._value < _ej._value : Bool);
            });
            return _entries;
        };
        var _got = _readMap(_out);
        var _want = _readMap(_in);
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
            _t.fatalf(("\nEncode: %v\nDecode: %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
