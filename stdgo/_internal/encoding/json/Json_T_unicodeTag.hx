package stdgo._internal.encoding.json;
@:structInit class T_unicodeTag {
    @:tag("`json:\"Ελλάδα\"`")
    public var w : stdgo.GoString = "";
    public function new(?w:stdgo.GoString) {
        if (w != null) this.w = w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unicodeTag(w);
    }
}
