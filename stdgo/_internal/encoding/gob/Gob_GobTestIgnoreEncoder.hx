package stdgo._internal.encoding.gob;
@:structInit class GobTestIgnoreEncoder {
    public var x : stdgo.GoInt = 0;
    public function new(?x:stdgo.GoInt) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestIgnoreEncoder(x);
    }
}
