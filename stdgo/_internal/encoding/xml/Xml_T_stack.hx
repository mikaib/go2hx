package stdgo._internal.encoding.xml;
@:structInit class T_stack {
    public var _next : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
    public var _kind : stdgo.GoInt = 0;
    public var _name : stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
    public var _ok : Bool = false;
    public function new(?_next:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>, ?_kind:stdgo.GoInt, ?_name:stdgo._internal.encoding.xml.Xml_Name.Name, ?_ok:Bool) {
        if (_next != null) this._next = _next;
        if (_kind != null) this._kind = _kind;
        if (_name != null) this._name = _name;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stack(_next, _kind, _name, _ok);
    }
}
