package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.RawMessage_asInterface) class RawMessage_static_extension {
    @:keep
    static public function unmarshalJSON( _m:stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage> = _m;
        if (_m == null || (_m : Dynamic).__nil__) {
            return stdgo._internal.errors.Errors_new_.new_(("json.RawMessage: UnmarshalJSON on nil pointer" : stdgo.GoString));
        };
        (_m : stdgo._internal.encoding.json.Json_RawMessage.RawMessage).__setData__(((((_m : stdgo._internal.encoding.json.Json_RawMessage.RawMessage)).__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage).__append__(...(_data : Array<stdgo.GoUInt8>))));
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalJSON( _m:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo._internal.encoding.json.Json_RawMessage.RawMessage = _m;
        if (_m == null) {
            return { _0 : (("null" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
}
