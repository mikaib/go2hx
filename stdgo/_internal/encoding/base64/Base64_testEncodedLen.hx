package stdgo._internal.encoding.base64;
function testEncodedLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in (new stdgo.Slice<stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1>(11, 11, ...[
({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (1 : stdgo.GoInt), _want : (2 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (2 : stdgo.GoInt), _want : (3 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (3 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_rawStdEncoding.rawStdEncoding, _n : (7 : stdgo.GoInt), _want : (10 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, _n : (1 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, _n : (2 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, _n : (3 : stdgo.GoInt), _want : (4 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, _n : (4 : stdgo.GoInt), _want : (8 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1),
({ _enc : stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, _n : (7 : stdgo.GoInt), _want : (12 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _enc : (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>), _n : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1)])) : stdgo.Slice<stdgo._internal.encoding.base64.Base64_T__struct_1.T__struct_1>)) {
            {
                var _got = (_tt._enc.encodedLen(_tt._n) : stdgo.GoInt);
                if (_got != (_tt._want)) {
                    _t.errorf(("EncodedLen(%d): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
