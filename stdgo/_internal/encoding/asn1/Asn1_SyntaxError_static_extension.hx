package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError = _e?.__copy__();
        return (("asn1: syntax error: " : stdgo.GoString) + _e.msg?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
