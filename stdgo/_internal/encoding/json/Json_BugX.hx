package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_BugX_static_extension.BugX_static_extension) class BugX {
    public var a : stdgo.GoInt = 0;
    @:embedded
    public var bugA : stdgo._internal.encoding.json.Json_BugA.BugA = ({} : stdgo._internal.encoding.json.Json_BugA.BugA);
    @:embedded
    public var bugB : stdgo._internal.encoding.json.Json_BugB.BugB = ({} : stdgo._internal.encoding.json.Json_BugB.BugB);
    public function new(?a:stdgo.GoInt, ?bugA:stdgo._internal.encoding.json.Json_BugA.BugA, ?bugB:stdgo._internal.encoding.json.Json_BugB.BugB) {
        if (a != null) this.a = a;
        if (bugA != null) this.bugA = bugA;
        if (bugB != null) this.bugB = bugB;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugX(a, bugA, bugB);
    }
}
