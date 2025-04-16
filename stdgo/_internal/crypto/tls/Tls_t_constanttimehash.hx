package stdgo._internal.crypto.tls;
@:interface typedef T_constantTimeHash = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function constantTimeSum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    public dynamic function blockSize():stdgo.GoInt;
    public dynamic function reset():Void;
    public dynamic function size():stdgo.GoInt;
    public dynamic function sum(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
