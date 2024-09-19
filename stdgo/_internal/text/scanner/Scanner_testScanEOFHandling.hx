package stdgo._internal.text.scanner;
function testScanEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r:stdgo._internal.text.scanner.Scanner_T_countReader.T_countReader = ((0 : stdgo.GoInt) : stdgo._internal.text.scanner.Scanner_T_countReader.T_countReader);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_Scanner.Scanner>).init(stdgo.Go.asInterface(stdgo.Go.pointer(_r)));
        var _tok = (_s.scan() : stdgo.GoInt32);
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.error(stdgo.Go.toInterface(("1) EOF not reported" : stdgo.GoString)));
        };
        _tok = _s.peek();
        if (_tok != ((-1 : stdgo.GoInt32))) {
            _t.error(stdgo.Go.toInterface(("2) EOF not reported" : stdgo.GoString)));
        };
        if (_r != ((1 : stdgo._internal.text.scanner.Scanner_T_countReader.T_countReader))) {
            _t.errorf(("scanner called Read %d times, not once" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
    }
