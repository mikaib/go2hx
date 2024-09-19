package stdgo._internal.text.scanner;
function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoInt32):Void {
        var _want = ({ offset : _offset, line : _line, column : _column } : stdgo._internal.text.scanner.Scanner_Position.Position);
        stdgo._internal.text.scanner.Scanner__checkPos._checkPos(_t, _s.pos()?.__copy__(), _want?.__copy__());
        {
            var _ch = (_s.scan() : stdgo.GoInt32);
            if (_ch != (_char)) {
                _t.errorf(("ch = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_ch)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_char)));
                if ((_ch : stdgo.GoString) != (_s.tokenText())) {
                    _t.errorf(("tok = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s.tokenText()), stdgo.Go.toInterface((_ch : stdgo.GoString)));
                };
            };
        };
        stdgo._internal.text.scanner.Scanner__checkPos._checkPos(_t, _s.position?.__copy__(), _want?.__copy__());
    }
