package stdgo._internal.compress.flate;
@:interface typedef Reader = stdgo.StructType & {
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; };
};
