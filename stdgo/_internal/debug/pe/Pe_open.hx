package stdgo._internal.debug.pe;
function open(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.debug.pe.Pe_newfile.newFile(stdgo.Go.asInterface(_f)), _ff:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _f.close();
            return { _0 : null, _1 : _err };
        };
        (@:checkr _ff ?? throw "null pointer dereference")._closer = stdgo.Go.asInterface(_f);
        return { _0 : _ff, _1 : (null : stdgo.Error) };
    }
