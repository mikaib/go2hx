package stdgo._internal.encoding.xml;
class StartElement_asInterface {
    @:keep
    public dynamic function end():stdgo._internal.encoding.xml.Xml_EndElement.EndElement return __self__.value.end();
    @:keep
    public dynamic function copy():stdgo._internal.encoding.xml.Xml_StartElement.StartElement return __self__.value.copy();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
