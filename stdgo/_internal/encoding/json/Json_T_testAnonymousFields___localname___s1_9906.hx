package stdgo._internal.encoding.json;
@:structInit class T_testAnonymousFields___localname___s1_9906 {
    public var _x : stdgo.GoInt = 0;
    public var x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt, ?x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields___localname___s1_9906(_x, x);
    }
}
