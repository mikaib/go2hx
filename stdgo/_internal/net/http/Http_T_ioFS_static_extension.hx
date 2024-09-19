package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_ioFS_asInterface) class T_ioFS_static_extension {
    @:keep
    static public function open( _f:stdgo._internal.net.http.Http_T_ioFS.T_ioFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_File.File; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_T_ioFS.T_ioFS = _f?.__copy__();
        if (_name == (("/" : stdgo.GoString))) {
            _name = ("." : stdgo.GoString);
        } else {
            _name = stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_name?.__copy__(), ("/" : stdgo.GoString))?.__copy__();
        };
        var __tmp__ = _f._fsys.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.http.Http_File.File), _1 : stdgo._internal.net.http.Http__mapOpenError._mapOpenError(_err, _name?.__copy__(), (47 : stdgo.GoInt32), function(_path:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
                return stdgo._internal.io.fs.Fs_stat.stat(_f._fsys, _path?.__copy__());
            }) };
        };
        return { _0 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_ioFile.T_ioFile(_file) : stdgo._internal.net.http.Http_T_ioFile.T_ioFile)), _1 : (null : stdgo.Error) };
    }
}
