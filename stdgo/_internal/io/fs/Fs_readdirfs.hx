package stdgo._internal.io.fs;
@:interface typedef ReadDirFS = stdgo.StructType & {
    /**
        * ReadDir reads the named directory
        * and returns a list of directory entries sorted by filename.
        
        
    **/
    @:interfacetypeffun
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; };
    public dynamic function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
};
