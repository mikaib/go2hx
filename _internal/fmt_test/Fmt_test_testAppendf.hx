package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testAppendf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__slice__(0, stdgo.Go.copySlice(_b, ("hello " : stdgo.GoString))) : stdgo.Slice<stdgo.GoUInt8>);
        var _got = stdgo._internal.fmt.Fmt_appendf.appendf(_b, ("world, %d" : stdgo.GoString), stdgo.Go.toInterface((23 : stdgo.GoInt)));
        if ((_got : stdgo.GoString) != (("hello world, 23" : stdgo.GoString))) {
            _t.fatalf(("Appendf returns %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("hello world, 23" : stdgo.GoString)));
        };
        if (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_got[(0 : stdgo.GoInt)]))) {
            _t.fatalf(("Appendf allocated a new slice" : stdgo.GoString));
        };
    }
