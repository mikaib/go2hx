package stdgo._internal.fmt;
function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(new stdgo.Pointer<stdgo._internal.fmt.Fmt_T_stringReader.T_stringReader>(() -> (stdgo.Go.pointer(_str).value : stdgo._internal.fmt.Fmt_T_stringReader.T_stringReader), v -> (stdgo.Go.pointer(_str).value = (v : stdgo.GoString) : stdgo._internal.fmt.Fmt_T_stringReader.T_stringReader))), ...(_a : Array<stdgo.AnyInterface>));
    }
