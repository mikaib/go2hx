package stdgo._internal.image.gif;
typedef T_writer = stdgo.StructType & {
    > stdgo._internal.io.Io_Writer.Writer,
    > stdgo._internal.io.Io_ByteWriter.ByteWriter,
    /**
        
        
        
    **/
    public dynamic function flush():stdgo.Error;
};
