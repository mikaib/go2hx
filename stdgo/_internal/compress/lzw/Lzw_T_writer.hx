package stdgo._internal.compress.lzw;
typedef T_writer = stdgo.StructType & {
    > stdgo._internal.io.Io_ByteWriter.ByteWriter,
    /**
        
        
        
    **/
    public dynamic function flush():stdgo.Error;
};
