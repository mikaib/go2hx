package stdgo._internal.io.fs;
@:interface typedef StatFS = stdgo.StructType & {
    /**
        * Stat returns a FileInfo describing the file.
        * If there is an error, it should be of type *PathError.
        
        
    **/
    @:interfacetypeffun
    public dynamic function stat(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    public dynamic function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
};
