package stdgo._internal.compress.gzip;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>; var _1 : stdgo.Error; } {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.gzip.Gzip_Reader.Reader)) : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
        {
            var _err = (_z.reset(_r) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _z, _1 : (null : stdgo.Error) };
    }
