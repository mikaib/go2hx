package stdgo._internal.io.fs;
typedef File = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function close():stdgo.Error;
};
