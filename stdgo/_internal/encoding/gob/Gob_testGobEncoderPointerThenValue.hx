package stdgo._internal.encoding.gob;
function testGobEncoderPointerThenValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v = ((("forty-two" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber);
        var _w = ((("six-by-nine" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber);
        var _bv = ((("1nanocentury" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber);
        var _bw = ((("πseconds" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber);
        var _tv = ((("gravitationalacceleration" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber);
        var _tw = ((("π²ft/s²" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        {
            var _err = (_enc.encode(stdgo.Go.toInterface((new stdgo._internal.encoding.gob.Gob_GobTest7.GobTest7((42 : stdgo.GoInt), stdgo.Go.pointer(_v), _w, stdgo.Go.pointer(_bv), _bw, stdgo.Go.pointer(_tv), _tw) : stdgo._internal.encoding.gob.Gob_GobTest7.GobTest7))) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_GobTest7.GobTest7)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest7.GobTest7>);
        {
            var _err = (_dec.decode(stdgo.Go.toInterface(_x)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0 = _x.v, __1 = (_v : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber);
var _want = __1, _got = __0;
            if (_got == null) {
                _t.errorf(("v = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                _t.errorf(("v = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (_x.w : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber), __1 = (_w : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("w = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = _x.bv, __1 = (_bv : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber);
var _want = __1, _got = __0;
            if (_got == null) {
                _t.errorf(("bv = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                _t.errorf(("bv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (_x.bw : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber), __1 = (_bw : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("bw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = _x.tv, __1 = (_tv : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber);
var _want = __1, _got = __0;
            if (_got == null) {
                _t.errorf(("tv = nil, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            } else if (_got.value != (_want)) {
                _t.errorf(("tv = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got.value)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (_x.tw : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber), __1 = (_tw : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("tw = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
