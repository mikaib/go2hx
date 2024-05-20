package stdgo.encoding.json;
class Unmarshaler_static_extension {
    static public function unmarshalJSON(t:Unmarshaler, _0:Array<StdTypes.Int>):stdgo.Error {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.Unmarshaler_static_extension.unmarshalJSON(t, _0);
    }
}
typedef Unmarshaler = stdgo._internal.encoding.json.Json.Unmarshaler;
class Marshaler_static_extension {
    static public function marshalJSON(t:Marshaler):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.Marshaler_static_extension.marshalJSON(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef Marshaler = stdgo._internal.encoding.json.Json.Marshaler;
@:structInit @:private abstract T_codeResponse(stdgo._internal.encoding.json.Json.T_codeResponse) from stdgo._internal.encoding.json.Json.T_codeResponse to stdgo._internal.encoding.json.Json.T_codeResponse {
    public var tree(get, set) : stdgo._internal.encoding.json.Json.T_codeNode;
    function get_tree():stdgo._internal.encoding.json.Json.T_codeNode return this.tree;
    function set_tree(v:stdgo._internal.encoding.json.Json.T_codeNode):stdgo._internal.encoding.json.Json.T_codeNode {
        this.tree = v;
        return v;
    }
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = v;
        return v;
    }
    public function new(?tree:stdgo._internal.encoding.json.Json.T_codeNode, ?username:String) this = new stdgo._internal.encoding.json.Json.T_codeResponse(tree, username);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_codeNode(stdgo._internal.encoding.json.Json.T_codeNode) from stdgo._internal.encoding.json.Json.T_codeNode to stdgo._internal.encoding.json.Json.T_codeNode {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var kids(get, set) : Array<stdgo._internal.encoding.json.Json.T_codeNode>;
    function get_kids():Array<stdgo._internal.encoding.json.Json.T_codeNode> return [for (i in this.kids) i];
    function set_kids(v:Array<stdgo._internal.encoding.json.Json.T_codeNode>):Array<stdgo._internal.encoding.json.Json.T_codeNode> {
        this.kids = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json.T_codeNode>>);
        return v;
    }
    public var clweight(get, set) : StdTypes.Float;
    function get_clweight():StdTypes.Float return this.clweight;
    function set_clweight(v:StdTypes.Float):StdTypes.Float {
        this.clweight = v;
        return v;
    }
    public var touches(get, set) : StdTypes.Int;
    function get_touches():StdTypes.Int return this.touches;
    function set_touches(v:StdTypes.Int):StdTypes.Int {
        this.touches = v;
        return v;
    }
    public var minT(get, set) : haxe.Int64;
    function get_minT():haxe.Int64 return this.minT;
    function set_minT(v:haxe.Int64):haxe.Int64 {
        this.minT = v;
        return v;
    }
    public var maxT(get, set) : haxe.Int64;
    function get_maxT():haxe.Int64 return this.maxT;
    function set_maxT(v:haxe.Int64):haxe.Int64 {
        this.maxT = v;
        return v;
    }
    public var meanT(get, set) : haxe.Int64;
    function get_meanT():haxe.Int64 return this.meanT;
    function set_meanT(v:haxe.Int64):haxe.Int64 {
        this.meanT = v;
        return v;
    }
    public function new(?name:String, ?kids:Array<stdgo._internal.encoding.json.Json.T_codeNode>, ?clweight:StdTypes.Float, ?touches:StdTypes.Int, ?minT:haxe.Int64, ?maxT:haxe.Int64, ?meanT:haxe.Int64) this = new stdgo._internal.encoding.json.Json.T_codeNode(name, ([for (i in kids) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json.T_codeNode>>), clweight, touches, minT, maxT, meanT);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalTypeError_static_extension) abstract UnmarshalTypeError(stdgo._internal.encoding.json.Json.UnmarshalTypeError) from stdgo._internal.encoding.json.Json.UnmarshalTypeError to stdgo._internal.encoding.json.Json.UnmarshalTypeError {
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = v;
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get_type():stdgo._internal.reflect.Reflect.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this.type = v;
        return v;
    }
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = v;
        return v;
    }
    public var struct_(get, set) : String;
    function get_struct_():String return this.struct_;
    function set_struct_(v:String):String {
        this.struct_ = v;
        return v;
    }
    public var field(get, set) : String;
    function get_field():String return this.field;
    function set_field(v:String):String {
        this.field = v;
        return v;
    }
    public function new(?value:String, ?type:stdgo._internal.reflect.Reflect.Type_, ?offset:haxe.Int64, ?struct_:String, ?field:String) this = new stdgo._internal.encoding.json.Json.UnmarshalTypeError(value, type, offset, struct_, field);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalFieldError_static_extension) abstract UnmarshalFieldError(stdgo._internal.encoding.json.Json.UnmarshalFieldError) from stdgo._internal.encoding.json.Json.UnmarshalFieldError to stdgo._internal.encoding.json.Json.UnmarshalFieldError {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = v;
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get_type():stdgo._internal.reflect.Reflect.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this.type = v;
        return v;
    }
    public var field(get, set) : stdgo._internal.reflect.Reflect.StructField;
    function get_field():stdgo._internal.reflect.Reflect.StructField return this.field;
    function set_field(v:stdgo._internal.reflect.Reflect.StructField):stdgo._internal.reflect.Reflect.StructField {
        this.field = v;
        return v;
    }
    public function new(?key:String, ?type:stdgo._internal.reflect.Reflect.Type_, ?field:stdgo._internal.reflect.Reflect.StructField) this = new stdgo._internal.encoding.json.Json.UnmarshalFieldError(key, type, field);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.InvalidUnmarshalError_static_extension) abstract InvalidUnmarshalError(stdgo._internal.encoding.json.Json.InvalidUnmarshalError) from stdgo._internal.encoding.json.Json.InvalidUnmarshalError to stdgo._internal.encoding.json.Json.InvalidUnmarshalError {
    public var type(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get_type():stdgo._internal.reflect.Reflect.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect.Type_) this = new stdgo._internal.encoding.json.Json.InvalidUnmarshalError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_errorContext(stdgo._internal.encoding.json.Json.T_errorContext) from stdgo._internal.encoding.json.Json.T_errorContext to stdgo._internal.encoding.json.Json.T_errorContext {
    public var struct_(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get_struct_():stdgo._internal.reflect.Reflect.Type_ return this.struct_;
    function set_struct_(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this.struct_ = v;
        return v;
    }
    public var fieldStack(get, set) : Array<String>;
    function get_fieldStack():Array<String> return [for (i in this.fieldStack) i];
    function set_fieldStack(v:Array<String>):Array<String> {
        this.fieldStack = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?struct_:stdgo._internal.reflect.Reflect.Type_, ?fieldStack:Array<String>) this = new stdgo._internal.encoding.json.Json.T_errorContext(struct_, ([for (i in fieldStack) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_decodeState_static_extension) abstract T_decodeState(stdgo._internal.encoding.json.Json.T_decodeState) from stdgo._internal.encoding.json.Json.T_decodeState to stdgo._internal.encoding.json.Json.T_decodeState {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = v;
        return v;
    }
    public var _opcode(get, set) : StdTypes.Int;
    function get__opcode():StdTypes.Int return this._opcode;
    function set__opcode(v:StdTypes.Int):StdTypes.Int {
        this._opcode = v;
        return v;
    }
    public var _scan(get, set) : stdgo._internal.encoding.json.Json.T_scanner;
    function get__scan():stdgo._internal.encoding.json.Json.T_scanner return this._scan;
    function set__scan(v:stdgo._internal.encoding.json.Json.T_scanner):stdgo._internal.encoding.json.Json.T_scanner {
        this._scan = v;
        return v;
    }
    public var _errorContext(get, set) : stdgo._internal.encoding.json.Json.T_errorContext;
    function get__errorContext():stdgo._internal.encoding.json.Json.T_errorContext return this._errorContext;
    function set__errorContext(v:stdgo._internal.encoding.json.Json.T_errorContext):stdgo._internal.encoding.json.Json.T_errorContext {
        this._errorContext = v;
        return v;
    }
    public var _savedError(get, set) : stdgo.Error;
    function get__savedError():stdgo.Error return this._savedError;
    function set__savedError(v:stdgo.Error):stdgo.Error {
        this._savedError = v;
        return v;
    }
    public var _useNumber(get, set) : Bool;
    function get__useNumber():Bool return this._useNumber;
    function set__useNumber(v:Bool):Bool {
        this._useNumber = v;
        return v;
    }
    public var _disallowUnknownFields(get, set) : Bool;
    function get__disallowUnknownFields():Bool return this._disallowUnknownFields;
    function set__disallowUnknownFields(v:Bool):Bool {
        this._disallowUnknownFields = v;
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_off:StdTypes.Int, ?_opcode:StdTypes.Int, ?_scan:stdgo._internal.encoding.json.Json.T_scanner, ?_errorContext:stdgo._internal.encoding.json.Json.T_errorContext, ?_savedError:stdgo.Error, ?_useNumber:Bool, ?_disallowUnknownFields:Bool) this = new stdgo._internal.encoding.json.Json.T_decodeState(([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>), _off, _opcode, _scan, _errorContext, _savedError, _useNumber, _disallowUnknownFields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_unquotedValue(stdgo._internal.encoding.json.Json.T_unquotedValue) from stdgo._internal.encoding.json.Json.T_unquotedValue to stdgo._internal.encoding.json.Json.T_unquotedValue {
    public function new() this = new stdgo._internal.encoding.json.Json.T_unquotedValue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_(stdgo._internal.encoding.json.Json.T_) from stdgo._internal.encoding.json.Json.T_ to stdgo._internal.encoding.json.Json.T_ {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public var z(get, set) : StdTypes.Int;
    function get_z():StdTypes.Int return this.z;
    function set_z(v:StdTypes.Int):StdTypes.Int {
        this.z = v;
        return v;
    }
    public function new(?x:String, ?y:StdTypes.Int, ?z:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_(x, y, z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract U(stdgo._internal.encoding.json.Json.U) from stdgo._internal.encoding.json.Json.U to stdgo._internal.encoding.json.Json.U {
    public var alphabet(get, set) : String;
    function get_alphabet():String return this.alphabet;
    function set_alphabet(v:String):String {
        this.alphabet = v;
        return v;
    }
    public function new(?alphabet:String) this = new stdgo._internal.encoding.json.Json.U(alphabet);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract V(stdgo._internal.encoding.json.Json.V) from stdgo._internal.encoding.json.Json.V to stdgo._internal.encoding.json.Json.V {
    public var f1(get, set) : stdgo.AnyInterface;
    function get_f1():stdgo.AnyInterface return this.f1;
    function set_f1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.f1 = v;
        return v;
    }
    public var f2(get, set) : StdTypes.Int;
    function get_f2():StdTypes.Int return this.f2;
    function set_f2(v:StdTypes.Int):StdTypes.Int {
        this.f2 = v;
        return v;
    }
    public var f3(get, set) : stdgo._internal.encoding.json.Json.Number;
    function get_f3():stdgo._internal.encoding.json.Json.Number return this.f3;
    function set_f3(v:stdgo._internal.encoding.json.Json.Number):stdgo._internal.encoding.json.Json.Number {
        this.f3 = v;
        return v;
    }
    public var f4(get, set) : stdgo._internal.encoding.json.Json.VOuter;
    function get_f4():stdgo._internal.encoding.json.Json.VOuter return this.f4;
    function set_f4(v:stdgo._internal.encoding.json.Json.VOuter):stdgo._internal.encoding.json.Json.VOuter {
        this.f4 = v;
        return v;
    }
    public function new(?f1:stdgo.AnyInterface, ?f2:StdTypes.Int, ?f3:stdgo._internal.encoding.json.Json.Number, ?f4:stdgo._internal.encoding.json.Json.VOuter) this = new stdgo._internal.encoding.json.Json.V(f1, f2, f3, f4);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract VOuter(stdgo._internal.encoding.json.Json.VOuter) from stdgo._internal.encoding.json.Json.VOuter to stdgo._internal.encoding.json.Json.VOuter {
    public var v(get, set) : stdgo._internal.encoding.json.Json.V;
    function get_v():stdgo._internal.encoding.json.Json.V return this.v;
    function set_v(v:stdgo._internal.encoding.json.Json.V):stdgo._internal.encoding.json.Json.V {
        this.v = v;
        return v;
    }
    public function new(?v:stdgo._internal.encoding.json.Json.V) this = new stdgo._internal.encoding.json.Json.VOuter(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract W(stdgo._internal.encoding.json.Json.W) from stdgo._internal.encoding.json.Json.W to stdgo._internal.encoding.json.Json.W {
    public var s(get, set) : stdgo._internal.encoding.json.Json.SS;
    function get_s():stdgo._internal.encoding.json.Json.SS return this.s;
    function set_s(v:stdgo._internal.encoding.json.Json.SS):stdgo._internal.encoding.json.Json.SS {
        this.s = v;
        return v;
    }
    public function new(?s:stdgo._internal.encoding.json.Json.SS) this = new stdgo._internal.encoding.json.Json.W(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract P(stdgo._internal.encoding.json.Json.P) from stdgo._internal.encoding.json.Json.P to stdgo._internal.encoding.json.Json.P {
    public var pp(get, set) : stdgo._internal.encoding.json.Json.PP;
    function get_pp():stdgo._internal.encoding.json.Json.PP return this.pp;
    function set_pp(v:stdgo._internal.encoding.json.Json.PP):stdgo._internal.encoding.json.Json.PP {
        this.pp = v;
        return v;
    }
    public function new(?pp:stdgo._internal.encoding.json.Json.PP) this = new stdgo._internal.encoding.json.Json.P(pp);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PP(stdgo._internal.encoding.json.Json.PP) from stdgo._internal.encoding.json.Json.PP to stdgo._internal.encoding.json.Json.PP {
    public var t(get, set) : stdgo._internal.encoding.json.Json.T_;
    function get_t():stdgo._internal.encoding.json.Json.T_ return this.t;
    function set_t(v:stdgo._internal.encoding.json.Json.T_):stdgo._internal.encoding.json.Json.T_ {
        this.t = v;
        return v;
    }
    public var ts(get, set) : Array<stdgo._internal.encoding.json.Json.T_>;
    function get_ts():Array<stdgo._internal.encoding.json.Json.T_> return [for (i in this.ts) i];
    function set_ts(v:Array<stdgo._internal.encoding.json.Json.T_>):Array<stdgo._internal.encoding.json.Json.T_> {
        this.ts = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.T_>);
        return v;
    }
    public function new(?t:stdgo._internal.encoding.json.Json.T_, ?ts:Array<stdgo._internal.encoding.json.Json.T_>) this = new stdgo._internal.encoding.json.Json.PP(t, ([for (i in ts) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.T_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_tx(stdgo._internal.encoding.json.Json.T_tx) from stdgo._internal.encoding.json.Json.T_tx to stdgo._internal.encoding.json.Json.T_tx {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_tx(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_unmarshaler_static_extension) abstract T_unmarshaler(stdgo._internal.encoding.json.Json.T_unmarshaler) from stdgo._internal.encoding.json.Json.T_unmarshaler to stdgo._internal.encoding.json.Json.T_unmarshaler {
    public var t(get, set) : Bool;
    function get_t():Bool return this.t;
    function set_t(v:Bool):Bool {
        this.t = v;
        return v;
    }
    public function new(?t:Bool) this = new stdgo._internal.encoding.json.Json.T_unmarshaler(t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_ustruct(stdgo._internal.encoding.json.Json.T_ustruct) from stdgo._internal.encoding.json.Json.T_ustruct to stdgo._internal.encoding.json.Json.T_ustruct {
    public var m(get, set) : stdgo._internal.encoding.json.Json.T_unmarshaler;
    function get_m():stdgo._internal.encoding.json.Json.T_unmarshaler return this.m;
    function set_m(v:stdgo._internal.encoding.json.Json.T_unmarshaler):stdgo._internal.encoding.json.Json.T_unmarshaler {
        this.m = v;
        return v;
    }
    public function new(?m:stdgo._internal.encoding.json.Json.T_unmarshaler) this = new stdgo._internal.encoding.json.Json.T_ustruct(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_unmarshalerText_static_extension) abstract T_unmarshalerText(stdgo._internal.encoding.json.Json.T_unmarshalerText) from stdgo._internal.encoding.json.Json.T_unmarshalerText to stdgo._internal.encoding.json.Json.T_unmarshalerText {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public function new(?a:String, ?b:String) this = new stdgo._internal.encoding.json.Json.T_unmarshalerText(a, b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_ustructText(stdgo._internal.encoding.json.Json.T_ustructText) from stdgo._internal.encoding.json.Json.T_ustructText to stdgo._internal.encoding.json.Json.T_ustructText {
    public var m(get, set) : stdgo._internal.encoding.json.Json.T_unmarshalerText;
    function get_m():stdgo._internal.encoding.json.Json.T_unmarshalerText return this.m;
    function set_m(v:stdgo._internal.encoding.json.Json.T_unmarshalerText):stdgo._internal.encoding.json.Json.T_unmarshalerText {
        this.m = v;
        return v;
    }
    public function new(?m:stdgo._internal.encoding.json.Json.T_unmarshalerText) this = new stdgo._internal.encoding.json.Json.T_ustructText(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Point(stdgo._internal.encoding.json.Json.Point) from stdgo._internal.encoding.json.Json.Point to stdgo._internal.encoding.json.Json.Point {
    public var z(get, set) : StdTypes.Int;
    function get_z():StdTypes.Int return this.z;
    function set_z(v:StdTypes.Int):StdTypes.Int {
        this.z = v;
        return v;
    }
    public function new(?z:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.Point(z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Top_static_extension) abstract Top(stdgo._internal.encoding.json.Json.Top) from stdgo._internal.encoding.json.Json.Top to stdgo._internal.encoding.json.Json.Top {
    public var level0(get, set) : StdTypes.Int;
    function get_level0():StdTypes.Int return this.level0;
    function set_level0(v:StdTypes.Int):StdTypes.Int {
        this.level0 = v;
        return v;
    }
    public var embed0(get, set) : stdgo._internal.encoding.json.Json.Embed0;
    function get_embed0():stdgo._internal.encoding.json.Json.Embed0 return this.embed0;
    function set_embed0(v:stdgo._internal.encoding.json.Json.Embed0):stdgo._internal.encoding.json.Json.Embed0 {
        this.embed0 = v;
        return v;
    }
    public var embed0a(get, set) : stdgo._internal.encoding.json.Json.Embed0a;
    function get_embed0a():stdgo._internal.encoding.json.Json.Embed0a return this.embed0a;
    function set_embed0a(v:stdgo._internal.encoding.json.Json.Embed0a):stdgo._internal.encoding.json.Json.Embed0a {
        this.embed0a = v;
        return v;
    }
    public var embed0b(get, set) : stdgo._internal.encoding.json.Json.Embed0b;
    function get_embed0b():stdgo._internal.encoding.json.Json.Embed0b return this.embed0b;
    function set_embed0b(v:stdgo._internal.encoding.json.Json.Embed0b):stdgo._internal.encoding.json.Json.Embed0b {
        this.embed0b = v;
        return v;
    }
    public var embed0c(get, set) : stdgo._internal.encoding.json.Json.Embed0c;
    function get_embed0c():stdgo._internal.encoding.json.Json.Embed0c return this.embed0c;
    function set_embed0c(v:stdgo._internal.encoding.json.Json.Embed0c):stdgo._internal.encoding.json.Json.Embed0c {
        this.embed0c = v;
        return v;
    }
    public var loop(get, set) : stdgo._internal.encoding.json.Json.Loop;
    function get_loop():stdgo._internal.encoding.json.Json.Loop return this.loop;
    function set_loop(v:stdgo._internal.encoding.json.Json.Loop):stdgo._internal.encoding.json.Json.Loop {
        this.loop = v;
        return v;
    }
    public var embed0p(get, set) : stdgo._internal.encoding.json.Json.Embed0p;
    function get_embed0p():stdgo._internal.encoding.json.Json.Embed0p return this.embed0p;
    function set_embed0p(v:stdgo._internal.encoding.json.Json.Embed0p):stdgo._internal.encoding.json.Json.Embed0p {
        this.embed0p = v;
        return v;
    }
    public var embed0q(get, set) : stdgo._internal.encoding.json.Json.Embed0q;
    function get_embed0q():stdgo._internal.encoding.json.Json.Embed0q return this.embed0q;
    function set_embed0q(v:stdgo._internal.encoding.json.Json.Embed0q):stdgo._internal.encoding.json.Json.Embed0q {
        this.embed0q = v;
        return v;
    }
    public var _embed(get, set) : stdgo._internal.encoding.json.Json.T_embed;
    function get__embed():stdgo._internal.encoding.json.Json.T_embed return this._embed;
    function set__embed(v:stdgo._internal.encoding.json.Json.T_embed):stdgo._internal.encoding.json.Json.T_embed {
        this._embed = v;
        return v;
    }
    public function new(?level0:StdTypes.Int, ?embed0:stdgo._internal.encoding.json.Json.Embed0, ?embed0a:stdgo._internal.encoding.json.Json.Embed0a, ?embed0b:stdgo._internal.encoding.json.Json.Embed0b, ?embed0c:stdgo._internal.encoding.json.Json.Embed0c, ?loop:stdgo._internal.encoding.json.Json.Loop, ?embed0p:stdgo._internal.encoding.json.Json.Embed0p, ?embed0q:stdgo._internal.encoding.json.Json.Embed0q, ?_embed:stdgo._internal.encoding.json.Json.T_embed) this = new stdgo._internal.encoding.json.Json.Top(level0, embed0, embed0a, embed0b, embed0c, loop, embed0p, embed0q, _embed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Embed0(stdgo._internal.encoding.json.Json.Embed0) from stdgo._internal.encoding.json.Json.Embed0 to stdgo._internal.encoding.json.Json.Embed0 {
    public var level1a(get, set) : StdTypes.Int;
    function get_level1a():StdTypes.Int return this.level1a;
    function set_level1a(v:StdTypes.Int):StdTypes.Int {
        this.level1a = v;
        return v;
    }
    public var level1b(get, set) : StdTypes.Int;
    function get_level1b():StdTypes.Int return this.level1b;
    function set_level1b(v:StdTypes.Int):StdTypes.Int {
        this.level1b = v;
        return v;
    }
    public var level1c(get, set) : StdTypes.Int;
    function get_level1c():StdTypes.Int return this.level1c;
    function set_level1c(v:StdTypes.Int):StdTypes.Int {
        this.level1c = v;
        return v;
    }
    public var level1d(get, set) : StdTypes.Int;
    function get_level1d():StdTypes.Int return this.level1d;
    function set_level1d(v:StdTypes.Int):StdTypes.Int {
        this.level1d = v;
        return v;
    }
    public var level1e(get, set) : StdTypes.Int;
    function get_level1e():StdTypes.Int return this.level1e;
    function set_level1e(v:StdTypes.Int):StdTypes.Int {
        this.level1e = v;
        return v;
    }
    public function new(?level1a:StdTypes.Int, ?level1b:StdTypes.Int, ?level1c:StdTypes.Int, ?level1d:StdTypes.Int, ?level1e:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.Embed0(level1a, level1b, level1c, level1d, level1e);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Embed0a(stdgo._internal.encoding.json.Json.Embed0a) from stdgo._internal.encoding.json.Json.Embed0a to stdgo._internal.encoding.json.Json.Embed0a {
    public var level1a(get, set) : StdTypes.Int;
    function get_level1a():StdTypes.Int return this.level1a;
    function set_level1a(v:StdTypes.Int):StdTypes.Int {
        this.level1a = v;
        return v;
    }
    public var level1b(get, set) : StdTypes.Int;
    function get_level1b():StdTypes.Int return this.level1b;
    function set_level1b(v:StdTypes.Int):StdTypes.Int {
        this.level1b = v;
        return v;
    }
    public var level1c(get, set) : StdTypes.Int;
    function get_level1c():StdTypes.Int return this.level1c;
    function set_level1c(v:StdTypes.Int):StdTypes.Int {
        this.level1c = v;
        return v;
    }
    public var level1d(get, set) : StdTypes.Int;
    function get_level1d():StdTypes.Int return this.level1d;
    function set_level1d(v:StdTypes.Int):StdTypes.Int {
        this.level1d = v;
        return v;
    }
    public var level1f(get, set) : StdTypes.Int;
    function get_level1f():StdTypes.Int return this.level1f;
    function set_level1f(v:StdTypes.Int):StdTypes.Int {
        this.level1f = v;
        return v;
    }
    public function new(?level1a:StdTypes.Int, ?level1b:StdTypes.Int, ?level1c:StdTypes.Int, ?level1d:StdTypes.Int, ?level1f:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.Embed0a(level1a, level1b, level1c, level1d, level1f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Embed0p_static_extension) abstract Embed0p(stdgo._internal.encoding.json.Json.Embed0p) from stdgo._internal.encoding.json.Json.Embed0p to stdgo._internal.encoding.json.Json.Embed0p {
    public var point(get, set) : stdgo._internal.image.Image.Point;
    function get_point():stdgo._internal.image.Image.Point return this.point;
    function set_point(v:stdgo._internal.image.Image.Point):stdgo._internal.image.Image.Point {
        this.point = v;
        return v;
    }
    public function new(?point:stdgo._internal.image.Image.Point) this = new stdgo._internal.encoding.json.Json.Embed0p(point);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Embed0q_static_extension) abstract Embed0q(stdgo._internal.encoding.json.Json.Embed0q) from stdgo._internal.encoding.json.Json.Embed0q to stdgo._internal.encoding.json.Json.Embed0q {
    public var point(get, set) : stdgo._internal.encoding.json.Json.Point;
    function get_point():stdgo._internal.encoding.json.Json.Point return this.point;
    function set_point(v:stdgo._internal.encoding.json.Json.Point):stdgo._internal.encoding.json.Json.Point {
        this.point = v;
        return v;
    }
    public function new(?point:stdgo._internal.encoding.json.Json.Point) this = new stdgo._internal.encoding.json.Json.Embed0q(point);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_embed(stdgo._internal.encoding.json.Json.T_embed) from stdgo._internal.encoding.json.Json.T_embed to stdgo._internal.encoding.json.Json.T_embed {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = v;
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_embed(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Loop_static_extension) abstract Loop(stdgo._internal.encoding.json.Json.Loop) from stdgo._internal.encoding.json.Json.Loop to stdgo._internal.encoding.json.Json.Loop {
    public var loop1(get, set) : StdTypes.Int;
    function get_loop1():StdTypes.Int return this.loop1;
    function set_loop1(v:StdTypes.Int):StdTypes.Int {
        this.loop1 = v;
        return v;
    }
    public var loop2(get, set) : StdTypes.Int;
    function get_loop2():StdTypes.Int return this.loop2;
    function set_loop2(v:StdTypes.Int):StdTypes.Int {
        this.loop2 = v;
        return v;
    }
    public var loop(get, set) : stdgo._internal.encoding.json.Json.Loop;
    function get_loop():stdgo._internal.encoding.json.Json.Loop return this.loop;
    function set_loop(v:stdgo._internal.encoding.json.Json.Loop):stdgo._internal.encoding.json.Json.Loop {
        this.loop = v;
        return v;
    }
    public function new(?loop1:StdTypes.Int, ?loop2:StdTypes.Int, ?loop:stdgo._internal.encoding.json.Json.Loop) this = new stdgo._internal.encoding.json.Json.Loop(loop1, loop2, loop);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S5_static_extension) abstract S5(stdgo._internal.encoding.json.Json.S5) from stdgo._internal.encoding.json.Json.S5 to stdgo._internal.encoding.json.Json.S5 {
    public var s6(get, set) : stdgo._internal.encoding.json.Json.S6;
    function get_s6():stdgo._internal.encoding.json.Json.S6 return this.s6;
    function set_s6(v:stdgo._internal.encoding.json.Json.S6):stdgo._internal.encoding.json.Json.S6 {
        this.s6 = v;
        return v;
    }
    public var s7(get, set) : stdgo._internal.encoding.json.Json.S7;
    function get_s7():stdgo._internal.encoding.json.Json.S7 return this.s7;
    function set_s7(v:stdgo._internal.encoding.json.Json.S7):stdgo._internal.encoding.json.Json.S7 {
        this.s7 = v;
        return v;
    }
    public var s8(get, set) : stdgo._internal.encoding.json.Json.S8;
    function get_s8():stdgo._internal.encoding.json.Json.S8 return this.s8;
    function set_s8(v:stdgo._internal.encoding.json.Json.S8):stdgo._internal.encoding.json.Json.S8 {
        this.s8 = v;
        return v;
    }
    public function new(?s6:stdgo._internal.encoding.json.Json.S6, ?s7:stdgo._internal.encoding.json.Json.S7, ?s8:stdgo._internal.encoding.json.Json.S8) this = new stdgo._internal.encoding.json.Json.S5(s6, s7, s8);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract S6(stdgo._internal.encoding.json.Json.S6) from stdgo._internal.encoding.json.Json.S6 to stdgo._internal.encoding.json.Json.S6 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.S6(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S8_static_extension) abstract S8(stdgo._internal.encoding.json.Json.S8) from stdgo._internal.encoding.json.Json.S8 to stdgo._internal.encoding.json.Json.S8 {
    public var s9(get, set) : stdgo._internal.encoding.json.Json.S9;
    function get_s9():stdgo._internal.encoding.json.Json.S9 return this.s9;
    function set_s9(v:stdgo._internal.encoding.json.Json.S9):stdgo._internal.encoding.json.Json.S9 {
        this.s9 = v;
        return v;
    }
    public function new(?s9:stdgo._internal.encoding.json.Json.S9) this = new stdgo._internal.encoding.json.Json.S8(s9);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract S9(stdgo._internal.encoding.json.Json.S9) from stdgo._internal.encoding.json.Json.S9 to stdgo._internal.encoding.json.Json.S9 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.S9(x, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S10_static_extension) abstract S10(stdgo._internal.encoding.json.Json.S10) from stdgo._internal.encoding.json.Json.S10 to stdgo._internal.encoding.json.Json.S10 {
    public var s11(get, set) : stdgo._internal.encoding.json.Json.S11;
    function get_s11():stdgo._internal.encoding.json.Json.S11 return this.s11;
    function set_s11(v:stdgo._internal.encoding.json.Json.S11):stdgo._internal.encoding.json.Json.S11 {
        this.s11 = v;
        return v;
    }
    public var s12(get, set) : stdgo._internal.encoding.json.Json.S12;
    function get_s12():stdgo._internal.encoding.json.Json.S12 return this.s12;
    function set_s12(v:stdgo._internal.encoding.json.Json.S12):stdgo._internal.encoding.json.Json.S12 {
        this.s12 = v;
        return v;
    }
    public var s13(get, set) : stdgo._internal.encoding.json.Json.S13;
    function get_s13():stdgo._internal.encoding.json.Json.S13 return this.s13;
    function set_s13(v:stdgo._internal.encoding.json.Json.S13):stdgo._internal.encoding.json.Json.S13 {
        this.s13 = v;
        return v;
    }
    public function new(?s11:stdgo._internal.encoding.json.Json.S11, ?s12:stdgo._internal.encoding.json.Json.S12, ?s13:stdgo._internal.encoding.json.Json.S13) this = new stdgo._internal.encoding.json.Json.S10(s11, s12, s13);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S11_static_extension) abstract S11(stdgo._internal.encoding.json.Json.S11) from stdgo._internal.encoding.json.Json.S11 to stdgo._internal.encoding.json.Json.S11 {
    public var s6(get, set) : stdgo._internal.encoding.json.Json.S6;
    function get_s6():stdgo._internal.encoding.json.Json.S6 return this.s6;
    function set_s6(v:stdgo._internal.encoding.json.Json.S6):stdgo._internal.encoding.json.Json.S6 {
        this.s6 = v;
        return v;
    }
    public function new(?s6:stdgo._internal.encoding.json.Json.S6) this = new stdgo._internal.encoding.json.Json.S11(s6);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S12_static_extension) abstract S12(stdgo._internal.encoding.json.Json.S12) from stdgo._internal.encoding.json.Json.S12 to stdgo._internal.encoding.json.Json.S12 {
    public var s6(get, set) : stdgo._internal.encoding.json.Json.S6;
    function get_s6():stdgo._internal.encoding.json.Json.S6 return this.s6;
    function set_s6(v:stdgo._internal.encoding.json.Json.S6):stdgo._internal.encoding.json.Json.S6 {
        this.s6 = v;
        return v;
    }
    public function new(?s6:stdgo._internal.encoding.json.Json.S6) this = new stdgo._internal.encoding.json.Json.S12(s6);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S13_static_extension) abstract S13(stdgo._internal.encoding.json.Json.S13) from stdgo._internal.encoding.json.Json.S13 to stdgo._internal.encoding.json.Json.S13 {
    public var s8(get, set) : stdgo._internal.encoding.json.Json.S8;
    function get_s8():stdgo._internal.encoding.json.Json.S8 return this.s8;
    function set_s8(v:stdgo._internal.encoding.json.Json.S8):stdgo._internal.encoding.json.Json.S8 {
        this.s8 = v;
        return v;
    }
    public function new(?s8:stdgo._internal.encoding.json.Json.S8) this = new stdgo._internal.encoding.json.Json.S13(s8);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Ambig(stdgo._internal.encoding.json.Json.Ambig) from stdgo._internal.encoding.json.Json.Ambig to stdgo._internal.encoding.json.Json.Ambig {
    public var first(get, set) : StdTypes.Int;
    function get_first():StdTypes.Int return this.first;
    function set_first(v:StdTypes.Int):StdTypes.Int {
        this.first = v;
        return v;
    }
    public var second(get, set) : StdTypes.Int;
    function get_second():StdTypes.Int return this.second;
    function set_second(v:StdTypes.Int):StdTypes.Int {
        this.second = v;
        return v;
    }
    public function new(?first:StdTypes.Int, ?second:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.Ambig(first, second);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract XYZ(stdgo._internal.encoding.json.Json.XYZ) from stdgo._internal.encoding.json.Json.XYZ to stdgo._internal.encoding.json.Json.XYZ {
    public var x(get, set) : stdgo.AnyInterface;
    function get_x():stdgo.AnyInterface return this.x;
    function set_x(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.x = v;
        return v;
    }
    public var y(get, set) : stdgo.AnyInterface;
    function get_y():stdgo.AnyInterface return this.y;
    function set_y(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.y = v;
        return v;
    }
    public var z(get, set) : stdgo.AnyInterface;
    function get_z():stdgo.AnyInterface return this.z;
    function set_z(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.z = v;
        return v;
    }
    public function new(?x:stdgo.AnyInterface, ?y:stdgo.AnyInterface, ?z:stdgo.AnyInterface) this = new stdgo._internal.encoding.json.Json.XYZ(x, y, z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_unexportedWithMethods_static_extension) abstract T_unexportedWithMethods(stdgo._internal.encoding.json.Json.T_unexportedWithMethods) from stdgo._internal.encoding.json.Json.T_unexportedWithMethods to stdgo._internal.encoding.json.Json.T_unexportedWithMethods {
    public function new() this = new stdgo._internal.encoding.json.Json.T_unexportedWithMethods();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_mapStringToStringData(stdgo._internal.encoding.json.Json.T_mapStringToStringData) from stdgo._internal.encoding.json.Json.T_mapStringToStringData to stdgo._internal.encoding.json.Json.T_mapStringToStringData {
    public var data(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_data():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.data;
    function set_data(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.data = v;
        return v;
    }
    public function new(?data:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) this = new stdgo._internal.encoding.json.Json.T_mapStringToStringData(data);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_unmarshalTest(stdgo._internal.encoding.json.Json.T_unmarshalTest) from stdgo._internal.encoding.json.Json.T_unmarshalTest to stdgo._internal.encoding.json.Json.T_unmarshalTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _ptr(get, set) : stdgo.AnyInterface;
    function get__ptr():stdgo.AnyInterface return this._ptr;
    function set__ptr(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._ptr = v;
        return v;
    }
    public var _out(get, set) : stdgo.AnyInterface;
    function get__out():stdgo.AnyInterface return this._out;
    function set__out(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._out = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _useNumber(get, set) : Bool;
    function get__useNumber():Bool return this._useNumber;
    function set__useNumber(v:Bool):Bool {
        this._useNumber = v;
        return v;
    }
    public var _golden(get, set) : Bool;
    function get__golden():Bool return this._golden;
    function set__golden(v:Bool):Bool {
        this._golden = v;
        return v;
    }
    public var _disallowUnknownFields(get, set) : Bool;
    function get__disallowUnknownFields():Bool return this._disallowUnknownFields;
    function set__disallowUnknownFields(v:Bool):Bool {
        this._disallowUnknownFields = v;
        return v;
    }
    public function new(?_in:String, ?_ptr:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:stdgo.Error, ?_useNumber:Bool, ?_golden:Bool, ?_disallowUnknownFields:Bool) this = new stdgo._internal.encoding.json.Json.T_unmarshalTest(_in, _ptr, _out, _err, _useNumber, _golden, _disallowUnknownFields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract B(stdgo._internal.encoding.json.Json.B) from stdgo._internal.encoding.json.Json.B to stdgo._internal.encoding.json.Json.B {
    public var b(get, set) : Bool;
    function get_b():Bool return this.b;
    function set_b(v:Bool):Bool {
        this.b = v;
        return v;
    }
    public function new(?b:Bool) this = new stdgo._internal.encoding.json.Json.B(b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract DoublePtr(stdgo._internal.encoding.json.Json.DoublePtr) from stdgo._internal.encoding.json.Json.DoublePtr to stdgo._internal.encoding.json.Json.DoublePtr {
    public var i(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_i():stdgo.Pointer<StdTypes.Int> return this.i;
    function set_i(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.i = v;
        return v;
    }
    public var j(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_j():stdgo.Pointer<StdTypes.Int> return this.j;
    function set_j(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.j = v;
        return v;
    }
    public function new(?i:stdgo.Pointer<StdTypes.Int>, ?j:stdgo.Pointer<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json.DoublePtr(i, j);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Xint(stdgo._internal.encoding.json.Json.Xint) from stdgo._internal.encoding.json.Json.Xint to stdgo._internal.encoding.json.Json.Xint {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.Xint(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract WrongString(stdgo._internal.encoding.json.Json.WrongString) from stdgo._internal.encoding.json.Json.WrongString to stdgo._internal.encoding.json.Json.WrongString {
    public var message(get, set) : String;
    function get_message():String return this.message;
    function set_message(v:String):String {
        this.message = v;
        return v;
    }
    public function new(?message:String) this = new stdgo._internal.encoding.json.Json.WrongString(message);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_wrongStringTest(stdgo._internal.encoding.json.Json.T_wrongStringTest) from stdgo._internal.encoding.json.Json.T_wrongStringTest to stdgo._internal.encoding.json.Json.T_wrongStringTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = v;
        return v;
    }
    public function new(?_in:String, ?_err:String) this = new stdgo._internal.encoding.json.Json.T_wrongStringTest(_in, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract All(stdgo._internal.encoding.json.Json.All) from stdgo._internal.encoding.json.Json.All to stdgo._internal.encoding.json.Json.All {
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var int_(get, set) : StdTypes.Int;
    function get_int_():StdTypes.Int return this.int_;
    function set_int_(v:StdTypes.Int):StdTypes.Int {
        this.int_ = v;
        return v;
    }
    public var int8(get, set) : StdTypes.Int;
    function get_int8():StdTypes.Int return this.int8;
    function set_int8(v:StdTypes.Int):StdTypes.Int {
        this.int8 = v;
        return v;
    }
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = v;
        return v;
    }
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = v;
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = v;
        return v;
    }
    public var uint(get, set) : std.UInt;
    function get_uint():std.UInt return this.uint;
    function set_uint(v:std.UInt):std.UInt {
        this.uint = v;
        return v;
    }
    public var uint8(get, set) : std.UInt;
    function get_uint8():std.UInt return this.uint8;
    function set_uint8(v:std.UInt):std.UInt {
        this.uint8 = v;
        return v;
    }
    public var uint16(get, set) : std.UInt;
    function get_uint16():std.UInt return this.uint16;
    function set_uint16(v:std.UInt):std.UInt {
        this.uint16 = v;
        return v;
    }
    public var uint32(get, set) : std.UInt;
    function get_uint32():std.UInt return this.uint32;
    function set_uint32(v:std.UInt):std.UInt {
        this.uint32 = v;
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = v;
        return v;
    }
    public var uintptr(get, set) : stdgo.GoUIntptr;
    function get_uintptr():stdgo.GoUIntptr return this.uintptr;
    function set_uintptr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptr = v;
        return v;
    }
    public var float32(get, set) : StdTypes.Float;
    function get_float32():StdTypes.Float return this.float32;
    function set_float32(v:StdTypes.Float):StdTypes.Float {
        this.float32 = v;
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = v;
        return v;
    }
    public var foo(get, set) : String;
    function get_foo():String return this.foo;
    function set_foo(v:String):String {
        this.foo = v;
        return v;
    }
    public var foo2(get, set) : String;
    function get_foo2():String return this.foo2;
    function set_foo2(v:String):String {
        this.foo2 = v;
        return v;
    }
    public var intStr(get, set) : haxe.Int64;
    function get_intStr():haxe.Int64 return this.intStr;
    function set_intStr(v:haxe.Int64):haxe.Int64 {
        this.intStr = v;
        return v;
    }
    public var uintptrStr(get, set) : stdgo.GoUIntptr;
    function get_uintptrStr():stdgo.GoUIntptr return this.uintptrStr;
    function set_uintptrStr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptrStr = v;
        return v;
    }
    public var pbool(get, set) : stdgo.Pointer<Bool>;
    function get_pbool():stdgo.Pointer<Bool> return this.pbool;
    function set_pbool(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.pbool = v;
        return v;
    }
    public var pint(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pint():stdgo.Pointer<StdTypes.Int> return this.pint;
    function set_pint(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pint = v;
        return v;
    }
    public var pint8(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pint8():stdgo.Pointer<StdTypes.Int> return this.pint8;
    function set_pint8(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pint8 = v;
        return v;
    }
    public var pint16(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pint16():stdgo.Pointer<StdTypes.Int> return this.pint16;
    function set_pint16(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pint16 = v;
        return v;
    }
    public var pint32(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pint32():stdgo.Pointer<StdTypes.Int> return this.pint32;
    function set_pint32(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pint32 = v;
        return v;
    }
    public var pint64(get, set) : stdgo.Pointer<haxe.Int64>;
    function get_pint64():stdgo.Pointer<haxe.Int64> return this.pint64;
    function set_pint64(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        this.pint64 = v;
        return v;
    }
    public var puint(get, set) : stdgo.Pointer<std.UInt>;
    function get_puint():stdgo.Pointer<std.UInt> return this.puint;
    function set_puint(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.puint = v;
        return v;
    }
    public var puint8(get, set) : stdgo.Pointer<std.UInt>;
    function get_puint8():stdgo.Pointer<std.UInt> return this.puint8;
    function set_puint8(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.puint8 = v;
        return v;
    }
    public var puint16(get, set) : stdgo.Pointer<std.UInt>;
    function get_puint16():stdgo.Pointer<std.UInt> return this.puint16;
    function set_puint16(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.puint16 = v;
        return v;
    }
    public var puint32(get, set) : stdgo.Pointer<std.UInt>;
    function get_puint32():stdgo.Pointer<std.UInt> return this.puint32;
    function set_puint32(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.puint32 = v;
        return v;
    }
    public var puint64(get, set) : stdgo.Pointer<haxe.UInt64>;
    function get_puint64():stdgo.Pointer<haxe.UInt64> return this.puint64;
    function set_puint64(v:stdgo.Pointer<haxe.UInt64>):stdgo.Pointer<haxe.UInt64> {
        this.puint64 = v;
        return v;
    }
    public var puintptr(get, set) : stdgo.Pointer<stdgo.GoUIntptr>;
    function get_puintptr():stdgo.Pointer<stdgo.GoUIntptr> return this.puintptr;
    function set_puintptr(v:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.Pointer<stdgo.GoUIntptr> {
        this.puintptr = v;
        return v;
    }
    public var pfloat32(get, set) : stdgo.Pointer<StdTypes.Float>;
    function get_pfloat32():stdgo.Pointer<StdTypes.Float> return this.pfloat32;
    function set_pfloat32(v:stdgo.Pointer<StdTypes.Float>):stdgo.Pointer<StdTypes.Float> {
        this.pfloat32 = v;
        return v;
    }
    public var pfloat64(get, set) : stdgo.Pointer<StdTypes.Float>;
    function get_pfloat64():stdgo.Pointer<StdTypes.Float> return this.pfloat64;
    function set_pfloat64(v:stdgo.Pointer<StdTypes.Float>):stdgo.Pointer<StdTypes.Float> {
        this.pfloat64 = v;
        return v;
    }
    public var string(get, set) : String;
    function get_string():String return this.string;
    function set_string(v:String):String {
        this.string = v;
        return v;
    }
    public var pstring(get, set) : stdgo.Pointer<String>;
    function get_pstring():stdgo.Pointer<String> return this.pstring;
    function set_pstring(v:stdgo.Pointer<String>):stdgo.Pointer<String> {
        this.pstring = v;
        return v;
    }
    public var map_(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>;
    function get_map_():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small> return this.map_;
    function set_map_(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small> {
        this.map_ = v;
        return v;
    }
    public var mapP(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>>;
    function get_mapP():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>> return this.mapP;
    function set_mapP(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>> {
        this.mapP = v;
        return v;
    }
    public var pmap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>;
    function get_pmap():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small> return this.pmap;
    function set_pmap(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small> {
        this.pmap = v;
        return v;
    }
    public var pmapP(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>>;
    function get_pmapP():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>> return this.pmapP;
    function set_pmapP(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>> {
        this.pmapP = v;
        return v;
    }
    public var emptyMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>;
    function get_emptyMap():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small> return this.emptyMap;
    function set_emptyMap(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small> {
        this.emptyMap = v;
        return v;
    }
    public var nilMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>;
    function get_nilMap():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small> return this.nilMap;
    function set_nilMap(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small> {
        this.nilMap = v;
        return v;
    }
    public var slice(get, set) : Array<stdgo._internal.encoding.json.Json.Small>;
    function get_slice():Array<stdgo._internal.encoding.json.Json.Small> return [for (i in this.slice) i];
    function set_slice(v:Array<stdgo._internal.encoding.json.Json.Small>):Array<stdgo._internal.encoding.json.Json.Small> {
        this.slice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.Small>);
        return v;
    }
    public var sliceP(get, set) : Array<stdgo._internal.encoding.json.Json.Small>;
    function get_sliceP():Array<stdgo._internal.encoding.json.Json.Small> return [for (i in this.sliceP) i];
    function set_sliceP(v:Array<stdgo._internal.encoding.json.Json.Small>):Array<stdgo._internal.encoding.json.Json.Small> {
        this.sliceP = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json.Small>>);
        return v;
    }
    public var pslice(get, set) : Array<stdgo._internal.encoding.json.Json.Small>;
    function get_pslice():Array<stdgo._internal.encoding.json.Json.Small> return this.pslice;
    function set_pslice(v:Array<stdgo._internal.encoding.json.Json.Small>):Array<stdgo._internal.encoding.json.Json.Small> {
        this.pslice = v;
        return v;
    }
    public var psliceP(get, set) : Array<stdgo._internal.encoding.json.Json.Small>;
    function get_psliceP():Array<stdgo._internal.encoding.json.Json.Small> return this.psliceP;
    function set_psliceP(v:Array<stdgo._internal.encoding.json.Json.Small>):Array<stdgo._internal.encoding.json.Json.Small> {
        this.psliceP = v;
        return v;
    }
    public var emptySlice(get, set) : Array<stdgo._internal.encoding.json.Json.Small>;
    function get_emptySlice():Array<stdgo._internal.encoding.json.Json.Small> return [for (i in this.emptySlice) i];
    function set_emptySlice(v:Array<stdgo._internal.encoding.json.Json.Small>):Array<stdgo._internal.encoding.json.Json.Small> {
        this.emptySlice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.Small>);
        return v;
    }
    public var nilSlice(get, set) : Array<stdgo._internal.encoding.json.Json.Small>;
    function get_nilSlice():Array<stdgo._internal.encoding.json.Json.Small> return [for (i in this.nilSlice) i];
    function set_nilSlice(v:Array<stdgo._internal.encoding.json.Json.Small>):Array<stdgo._internal.encoding.json.Json.Small> {
        this.nilSlice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.Small>);
        return v;
    }
    public var stringSlice(get, set) : Array<String>;
    function get_stringSlice():Array<String> return [for (i in this.stringSlice) i];
    function set_stringSlice(v:Array<String>):Array<String> {
        this.stringSlice = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var byteSlice(get, set) : Array<std.UInt>;
    function get_byteSlice():Array<std.UInt> return [for (i in this.byteSlice) i];
    function set_byteSlice(v:Array<std.UInt>):Array<std.UInt> {
        this.byteSlice = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var small(get, set) : stdgo._internal.encoding.json.Json.Small;
    function get_small():stdgo._internal.encoding.json.Json.Small return this.small;
    function set_small(v:stdgo._internal.encoding.json.Json.Small):stdgo._internal.encoding.json.Json.Small {
        this.small = v;
        return v;
    }
    public var psmall(get, set) : stdgo._internal.encoding.json.Json.Small;
    function get_psmall():stdgo._internal.encoding.json.Json.Small return this.psmall;
    function set_psmall(v:stdgo._internal.encoding.json.Json.Small):stdgo._internal.encoding.json.Json.Small {
        this.psmall = v;
        return v;
    }
    public var ppsmall(get, set) : stdgo._internal.encoding.json.Json.Small;
    function get_ppsmall():stdgo._internal.encoding.json.Json.Small return this.ppsmall;
    function set_ppsmall(v:stdgo._internal.encoding.json.Json.Small):stdgo._internal.encoding.json.Json.Small {
        this.ppsmall = v;
        return v;
    }
    public var interface_(get, set) : stdgo.AnyInterface;
    function get_interface_():stdgo.AnyInterface return this.interface_;
    function set_interface_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.interface_ = v;
        return v;
    }
    public var pinterface(get, set) : stdgo.AnyInterface;
    function get_pinterface():stdgo.AnyInterface return this.pinterface;
    function set_pinterface(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.pinterface = v;
        return v;
    }
    public var _unexported(get, set) : StdTypes.Int;
    function get__unexported():StdTypes.Int return this._unexported;
    function set__unexported(v:StdTypes.Int):StdTypes.Int {
        this._unexported = v;
        return v;
    }
    public function new(?bool_:Bool, ?int_:StdTypes.Int, ?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint:std.UInt, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?uintptr:stdgo.GoUIntptr, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?foo:String, ?foo2:String, ?intStr:haxe.Int64, ?uintptrStr:stdgo.GoUIntptr, ?pbool:stdgo.Pointer<Bool>, ?pint:stdgo.Pointer<StdTypes.Int>, ?pint8:stdgo.Pointer<StdTypes.Int>, ?pint16:stdgo.Pointer<StdTypes.Int>, ?pint32:stdgo.Pointer<StdTypes.Int>, ?pint64:stdgo.Pointer<haxe.Int64>, ?puint:stdgo.Pointer<std.UInt>, ?puint8:stdgo.Pointer<std.UInt>, ?puint16:stdgo.Pointer<std.UInt>, ?puint32:stdgo.Pointer<std.UInt>, ?puint64:stdgo.Pointer<haxe.UInt64>, ?puintptr:stdgo.Pointer<stdgo.GoUIntptr>, ?pfloat32:stdgo.Pointer<StdTypes.Float>, ?pfloat64:stdgo.Pointer<StdTypes.Float>, ?string:String, ?pstring:stdgo.Pointer<String>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>, ?mapP:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>>, ?pmap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>, ?pmapP:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.Small>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>, ?nilMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json.Small>, ?slice:Array<stdgo._internal.encoding.json.Json.Small>, ?sliceP:Array<stdgo._internal.encoding.json.Json.Small>, ?pslice:Array<stdgo._internal.encoding.json.Json.Small>, ?psliceP:Array<stdgo._internal.encoding.json.Json.Small>, ?emptySlice:Array<stdgo._internal.encoding.json.Json.Small>, ?nilSlice:Array<stdgo._internal.encoding.json.Json.Small>, ?stringSlice:Array<String>, ?byteSlice:Array<std.UInt>, ?small:stdgo._internal.encoding.json.Json.Small, ?psmall:stdgo._internal.encoding.json.Json.Small, ?ppsmall:stdgo._internal.encoding.json.Json.Small, ?interface_:stdgo.AnyInterface, ?pinterface:stdgo.AnyInterface, ?_unexported:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.All(
bool_,
int_,
int8,
int16,
int32,
int64,
uint,
uint8,
uint16,
uint32,
uint64,
uintptr,
float32,
float64,
foo,
foo2,
intStr,
uintptrStr,
pbool,
pint,
pint8,
pint16,
pint32,
pint64,
puint,
puint8,
puint16,
puint32,
puint64,
puintptr,
pfloat32,
pfloat64,
string,
pstring,
map_,
mapP,
pmap,
pmapP,
emptyMap,
nilMap,
([for (i in slice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.Small>),
([for (i in sliceP) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json.Small>>),
pslice,
psliceP,
([for (i in emptySlice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.Small>),
([for (i in nilSlice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.Small>),
([for (i in stringSlice) i] : stdgo.Slice<stdgo.GoString>),
([for (i in byteSlice) i] : stdgo.Slice<stdgo.GoUInt8>),
small,
psmall,
ppsmall,
interface_,
pinterface,
_unexported);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Small(stdgo._internal.encoding.json.Json.Small) from stdgo._internal.encoding.json.Json.Small to stdgo._internal.encoding.json.Json.Small {
    public var tag(get, set) : String;
    function get_tag():String return this.tag;
    function set_tag(v:String):String {
        this.tag = v;
        return v;
    }
    public function new(?tag:String) this = new stdgo._internal.encoding.json.Json.Small(tag);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract NullTest(stdgo._internal.encoding.json.Json.NullTest) from stdgo._internal.encoding.json.Json.NullTest to stdgo._internal.encoding.json.Json.NullTest {
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var int_(get, set) : StdTypes.Int;
    function get_int_():StdTypes.Int return this.int_;
    function set_int_(v:StdTypes.Int):StdTypes.Int {
        this.int_ = v;
        return v;
    }
    public var int8(get, set) : StdTypes.Int;
    function get_int8():StdTypes.Int return this.int8;
    function set_int8(v:StdTypes.Int):StdTypes.Int {
        this.int8 = v;
        return v;
    }
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = v;
        return v;
    }
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = v;
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = v;
        return v;
    }
    public var uint(get, set) : std.UInt;
    function get_uint():std.UInt return this.uint;
    function set_uint(v:std.UInt):std.UInt {
        this.uint = v;
        return v;
    }
    public var uint8(get, set) : std.UInt;
    function get_uint8():std.UInt return this.uint8;
    function set_uint8(v:std.UInt):std.UInt {
        this.uint8 = v;
        return v;
    }
    public var uint16(get, set) : std.UInt;
    function get_uint16():std.UInt return this.uint16;
    function set_uint16(v:std.UInt):std.UInt {
        this.uint16 = v;
        return v;
    }
    public var uint32(get, set) : std.UInt;
    function get_uint32():std.UInt return this.uint32;
    function set_uint32(v:std.UInt):std.UInt {
        this.uint32 = v;
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = v;
        return v;
    }
    public var float32(get, set) : StdTypes.Float;
    function get_float32():StdTypes.Float return this.float32;
    function set_float32(v:StdTypes.Float):StdTypes.Float {
        this.float32 = v;
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = v;
        return v;
    }
    public var string(get, set) : String;
    function get_string():String return this.string;
    function set_string(v:String):String {
        this.string = v;
        return v;
    }
    public var pbool(get, set) : stdgo.Pointer<Bool>;
    function get_pbool():stdgo.Pointer<Bool> return this.pbool;
    function set_pbool(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.pbool = v;
        return v;
    }
    public var map_(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_map_():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.map_;
    function set_map_(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.map_ = v;
        return v;
    }
    public var slice(get, set) : Array<String>;
    function get_slice():Array<String> return [for (i in this.slice) i];
    function set_slice(v:Array<String>):Array<String> {
        this.slice = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var interface_(get, set) : stdgo.AnyInterface;
    function get_interface_():stdgo.AnyInterface return this.interface_;
    function set_interface_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.interface_ = v;
        return v;
    }
    public var praw(get, set) : stdgo._internal.encoding.json.Json.RawMessage;
    function get_praw():stdgo._internal.encoding.json.Json.RawMessage return this.praw;
    function set_praw(v:stdgo._internal.encoding.json.Json.RawMessage):stdgo._internal.encoding.json.Json.RawMessage {
        this.praw = v;
        return v;
    }
    public var ptime(get, set) : stdgo._internal.time.Time.Time;
    function get_ptime():stdgo._internal.time.Time.Time return this.ptime;
    function set_ptime(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        this.ptime = v;
        return v;
    }
    public var pbigInt(get, set) : stdgo._internal.math.big.Big.Int_;
    function get_pbigInt():stdgo._internal.math.big.Big.Int_ return this.pbigInt;
    function set_pbigInt(v:stdgo._internal.math.big.Big.Int_):stdgo._internal.math.big.Big.Int_ {
        this.pbigInt = v;
        return v;
    }
    public var ptext(get, set) : stdgo._internal.encoding.json.Json.MustNotUnmarshalText;
    function get_ptext():stdgo._internal.encoding.json.Json.MustNotUnmarshalText return this.ptext;
    function set_ptext(v:stdgo._internal.encoding.json.Json.MustNotUnmarshalText):stdgo._internal.encoding.json.Json.MustNotUnmarshalText {
        this.ptext = v;
        return v;
    }
    public var pbuffer(get, set) : stdgo._internal.bytes.Bytes.Buffer;
    function get_pbuffer():stdgo._internal.bytes.Bytes.Buffer return this.pbuffer;
    function set_pbuffer(v:stdgo._internal.bytes.Bytes.Buffer):stdgo._internal.bytes.Bytes.Buffer {
        this.pbuffer = v;
        return v;
    }
    public var pstruct(get, set) : T_unquotedValue;
    function get_pstruct():T_unquotedValue return this.pstruct;
    function set_pstruct(v:T_unquotedValue):T_unquotedValue {
        this.pstruct = v;
        return v;
    }
    public var raw(get, set) : stdgo._internal.encoding.json.Json.RawMessage;
    function get_raw():stdgo._internal.encoding.json.Json.RawMessage return this.raw;
    function set_raw(v:stdgo._internal.encoding.json.Json.RawMessage):stdgo._internal.encoding.json.Json.RawMessage {
        this.raw = v;
        return v;
    }
    public var time(get, set) : stdgo._internal.time.Time.Time;
    function get_time():stdgo._internal.time.Time.Time return this.time;
    function set_time(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        this.time = v;
        return v;
    }
    public var bigInt(get, set) : stdgo._internal.math.big.Big.Int_;
    function get_bigInt():stdgo._internal.math.big.Big.Int_ return this.bigInt;
    function set_bigInt(v:stdgo._internal.math.big.Big.Int_):stdgo._internal.math.big.Big.Int_ {
        this.bigInt = v;
        return v;
    }
    public var text(get, set) : stdgo._internal.encoding.json.Json.MustNotUnmarshalText;
    function get_text():stdgo._internal.encoding.json.Json.MustNotUnmarshalText return this.text;
    function set_text(v:stdgo._internal.encoding.json.Json.MustNotUnmarshalText):stdgo._internal.encoding.json.Json.MustNotUnmarshalText {
        this.text = v;
        return v;
    }
    public var buffer(get, set) : stdgo._internal.bytes.Bytes.Buffer;
    function get_buffer():stdgo._internal.bytes.Bytes.Buffer return this.buffer;
    function set_buffer(v:stdgo._internal.bytes.Bytes.Buffer):stdgo._internal.bytes.Bytes.Buffer {
        this.buffer = v;
        return v;
    }
    public var struct_(get, set) : T_unquotedValue;
    function get_struct_():T_unquotedValue return this.struct_;
    function set_struct_(v:T_unquotedValue):T_unquotedValue {
        this.struct_ = v;
        return v;
    }
    public function new(?bool_:Bool, ?int_:StdTypes.Int, ?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint:std.UInt, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?string:String, ?pbool:stdgo.Pointer<Bool>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?slice:Array<String>, ?interface_:stdgo.AnyInterface, ?praw:stdgo._internal.encoding.json.Json.RawMessage, ?ptime:stdgo._internal.time.Time.Time, ?pbigInt:stdgo._internal.math.big.Big.Int_, ?ptext:stdgo._internal.encoding.json.Json.MustNotUnmarshalText, ?pbuffer:stdgo._internal.bytes.Bytes.Buffer, ?pstruct:T_unquotedValue, ?raw:stdgo._internal.encoding.json.Json.RawMessage, ?time:stdgo._internal.time.Time.Time, ?bigInt:stdgo._internal.math.big.Big.Int_, ?text:stdgo._internal.encoding.json.Json.MustNotUnmarshalText, ?buffer:stdgo._internal.bytes.Bytes.Buffer, ?struct_:T_unquotedValue) this = new stdgo._internal.encoding.json.Json.NullTest(
bool_,
int_,
int8,
int16,
int32,
int64,
uint,
uint8,
uint16,
uint32,
uint64,
float32,
float64,
string,
pbool,
map_,
([for (i in slice) i] : stdgo.Slice<stdgo.GoString>),
interface_,
praw,
ptime,
pbigInt,
ptext,
pbuffer,
pstruct,
raw,
time,
bigInt,
text,
buffer,
struct_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalJSON_static_extension) abstract MustNotUnmarshalJSON(stdgo._internal.encoding.json.Json.MustNotUnmarshalJSON) from stdgo._internal.encoding.json.Json.MustNotUnmarshalJSON to stdgo._internal.encoding.json.Json.MustNotUnmarshalJSON {
    public function new() this = new stdgo._internal.encoding.json.Json.MustNotUnmarshalJSON();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalText_static_extension) abstract MustNotUnmarshalText(stdgo._internal.encoding.json.Json.MustNotUnmarshalText) from stdgo._internal.encoding.json.Json.MustNotUnmarshalText to stdgo._internal.encoding.json.Json.MustNotUnmarshalText {
    public function new() this = new stdgo._internal.encoding.json.Json.MustNotUnmarshalText();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_unexportedFields(stdgo._internal.encoding.json.Json.T_unexportedFields) from stdgo._internal.encoding.json.Json.T_unexportedFields to stdgo._internal.encoding.json.Json.T_unexportedFields {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get__m():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this._m = v;
        return v;
    }
    public var _m2(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get__m2():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this._m2;
    function set__m2(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this._m2 = v;
        return v;
    }
    public var _s(get, set) : Array<StdTypes.Int>;
    function get__s():Array<StdTypes.Int> return [for (i in this._s) i];
    function set__s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._s = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?name:String, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?_m2:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?_s:Array<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json.T_unexportedFields(name, _m, _m2, ([for (i in _s) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_unmarshalPanic_static_extension) abstract T_unmarshalPanic(stdgo._internal.encoding.json.Json.T_unmarshalPanic) from stdgo._internal.encoding.json.Json.T_unmarshalPanic to stdgo._internal.encoding.json.Json.T_unmarshalPanic {
    public function new() this = new stdgo._internal.encoding.json.Json.T_unmarshalPanic();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnsupportedTypeError_static_extension) abstract UnsupportedTypeError(stdgo._internal.encoding.json.Json.UnsupportedTypeError) from stdgo._internal.encoding.json.Json.UnsupportedTypeError to stdgo._internal.encoding.json.Json.UnsupportedTypeError {
    public var type(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get_type():stdgo._internal.reflect.Reflect.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect.Type_) this = new stdgo._internal.encoding.json.Json.UnsupportedTypeError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnsupportedValueError_static_extension) abstract UnsupportedValueError(stdgo._internal.encoding.json.Json.UnsupportedValueError) from stdgo._internal.encoding.json.Json.UnsupportedValueError to stdgo._internal.encoding.json.Json.UnsupportedValueError {
    public var value(get, set) : stdgo._internal.reflect.Reflect.Value;
    function get_value():stdgo._internal.reflect.Reflect.Value return this.value;
    function set_value(v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        this.value = v;
        return v;
    }
    public var str(get, set) : String;
    function get_str():String return this.str;
    function set_str(v:String):String {
        this.str = v;
        return v;
    }
    public function new(?value:stdgo._internal.reflect.Reflect.Value, ?str:String) this = new stdgo._internal.encoding.json.Json.UnsupportedValueError(value, str);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.InvalidUTF8Error_static_extension) abstract InvalidUTF8Error(stdgo._internal.encoding.json.Json.InvalidUTF8Error) from stdgo._internal.encoding.json.Json.InvalidUTF8Error to stdgo._internal.encoding.json.Json.InvalidUTF8Error {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json.InvalidUTF8Error(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.MarshalerError_static_extension) abstract MarshalerError(stdgo._internal.encoding.json.Json.MarshalerError) from stdgo._internal.encoding.json.Json.MarshalerError to stdgo._internal.encoding.json.Json.MarshalerError {
    public var type(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get_type():stdgo._internal.reflect.Reflect.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this.type = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public var _sourceFunc(get, set) : String;
    function get__sourceFunc():String return this._sourceFunc;
    function set__sourceFunc(v:String):String {
        this._sourceFunc = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect.Type_, ?err:stdgo.Error, ?_sourceFunc:String) this = new stdgo._internal.encoding.json.Json.MarshalerError(type, err, _sourceFunc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_encodeState_static_extension) abstract T_encodeState(stdgo._internal.encoding.json.Json.T_encodeState) from stdgo._internal.encoding.json.Json.T_encodeState to stdgo._internal.encoding.json.Json.T_encodeState {
    public var buffer(get, set) : stdgo._internal.bytes.Bytes.Buffer;
    function get_buffer():stdgo._internal.bytes.Bytes.Buffer return this.buffer;
    function set_buffer(v:stdgo._internal.bytes.Bytes.Buffer):stdgo._internal.bytes.Bytes.Buffer {
        this.buffer = v;
        return v;
    }
    public var _ptrLevel(get, set) : std.UInt;
    function get__ptrLevel():std.UInt return this._ptrLevel;
    function set__ptrLevel(v:std.UInt):std.UInt {
        this._ptrLevel = v;
        return v;
    }
    public var _ptrSeen(get, set) : stdgo.GoMap<stdgo.AnyInterface, T_unquotedValue>;
    function get__ptrSeen():stdgo.GoMap<stdgo.AnyInterface, T_unquotedValue> return this._ptrSeen;
    function set__ptrSeen(v:stdgo.GoMap<stdgo.AnyInterface, T_unquotedValue>):stdgo.GoMap<stdgo.AnyInterface, T_unquotedValue> {
        this._ptrSeen = v;
        return v;
    }
    public function new(?buffer:stdgo._internal.bytes.Bytes.Buffer, ?_ptrLevel:std.UInt, ?_ptrSeen:stdgo.GoMap<stdgo.AnyInterface, T_unquotedValue>) this = new stdgo._internal.encoding.json.Json.T_encodeState(buffer, _ptrLevel, _ptrSeen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_jsonError_static_extension) abstract T_jsonError(stdgo._internal.encoding.json.Json.T_jsonError) from stdgo._internal.encoding.json.Json.T_jsonError to stdgo._internal.encoding.json.Json.T_jsonError {
    public var _error(get, set) : stdgo.Error;
    function get__error():stdgo.Error return this._error;
    function set__error(v:stdgo.Error):stdgo.Error {
        this._error = v;
        return v;
    }
    public function new(?_error:stdgo.Error) this = new stdgo._internal.encoding.json.Json.T_jsonError(_error);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_encOpts(stdgo._internal.encoding.json.Json.T_encOpts) from stdgo._internal.encoding.json.Json.T_encOpts to stdgo._internal.encoding.json.Json.T_encOpts {
    public var _quoted(get, set) : Bool;
    function get__quoted():Bool return this._quoted;
    function set__quoted(v:Bool):Bool {
        this._quoted = v;
        return v;
    }
    public var _escapeHTML(get, set) : Bool;
    function get__escapeHTML():Bool return this._escapeHTML;
    function set__escapeHTML(v:Bool):Bool {
        this._escapeHTML = v;
        return v;
    }
    public function new(?_quoted:Bool, ?_escapeHTML:Bool) this = new stdgo._internal.encoding.json.Json.T_encOpts(_quoted, _escapeHTML);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_structEncoder_static_extension) abstract T_structEncoder(stdgo._internal.encoding.json.Json.T_structEncoder) from stdgo._internal.encoding.json.Json.T_structEncoder to stdgo._internal.encoding.json.Json.T_structEncoder {
    public var _fields(get, set) : stdgo._internal.encoding.json.Json.T_structFields;
    function get__fields():stdgo._internal.encoding.json.Json.T_structFields return this._fields;
    function set__fields(v:stdgo._internal.encoding.json.Json.T_structFields):stdgo._internal.encoding.json.Json.T_structFields {
        this._fields = v;
        return v;
    }
    public function new(?_fields:stdgo._internal.encoding.json.Json.T_structFields) this = new stdgo._internal.encoding.json.Json.T_structEncoder(_fields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_structFields(stdgo._internal.encoding.json.Json.T_structFields) from stdgo._internal.encoding.json.Json.T_structFields to stdgo._internal.encoding.json.Json.T_structFields {
    public var _list(get, set) : Array<stdgo._internal.encoding.json.Json.T_field>;
    function get__list():Array<stdgo._internal.encoding.json.Json.T_field> return [for (i in this._list) i];
    function set__list(v:Array<stdgo._internal.encoding.json.Json.T_field>):Array<stdgo._internal.encoding.json.Json.T_field> {
        this._list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.T_field>);
        return v;
    }
    public var _byExactName(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>>;
    function get__byExactName():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>> return this._byExactName;
    function set__byExactName(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>> {
        this._byExactName = v;
        return v;
    }
    public var _byFoldedName(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>>;
    function get__byFoldedName():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>> return this._byFoldedName;
    function set__byFoldedName(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>> {
        this._byFoldedName = v;
        return v;
    }
    public function new(?_list:Array<stdgo._internal.encoding.json.Json.T_field>, ?_byExactName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>>, ?_byFoldedName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json.T_field>>) this = new stdgo._internal.encoding.json.Json.T_structFields(([for (i in _list) i] : stdgo.Slice<stdgo._internal.encoding.json.Json.T_field>), _byExactName, _byFoldedName);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_mapEncoder_static_extension) abstract T_mapEncoder(stdgo._internal.encoding.json.Json.T_mapEncoder) from stdgo._internal.encoding.json.Json.T_mapEncoder to stdgo._internal.encoding.json.Json.T_mapEncoder {
    public var _elemEnc(get, set) : stdgo._internal.encoding.json.Json.T_encoderFunc;
    function get__elemEnc():stdgo._internal.encoding.json.Json.T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:stdgo._internal.encoding.json.Json.T_encoderFunc):stdgo._internal.encoding.json.Json.T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:stdgo._internal.encoding.json.Json.T_encoderFunc) this = new stdgo._internal.encoding.json.Json.T_mapEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_sliceEncoder_static_extension) abstract T_sliceEncoder(stdgo._internal.encoding.json.Json.T_sliceEncoder) from stdgo._internal.encoding.json.Json.T_sliceEncoder to stdgo._internal.encoding.json.Json.T_sliceEncoder {
    public var _arrayEnc(get, set) : stdgo._internal.encoding.json.Json.T_encoderFunc;
    function get__arrayEnc():stdgo._internal.encoding.json.Json.T_encoderFunc return this._arrayEnc;
    function set__arrayEnc(v:stdgo._internal.encoding.json.Json.T_encoderFunc):stdgo._internal.encoding.json.Json.T_encoderFunc {
        this._arrayEnc = v;
        return v;
    }
    public function new(?_arrayEnc:stdgo._internal.encoding.json.Json.T_encoderFunc) this = new stdgo._internal.encoding.json.Json.T_sliceEncoder(_arrayEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_arrayEncoder_static_extension) abstract T_arrayEncoder(stdgo._internal.encoding.json.Json.T_arrayEncoder) from stdgo._internal.encoding.json.Json.T_arrayEncoder to stdgo._internal.encoding.json.Json.T_arrayEncoder {
    public var _elemEnc(get, set) : stdgo._internal.encoding.json.Json.T_encoderFunc;
    function get__elemEnc():stdgo._internal.encoding.json.Json.T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:stdgo._internal.encoding.json.Json.T_encoderFunc):stdgo._internal.encoding.json.Json.T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:stdgo._internal.encoding.json.Json.T_encoderFunc) this = new stdgo._internal.encoding.json.Json.T_arrayEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_ptrEncoder_static_extension) abstract T_ptrEncoder(stdgo._internal.encoding.json.Json.T_ptrEncoder) from stdgo._internal.encoding.json.Json.T_ptrEncoder to stdgo._internal.encoding.json.Json.T_ptrEncoder {
    public var _elemEnc(get, set) : stdgo._internal.encoding.json.Json.T_encoderFunc;
    function get__elemEnc():stdgo._internal.encoding.json.Json.T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:stdgo._internal.encoding.json.Json.T_encoderFunc):stdgo._internal.encoding.json.Json.T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:stdgo._internal.encoding.json.Json.T_encoderFunc) this = new stdgo._internal.encoding.json.Json.T_ptrEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_condAddrEncoder_static_extension) abstract T_condAddrEncoder(stdgo._internal.encoding.json.Json.T_condAddrEncoder) from stdgo._internal.encoding.json.Json.T_condAddrEncoder to stdgo._internal.encoding.json.Json.T_condAddrEncoder {
    public var _canAddrEnc(get, set) : stdgo._internal.encoding.json.Json.T_encoderFunc;
    function get__canAddrEnc():stdgo._internal.encoding.json.Json.T_encoderFunc return this._canAddrEnc;
    function set__canAddrEnc(v:stdgo._internal.encoding.json.Json.T_encoderFunc):stdgo._internal.encoding.json.Json.T_encoderFunc {
        this._canAddrEnc = v;
        return v;
    }
    public var _elseEnc(get, set) : stdgo._internal.encoding.json.Json.T_encoderFunc;
    function get__elseEnc():stdgo._internal.encoding.json.Json.T_encoderFunc return this._elseEnc;
    function set__elseEnc(v:stdgo._internal.encoding.json.Json.T_encoderFunc):stdgo._internal.encoding.json.Json.T_encoderFunc {
        this._elseEnc = v;
        return v;
    }
    public function new(?_canAddrEnc:stdgo._internal.encoding.json.Json.T_encoderFunc, ?_elseEnc:stdgo._internal.encoding.json.Json.T_encoderFunc) this = new stdgo._internal.encoding.json.Json.T_condAddrEncoder(_canAddrEnc, _elseEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_reflectWithString_static_extension) abstract T_reflectWithString(stdgo._internal.encoding.json.Json.T_reflectWithString) from stdgo._internal.encoding.json.Json.T_reflectWithString to stdgo._internal.encoding.json.Json.T_reflectWithString {
    public var _k(get, set) : stdgo._internal.reflect.Reflect.Value;
    function get__k():stdgo._internal.reflect.Reflect.Value return this._k;
    function set__k(v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        this._k = v;
        return v;
    }
    public var _v(get, set) : stdgo._internal.reflect.Reflect.Value;
    function get__v():stdgo._internal.reflect.Reflect.Value return this._v;
    function set__v(v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        this._v = v;
        return v;
    }
    public var _ks(get, set) : String;
    function get__ks():String return this._ks;
    function set__ks(v:String):String {
        this._ks = v;
        return v;
    }
    public function new(?_k:stdgo._internal.reflect.Reflect.Value, ?_v:stdgo._internal.reflect.Reflect.Value, ?_ks:String) this = new stdgo._internal.encoding.json.Json.T_reflectWithString(_k, _v, _ks);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_field(stdgo._internal.encoding.json.Json.T_field) from stdgo._internal.encoding.json.Json.T_field to stdgo._internal.encoding.json.Json.T_field {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _nameBytes(get, set) : Array<std.UInt>;
    function get__nameBytes():Array<std.UInt> return [for (i in this._nameBytes) i];
    function set__nameBytes(v:Array<std.UInt>):Array<std.UInt> {
        this._nameBytes = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nameNonEsc(get, set) : String;
    function get__nameNonEsc():String return this._nameNonEsc;
    function set__nameNonEsc(v:String):String {
        this._nameNonEsc = v;
        return v;
    }
    public var _nameEscHTML(get, set) : String;
    function get__nameEscHTML():String return this._nameEscHTML;
    function set__nameEscHTML(v:String):String {
        this._nameEscHTML = v;
        return v;
    }
    public var _tag(get, set) : Bool;
    function get__tag():Bool return this._tag;
    function set__tag(v:Bool):Bool {
        this._tag = v;
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _typ(get, set) : stdgo._internal.reflect.Reflect.Type_;
    function get__typ():stdgo._internal.reflect.Reflect.Type_ return this._typ;
    function set__typ(v:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Type_ {
        this._typ = v;
        return v;
    }
    public var _omitEmpty(get, set) : Bool;
    function get__omitEmpty():Bool return this._omitEmpty;
    function set__omitEmpty(v:Bool):Bool {
        this._omitEmpty = v;
        return v;
    }
    public var _quoted(get, set) : Bool;
    function get__quoted():Bool return this._quoted;
    function set__quoted(v:Bool):Bool {
        this._quoted = v;
        return v;
    }
    public var _encoder(get, set) : stdgo._internal.encoding.json.Json.T_encoderFunc;
    function get__encoder():stdgo._internal.encoding.json.Json.T_encoderFunc return this._encoder;
    function set__encoder(v:stdgo._internal.encoding.json.Json.T_encoderFunc):stdgo._internal.encoding.json.Json.T_encoderFunc {
        this._encoder = v;
        return v;
    }
    public function new(?_name:String, ?_nameBytes:Array<std.UInt>, ?_nameNonEsc:String, ?_nameEscHTML:String, ?_tag:Bool, ?_index:Array<StdTypes.Int>, ?_typ:stdgo._internal.reflect.Reflect.Type_, ?_omitEmpty:Bool, ?_quoted:Bool, ?_encoder:stdgo._internal.encoding.json.Json.T_encoderFunc) this = new stdgo._internal.encoding.json.Json.T_field(_name, ([for (i in _nameBytes) i] : stdgo.Slice<stdgo.GoUInt8>), _nameNonEsc, _nameEscHTML, _tag, ([for (i in _index) i] : stdgo.Slice<stdgo.GoInt>), _typ, _omitEmpty, _quoted, _encoder);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Optionals(stdgo._internal.encoding.json.Json.Optionals) from stdgo._internal.encoding.json.Json.Optionals to stdgo._internal.encoding.json.Json.Optionals {
    public var sr(get, set) : String;
    function get_sr():String return this.sr;
    function set_sr(v:String):String {
        this.sr = v;
        return v;
    }
    public var so(get, set) : String;
    function get_so():String return this.so;
    function set_so(v:String):String {
        this.so = v;
        return v;
    }
    public var sw(get, set) : String;
    function get_sw():String return this.sw;
    function set_sw(v:String):String {
        this.sw = v;
        return v;
    }
    public var ir(get, set) : StdTypes.Int;
    function get_ir():StdTypes.Int return this.ir;
    function set_ir(v:StdTypes.Int):StdTypes.Int {
        this.ir = v;
        return v;
    }
    public var io(get, set) : StdTypes.Int;
    function get_io():StdTypes.Int return this.io;
    function set_io(v:StdTypes.Int):StdTypes.Int {
        this.io = v;
        return v;
    }
    public var slr(get, set) : Array<String>;
    function get_slr():Array<String> return [for (i in this.slr) i];
    function set_slr(v:Array<String>):Array<String> {
        this.slr = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var slo(get, set) : Array<String>;
    function get_slo():Array<String> return [for (i in this.slo) i];
    function set_slo(v:Array<String>):Array<String> {
        this.slo = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var mr(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get_mr():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this.mr;
    function set_mr(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this.mr = v;
        return v;
    }
    public var mo(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get_mo():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this.mo;
    function set_mo(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this.mo = v;
        return v;
    }
    public var fr(get, set) : StdTypes.Float;
    function get_fr():StdTypes.Float return this.fr;
    function set_fr(v:StdTypes.Float):StdTypes.Float {
        this.fr = v;
        return v;
    }
    public var fo(get, set) : StdTypes.Float;
    function get_fo():StdTypes.Float return this.fo;
    function set_fo(v:StdTypes.Float):StdTypes.Float {
        this.fo = v;
        return v;
    }
    public var br(get, set) : Bool;
    function get_br():Bool return this.br;
    function set_br(v:Bool):Bool {
        this.br = v;
        return v;
    }
    public var bo(get, set) : Bool;
    function get_bo():Bool return this.bo;
    function set_bo(v:Bool):Bool {
        this.bo = v;
        return v;
    }
    public var ur(get, set) : std.UInt;
    function get_ur():std.UInt return this.ur;
    function set_ur(v:std.UInt):std.UInt {
        this.ur = v;
        return v;
    }
    public var uo(get, set) : std.UInt;
    function get_uo():std.UInt return this.uo;
    function set_uo(v:std.UInt):std.UInt {
        this.uo = v;
        return v;
    }
    public var str(get, set) : T_unquotedValue;
    function get_str():T_unquotedValue return this.str;
    function set_str(v:T_unquotedValue):T_unquotedValue {
        this.str = v;
        return v;
    }
    public var sto(get, set) : T_unquotedValue;
    function get_sto():T_unquotedValue return this.sto;
    function set_sto(v:T_unquotedValue):T_unquotedValue {
        this.sto = v;
        return v;
    }
    public function new(?sr:String, ?so:String, ?sw:String, ?ir:StdTypes.Int, ?io:StdTypes.Int, ?slr:Array<String>, ?slo:Array<String>, ?mr:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?mo:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?fr:StdTypes.Float, ?fo:StdTypes.Float, ?br:Bool, ?bo:Bool, ?ur:std.UInt, ?uo:std.UInt, ?str:T_unquotedValue, ?sto:T_unquotedValue) this = new stdgo._internal.encoding.json.Json.Optionals(
sr,
so,
sw,
ir,
io,
([for (i in slr) i] : stdgo.Slice<stdgo.GoString>),
([for (i in slo) i] : stdgo.Slice<stdgo.GoString>),
mr,
mo,
fr,
fo,
br,
bo,
ur,
uo,
str,
sto);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract StringTag(stdgo._internal.encoding.json.Json.StringTag) from stdgo._internal.encoding.json.Json.StringTag to stdgo._internal.encoding.json.Json.StringTag {
    public var boolStr(get, set) : Bool;
    function get_boolStr():Bool return this.boolStr;
    function set_boolStr(v:Bool):Bool {
        this.boolStr = v;
        return v;
    }
    public var intStr(get, set) : haxe.Int64;
    function get_intStr():haxe.Int64 return this.intStr;
    function set_intStr(v:haxe.Int64):haxe.Int64 {
        this.intStr = v;
        return v;
    }
    public var uintptrStr(get, set) : stdgo.GoUIntptr;
    function get_uintptrStr():stdgo.GoUIntptr return this.uintptrStr;
    function set_uintptrStr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptrStr = v;
        return v;
    }
    public var strStr(get, set) : String;
    function get_strStr():String return this.strStr;
    function set_strStr(v:String):String {
        this.strStr = v;
        return v;
    }
    public var numberStr(get, set) : stdgo._internal.encoding.json.Json.Number;
    function get_numberStr():stdgo._internal.encoding.json.Json.Number return this.numberStr;
    function set_numberStr(v:stdgo._internal.encoding.json.Json.Number):stdgo._internal.encoding.json.Json.Number {
        this.numberStr = v;
        return v;
    }
    public function new(?boolStr:Bool, ?intStr:haxe.Int64, ?uintptrStr:stdgo.GoUIntptr, ?strStr:String, ?numberStr:stdgo._internal.encoding.json.Json.Number) this = new stdgo._internal.encoding.json.Json.StringTag(boolStr, intStr, uintptrStr, strStr, numberStr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SamePointerNoCycle(stdgo._internal.encoding.json.Json.SamePointerNoCycle) from stdgo._internal.encoding.json.Json.SamePointerNoCycle to stdgo._internal.encoding.json.Json.SamePointerNoCycle {
    public var ptr1(get, set) : stdgo._internal.encoding.json.Json.SamePointerNoCycle;
    function get_ptr1():stdgo._internal.encoding.json.Json.SamePointerNoCycle return this.ptr1;
    function set_ptr1(v:stdgo._internal.encoding.json.Json.SamePointerNoCycle):stdgo._internal.encoding.json.Json.SamePointerNoCycle {
        this.ptr1 = v;
        return v;
    }
    public var ptr2(get, set) : stdgo._internal.encoding.json.Json.SamePointerNoCycle;
    function get_ptr2():stdgo._internal.encoding.json.Json.SamePointerNoCycle return this.ptr2;
    function set_ptr2(v:stdgo._internal.encoding.json.Json.SamePointerNoCycle):stdgo._internal.encoding.json.Json.SamePointerNoCycle {
        this.ptr2 = v;
        return v;
    }
    public function new(?ptr1:stdgo._internal.encoding.json.Json.SamePointerNoCycle, ?ptr2:stdgo._internal.encoding.json.Json.SamePointerNoCycle) this = new stdgo._internal.encoding.json.Json.SamePointerNoCycle(ptr1, ptr2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PointerCycle(stdgo._internal.encoding.json.Json.PointerCycle) from stdgo._internal.encoding.json.Json.PointerCycle to stdgo._internal.encoding.json.Json.PointerCycle {
    public var ptr(get, set) : stdgo._internal.encoding.json.Json.PointerCycle;
    function get_ptr():stdgo._internal.encoding.json.Json.PointerCycle return this.ptr;
    function set_ptr(v:stdgo._internal.encoding.json.Json.PointerCycle):stdgo._internal.encoding.json.Json.PointerCycle {
        this.ptr = v;
        return v;
    }
    public function new(?ptr:stdgo._internal.encoding.json.Json.PointerCycle) this = new stdgo._internal.encoding.json.Json.PointerCycle(ptr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PointerCycleIndirect(stdgo._internal.encoding.json.Json.PointerCycleIndirect) from stdgo._internal.encoding.json.Json.PointerCycleIndirect to stdgo._internal.encoding.json.Json.PointerCycleIndirect {
    public var ptrs(get, set) : Array<stdgo.AnyInterface>;
    function get_ptrs():Array<stdgo.AnyInterface> return [for (i in this.ptrs) i];
    function set_ptrs(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.ptrs = ([for (i in v) i] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?ptrs:Array<stdgo.AnyInterface>) this = new stdgo._internal.encoding.json.Json.PointerCycleIndirect(([for (i in ptrs) i] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract BugA(stdgo._internal.encoding.json.Json.BugA) from stdgo._internal.encoding.json.Json.BugA to stdgo._internal.encoding.json.Json.BugA {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json.BugA(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugB_static_extension) abstract BugB(stdgo._internal.encoding.json.Json.BugB) from stdgo._internal.encoding.json.Json.BugB to stdgo._internal.encoding.json.Json.BugB {
    public var bugA(get, set) : stdgo._internal.encoding.json.Json.BugA;
    function get_bugA():stdgo._internal.encoding.json.Json.BugA return this.bugA;
    function set_bugA(v:stdgo._internal.encoding.json.Json.BugA):stdgo._internal.encoding.json.Json.BugA {
        this.bugA = v;
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?bugA:stdgo._internal.encoding.json.Json.BugA, ?s:String) this = new stdgo._internal.encoding.json.Json.BugB(bugA, s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract BugC(stdgo._internal.encoding.json.Json.BugC) from stdgo._internal.encoding.json.Json.BugC to stdgo._internal.encoding.json.Json.BugC {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json.BugC(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugX_static_extension) abstract BugX(stdgo._internal.encoding.json.Json.BugX) from stdgo._internal.encoding.json.Json.BugX to stdgo._internal.encoding.json.Json.BugX {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var bugA(get, set) : stdgo._internal.encoding.json.Json.BugA;
    function get_bugA():stdgo._internal.encoding.json.Json.BugA return this.bugA;
    function set_bugA(v:stdgo._internal.encoding.json.Json.BugA):stdgo._internal.encoding.json.Json.BugA {
        this.bugA = v;
        return v;
    }
    public var bugB(get, set) : stdgo._internal.encoding.json.Json.BugB;
    function get_bugB():stdgo._internal.encoding.json.Json.BugB return this.bugB;
    function set_bugB(v:stdgo._internal.encoding.json.Json.BugB):stdgo._internal.encoding.json.Json.BugB {
        this.bugB = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?bugA:stdgo._internal.encoding.json.Json.BugA, ?bugB:stdgo._internal.encoding.json.Json.BugB) this = new stdgo._internal.encoding.json.Json.BugX(a, bugA, bugB);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract BugD(stdgo._internal.encoding.json.Json.BugD) from stdgo._internal.encoding.json.Json.BugD to stdgo._internal.encoding.json.Json.BugD {
    public var xxx(get, set) : String;
    function get_xxx():String return this.xxx;
    function set_xxx(v:String):String {
        this.xxx = v;
        return v;
    }
    public function new(?xxx:String) this = new stdgo._internal.encoding.json.Json.BugD(xxx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugY_static_extension) abstract BugY(stdgo._internal.encoding.json.Json.BugY) from stdgo._internal.encoding.json.Json.BugY to stdgo._internal.encoding.json.Json.BugY {
    public var bugA(get, set) : stdgo._internal.encoding.json.Json.BugA;
    function get_bugA():stdgo._internal.encoding.json.Json.BugA return this.bugA;
    function set_bugA(v:stdgo._internal.encoding.json.Json.BugA):stdgo._internal.encoding.json.Json.BugA {
        this.bugA = v;
        return v;
    }
    public var bugD(get, set) : stdgo._internal.encoding.json.Json.BugD;
    function get_bugD():stdgo._internal.encoding.json.Json.BugD return this.bugD;
    function set_bugD(v:stdgo._internal.encoding.json.Json.BugD):stdgo._internal.encoding.json.Json.BugD {
        this.bugD = v;
        return v;
    }
    public function new(?bugA:stdgo._internal.encoding.json.Json.BugA, ?bugD:stdgo._internal.encoding.json.Json.BugD) this = new stdgo._internal.encoding.json.Json.BugY(bugA, bugD);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugZ_static_extension) abstract BugZ(stdgo._internal.encoding.json.Json.BugZ) from stdgo._internal.encoding.json.Json.BugZ to stdgo._internal.encoding.json.Json.BugZ {
    public var bugA(get, set) : stdgo._internal.encoding.json.Json.BugA;
    function get_bugA():stdgo._internal.encoding.json.Json.BugA return this.bugA;
    function set_bugA(v:stdgo._internal.encoding.json.Json.BugA):stdgo._internal.encoding.json.Json.BugA {
        this.bugA = v;
        return v;
    }
    public var bugC(get, set) : stdgo._internal.encoding.json.Json.BugC;
    function get_bugC():stdgo._internal.encoding.json.Json.BugC return this.bugC;
    function set_bugC(v:stdgo._internal.encoding.json.Json.BugC):stdgo._internal.encoding.json.Json.BugC {
        this.bugC = v;
        return v;
    }
    public var bugY(get, set) : stdgo._internal.encoding.json.Json.BugY;
    function get_bugY():stdgo._internal.encoding.json.Json.BugY return this.bugY;
    function set_bugY(v:stdgo._internal.encoding.json.Json.BugY):stdgo._internal.encoding.json.Json.BugY {
        this.bugY = v;
        return v;
    }
    public function new(?bugA:stdgo._internal.encoding.json.Json.BugA, ?bugC:stdgo._internal.encoding.json.Json.BugC, ?bugY:stdgo._internal.encoding.json.Json.BugY) this = new stdgo._internal.encoding.json.Json.BugZ(bugA, bugC, bugY);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_marshalPanic_static_extension) abstract T_marshalPanic(stdgo._internal.encoding.json.Json.T_marshalPanic) from stdgo._internal.encoding.json.Json.T_marshalPanic to stdgo._internal.encoding.json.Json.T_marshalPanic {
    public function new() this = new stdgo._internal.encoding.json.Json.T_marshalPanic();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.SyntaxError_static_extension) abstract SyntaxError(stdgo._internal.encoding.json.Json.SyntaxError) from stdgo._internal.encoding.json.Json.SyntaxError to stdgo._internal.encoding.json.Json.SyntaxError {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = v;
        return v;
    }
    public function new(?_msg:String, ?offset:haxe.Int64) this = new stdgo._internal.encoding.json.Json.SyntaxError(_msg, offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.json.Json.T_scanner_static_extension) abstract T_scanner(stdgo._internal.encoding.json.Json.T_scanner) from stdgo._internal.encoding.json.Json.T_scanner to stdgo._internal.encoding.json.Json.T_scanner {
    public var _step(get, set) : (stdgo.Ref<stdgo._internal.encoding.json.Json.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt;
    function get__step():(stdgo.Ref<stdgo._internal.encoding.json.Json.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt return (_0, _1) -> this._step(_0, _1);
    function set__step(v:(stdgo.Ref<stdgo._internal.encoding.json.Json.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt):(stdgo.Ref<stdgo._internal.encoding.json.Json.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt {
        this._step = v;
        return v;
    }
    public var _endTop(get, set) : Bool;
    function get__endTop():Bool return this._endTop;
    function set__endTop(v:Bool):Bool {
        this._endTop = v;
        return v;
    }
    public var _parseState(get, set) : Array<StdTypes.Int>;
    function get__parseState():Array<StdTypes.Int> return [for (i in this._parseState) i];
    function set__parseState(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._parseState = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _bytes(get, set) : haxe.Int64;
    function get__bytes():haxe.Int64 return this._bytes;
    function set__bytes(v:haxe.Int64):haxe.Int64 {
        this._bytes = v;
        return v;
    }
    public function new(?_step:(stdgo.Ref<stdgo._internal.encoding.json.Json.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt, ?_endTop:Bool, ?_parseState:Array<StdTypes.Int>, ?_err:stdgo.Error, ?_bytes:haxe.Int64) this = new stdgo._internal.encoding.json.Json.T_scanner(_step, _endTop, ([for (i in _parseState) i] : stdgo.Slice<stdgo.GoInt>), _err, _bytes);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_example(stdgo._internal.encoding.json.Json.T_example) from stdgo._internal.encoding.json.Json.T_example to stdgo._internal.encoding.json.Json.T_example {
    public var _compact(get, set) : String;
    function get__compact():String return this._compact;
    function set__compact(v:String):String {
        this._compact = v;
        return v;
    }
    public var _indent(get, set) : String;
    function get__indent():String return this._indent;
    function set__indent(v:String):String {
        this._indent = v;
        return v;
    }
    public function new(?_compact:String, ?_indent:String) this = new stdgo._internal.encoding.json.Json.T_example(_compact, _indent);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_indentErrorTest(stdgo._internal.encoding.json.Json.T_indentErrorTest) from stdgo._internal.encoding.json.Json.T_indentErrorTest to stdgo._internal.encoding.json.Json.T_indentErrorTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_in:String, ?_err:stdgo.Error) this = new stdgo._internal.encoding.json.Json.T_indentErrorTest(_in, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Decoder_static_extension) abstract Decoder(stdgo._internal.encoding.json.Json.Decoder) from stdgo._internal.encoding.json.Json.Decoder to stdgo._internal.encoding.json.Json.Decoder {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _d(get, set) : stdgo._internal.encoding.json.Json.T_decodeState;
    function get__d():stdgo._internal.encoding.json.Json.T_decodeState return this._d;
    function set__d(v:stdgo._internal.encoding.json.Json.T_decodeState):stdgo._internal.encoding.json.Json.T_decodeState {
        this._d = v;
        return v;
    }
    public var _scanp(get, set) : StdTypes.Int;
    function get__scanp():StdTypes.Int return this._scanp;
    function set__scanp(v:StdTypes.Int):StdTypes.Int {
        this._scanp = v;
        return v;
    }
    public var _scanned(get, set) : haxe.Int64;
    function get__scanned():haxe.Int64 return this._scanned;
    function set__scanned(v:haxe.Int64):haxe.Int64 {
        this._scanned = v;
        return v;
    }
    public var _scan(get, set) : stdgo._internal.encoding.json.Json.T_scanner;
    function get__scan():stdgo._internal.encoding.json.Json.T_scanner return this._scan;
    function set__scan(v:stdgo._internal.encoding.json.Json.T_scanner):stdgo._internal.encoding.json.Json.T_scanner {
        this._scan = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _tokenState(get, set) : StdTypes.Int;
    function get__tokenState():StdTypes.Int return this._tokenState;
    function set__tokenState(v:StdTypes.Int):StdTypes.Int {
        this._tokenState = v;
        return v;
    }
    public var _tokenStack(get, set) : Array<StdTypes.Int>;
    function get__tokenStack():Array<StdTypes.Int> return [for (i in this._tokenStack) i];
    function set__tokenStack(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._tokenStack = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_buf:Array<std.UInt>, ?_d:stdgo._internal.encoding.json.Json.T_decodeState, ?_scanp:StdTypes.Int, ?_scanned:haxe.Int64, ?_scan:stdgo._internal.encoding.json.Json.T_scanner, ?_err:stdgo.Error, ?_tokenState:StdTypes.Int, ?_tokenStack:Array<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json.Decoder(_r, ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>), _d, _scanp, _scanned, _scan, _err, _tokenState, ([for (i in _tokenStack) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Encoder_static_extension) abstract Encoder(stdgo._internal.encoding.json.Json.Encoder) from stdgo._internal.encoding.json.Json.Encoder to stdgo._internal.encoding.json.Json.Encoder {
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _escapeHTML(get, set) : Bool;
    function get__escapeHTML():Bool return this._escapeHTML;
    function set__escapeHTML(v:Bool):Bool {
        this._escapeHTML = v;
        return v;
    }
    public var _indentBuf(get, set) : Array<std.UInt>;
    function get__indentBuf():Array<std.UInt> return [for (i in this._indentBuf) i];
    function set__indentBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._indentBuf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _indentPrefix(get, set) : String;
    function get__indentPrefix():String return this._indentPrefix;
    function set__indentPrefix(v:String):String {
        this._indentPrefix = v;
        return v;
    }
    public var _indentValue(get, set) : String;
    function get__indentValue():String return this._indentValue;
    function set__indentValue(v:String):String {
        this._indentValue = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_err:stdgo.Error, ?_escapeHTML:Bool, ?_indentBuf:Array<std.UInt>, ?_indentPrefix:String, ?_indentValue:String) this = new stdgo._internal.encoding.json.Json.Encoder(_w, _err, _escapeHTML, ([for (i in _indentBuf) i] : stdgo.Slice<stdgo.GoUInt8>), _indentPrefix, _indentValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_tokenStreamCase(stdgo._internal.encoding.json.Json.T_tokenStreamCase) from stdgo._internal.encoding.json.Json.T_tokenStreamCase to stdgo._internal.encoding.json.Json.T_tokenStreamCase {
    public var _json(get, set) : String;
    function get__json():String return this._json;
    function set__json(v:String):String {
        this._json = v;
        return v;
    }
    public var _expTokens(get, set) : Array<stdgo.AnyInterface>;
    function get__expTokens():Array<stdgo.AnyInterface> return [for (i in this._expTokens) i];
    function set__expTokens(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this._expTokens = ([for (i in v) i] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?_json:String, ?_expTokens:Array<stdgo.AnyInterface>) this = new stdgo._internal.encoding.json.Json.T_tokenStreamCase(_json, ([for (i in _expTokens) i] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_decodeThis(stdgo._internal.encoding.json.Json.T_decodeThis) from stdgo._internal.encoding.json.Json.T_decodeThis to stdgo._internal.encoding.json.Json.T_decodeThis {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = v;
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.encoding.json.Json.T_decodeThis(_v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_basicLatin2xTag(stdgo._internal.encoding.json.Json.T_basicLatin2xTag) from stdgo._internal.encoding.json.Json.T_basicLatin2xTag to stdgo._internal.encoding.json.Json.T_basicLatin2xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_basicLatin2xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_basicLatin3xTag(stdgo._internal.encoding.json.Json.T_basicLatin3xTag) from stdgo._internal.encoding.json.Json.T_basicLatin3xTag to stdgo._internal.encoding.json.Json.T_basicLatin3xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_basicLatin3xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_basicLatin4xTag(stdgo._internal.encoding.json.Json.T_basicLatin4xTag) from stdgo._internal.encoding.json.Json.T_basicLatin4xTag to stdgo._internal.encoding.json.Json.T_basicLatin4xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_basicLatin4xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_basicLatin5xTag(stdgo._internal.encoding.json.Json.T_basicLatin5xTag) from stdgo._internal.encoding.json.Json.T_basicLatin5xTag to stdgo._internal.encoding.json.Json.T_basicLatin5xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_basicLatin5xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_basicLatin6xTag(stdgo._internal.encoding.json.Json.T_basicLatin6xTag) from stdgo._internal.encoding.json.Json.T_basicLatin6xTag to stdgo._internal.encoding.json.Json.T_basicLatin6xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_basicLatin6xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_basicLatin7xTag(stdgo._internal.encoding.json.Json.T_basicLatin7xTag) from stdgo._internal.encoding.json.Json.T_basicLatin7xTag to stdgo._internal.encoding.json.Json.T_basicLatin7xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_basicLatin7xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_miscPlaneTag(stdgo._internal.encoding.json.Json.T_miscPlaneTag) from stdgo._internal.encoding.json.Json.T_miscPlaneTag to stdgo._internal.encoding.json.Json.T_miscPlaneTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_miscPlaneTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_percentSlashTag(stdgo._internal.encoding.json.Json.T_percentSlashTag) from stdgo._internal.encoding.json.Json.T_percentSlashTag to stdgo._internal.encoding.json.Json.T_percentSlashTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_percentSlashTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_punctuationTag(stdgo._internal.encoding.json.Json.T_punctuationTag) from stdgo._internal.encoding.json.Json.T_punctuationTag to stdgo._internal.encoding.json.Json.T_punctuationTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_punctuationTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_dashTag(stdgo._internal.encoding.json.Json.T_dashTag) from stdgo._internal.encoding.json.Json.T_dashTag to stdgo._internal.encoding.json.Json.T_dashTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json.T_dashTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_emptyTag(stdgo._internal.encoding.json.Json.T_emptyTag) from stdgo._internal.encoding.json.Json.T_emptyTag to stdgo._internal.encoding.json.Json.T_emptyTag {
    public var w(get, set) : String;
    function get_w():String return this.w;
    function set_w(v:String):String {
        this.w = v;
        return v;
    }
    public function new(?w:String) this = new stdgo._internal.encoding.json.Json.T_emptyTag(w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_misnamedTag(stdgo._internal.encoding.json.Json.T_misnamedTag) from stdgo._internal.encoding.json.Json.T_misnamedTag to stdgo._internal.encoding.json.Json.T_misnamedTag {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = v;
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.json.Json.T_misnamedTag(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_badFormatTag(stdgo._internal.encoding.json.Json.T_badFormatTag) from stdgo._internal.encoding.json.Json.T_badFormatTag to stdgo._internal.encoding.json.Json.T_badFormatTag {
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = v;
        return v;
    }
    public function new(?y:String) this = new stdgo._internal.encoding.json.Json.T_badFormatTag(y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_badCodeTag(stdgo._internal.encoding.json.Json.T_badCodeTag) from stdgo._internal.encoding.json.Json.T_badCodeTag to stdgo._internal.encoding.json.Json.T_badCodeTag {
    public var z(get, set) : String;
    function get_z():String return this.z;
    function set_z(v:String):String {
        this.z = v;
        return v;
    }
    public function new(?z:String) this = new stdgo._internal.encoding.json.Json.T_badCodeTag(z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_spaceTag(stdgo._internal.encoding.json.Json.T_spaceTag) from stdgo._internal.encoding.json.Json.T_spaceTag to stdgo._internal.encoding.json.Json.T_spaceTag {
    public var q(get, set) : String;
    function get_q():String return this.q;
    function set_q(v:String):String {
        this.q = v;
        return v;
    }
    public function new(?q:String) this = new stdgo._internal.encoding.json.Json.T_spaceTag(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_unicodeTag(stdgo._internal.encoding.json.Json.T_unicodeTag) from stdgo._internal.encoding.json.Json.T_unicodeTag to stdgo._internal.encoding.json.Json.T_unicodeTag {
    public var w(get, set) : String;
    function get_w():String return this.w;
    function set_w(v:String):String {
        this.w = v;
        return v;
    }
    public function new(?w:String) this = new stdgo._internal.encoding.json.Json.T_unicodeTag(w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.encoding.json.Json.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.encoding.json.Json.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.encoding.json.Json.T__struct_2;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.encoding.json.Json.T__struct_3;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.encoding.json.Json.T__struct_4;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.encoding.json.Json.T__struct_5;
class T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.encoding.json.Json.T__struct_6;
class T__struct_7_static_extension {

}
typedef T__struct_7 = stdgo._internal.encoding.json.Json.T__struct_7;
class T__struct_8_static_extension {

}
typedef T__struct_8 = stdgo._internal.encoding.json.Json.T__struct_8;
class T__struct_9_static_extension {

}
typedef T__struct_9 = stdgo._internal.encoding.json.Json.T__struct_9;
class T__struct_10_static_extension {

}
typedef T__struct_10 = stdgo._internal.encoding.json.Json.T__struct_10;
class T__struct_11_static_extension {

}
typedef T__struct_11 = stdgo._internal.encoding.json.Json.T__struct_11;
class T__struct_12_static_extension {

}
typedef T__struct_12 = stdgo._internal.encoding.json.Json.T__struct_12;
class T__struct_13_static_extension {

}
typedef T__struct_13 = stdgo._internal.encoding.json.Json.T__struct_13;
class T__struct_14_static_extension {

}
typedef T__struct_14 = stdgo._internal.encoding.json.Json.T__struct_14;
class T__struct_15_static_extension {

}
typedef T__struct_15 = stdgo._internal.encoding.json.Json.T__struct_15;
class T__struct_16_static_extension {

}
typedef T__struct_16 = stdgo._internal.encoding.json.Json.T__struct_16;
class T__struct_17_static_extension {

}
typedef T__struct_17 = stdgo._internal.encoding.json.Json.T__struct_17;
class T__struct_18_static_extension {

}
typedef T__struct_18 = stdgo._internal.encoding.json.Json.T__struct_18;
class T__struct_19_static_extension {

}
typedef T__struct_19 = stdgo._internal.encoding.json.Json.T__struct_19;
class T__struct_20_static_extension {

}
typedef T__struct_20 = stdgo._internal.encoding.json.Json.T__struct_20;
class T__struct_21_static_extension {

}
typedef T__struct_21 = stdgo._internal.encoding.json.Json.T__struct_21;
class T__struct_22_static_extension {

}
typedef T__struct_22 = stdgo._internal.encoding.json.Json.T__struct_22;
class T__struct_23_static_extension {

}
typedef T__struct_23 = stdgo._internal.encoding.json.Json.T__struct_23;
class T__struct_24_static_extension {

}
typedef T__struct_24 = stdgo._internal.encoding.json.Json.T__struct_24;
class T__struct_25_static_extension {

}
typedef T__struct_25 = stdgo._internal.encoding.json.Json.T__struct_25;
class T__struct_26_static_extension {

}
typedef T__struct_26 = stdgo._internal.encoding.json.Json.T__struct_26;
class T__struct_27_static_extension {

}
typedef T__struct_27 = stdgo._internal.encoding.json.Json.T__struct_27;
class T__struct_28_static_extension {

}
typedef T__struct_28 = stdgo._internal.encoding.json.Json.T__struct_28;
class T__struct_29_static_extension {

}
typedef T__struct_29 = stdgo._internal.encoding.json.Json.T__struct_29;
class T__struct_30_static_extension {

}
typedef T__struct_30 = stdgo._internal.encoding.json.Json.T__struct_30;
class T__struct_31_static_extension {

}
typedef T__struct_31 = stdgo._internal.encoding.json.Json.T__struct_31;
class T__struct_32_static_extension {

}
typedef T__struct_32 = stdgo._internal.encoding.json.Json.T__struct_32;
class T__struct_33_static_extension {

}
typedef T__struct_33 = stdgo._internal.encoding.json.Json.T__struct_33;
class T__struct_34_static_extension {

}
typedef T__struct_34 = stdgo._internal.encoding.json.Json.T__struct_34;
class T__struct_35_static_extension {

}
typedef T__struct_35 = stdgo._internal.encoding.json.Json.T__struct_35;
class T__struct_36_static_extension {

}
typedef T__struct_36 = stdgo._internal.encoding.json.Json.T__struct_36;
class T__struct_37_static_extension {

}
typedef T__struct_37 = stdgo._internal.encoding.json.Json.T__struct_37;
class T__struct_38_static_extension {

}
typedef T__struct_38 = stdgo._internal.encoding.json.Json.T__struct_38;
class T__struct_39_static_extension {

}
typedef T__struct_39 = stdgo._internal.encoding.json.Json.T__struct_39;
class T__struct_40_static_extension {

}
typedef T__struct_40 = stdgo._internal.encoding.json.Json.T__struct_40;
class T__struct_41_static_extension {

}
typedef T__struct_41 = stdgo._internal.encoding.json.Json.T__struct_41;
class T__struct_42_static_extension {

}
typedef T__struct_42 = stdgo._internal.encoding.json.Json.T__struct_42;
class T__struct_43_static_extension {

}
typedef T__struct_43 = stdgo._internal.encoding.json.Json.T__struct_43;
class T__struct_44_static_extension {

}
typedef T__struct_44 = stdgo._internal.encoding.json.Json.T__struct_44;
class T__struct_45_static_extension {

}
typedef T__struct_45 = stdgo._internal.encoding.json.Json.T__struct_45;
class T__struct_46_static_extension {

}
typedef T__struct_46 = stdgo._internal.encoding.json.Json.T__struct_46;
typedef Number = stdgo._internal.encoding.json.Json.Number;
typedef SS = stdgo._internal.encoding.json.Json.SS;
typedef T_u8 = stdgo._internal.encoding.json.Json.T_u8;
typedef T_u8marshal = stdgo._internal.encoding.json.Json.T_u8marshal;
typedef Embed0b = stdgo._internal.encoding.json.Json.Embed0b;
typedef Embed0c = stdgo._internal.encoding.json.Json.Embed0c;
typedef S7 = stdgo._internal.encoding.json.Json.S7;
typedef T_byteWithMarshalJSON = stdgo._internal.encoding.json.Json.T_byteWithMarshalJSON;
typedef T_byteWithPtrMarshalJSON = stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalJSON;
typedef T_byteWithMarshalText = stdgo._internal.encoding.json.Json.T_byteWithMarshalText;
typedef T_byteWithPtrMarshalText = stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalText;
typedef T_intWithMarshalJSON = stdgo._internal.encoding.json.Json.T_intWithMarshalJSON;
typedef T_intWithPtrMarshalJSON = stdgo._internal.encoding.json.Json.T_intWithPtrMarshalJSON;
typedef T_intWithMarshalText = stdgo._internal.encoding.json.Json.T_intWithMarshalText;
typedef T_intWithPtrMarshalText = stdgo._internal.encoding.json.Json.T_intWithPtrMarshalText;
typedef Time3339 = stdgo._internal.encoding.json.Json.Time3339;
typedef T_textUnmarshalerString = stdgo._internal.encoding.json.Json.T_textUnmarshalerString;
typedef T_encoderFunc = stdgo._internal.encoding.json.Json.T_encoderFunc;
typedef T_floatEncoder = stdgo._internal.encoding.json.Json.T_floatEncoder;
typedef T_byIndex = stdgo._internal.encoding.json.Json.T_byIndex;
typedef T_renamedByte = stdgo._internal.encoding.json.Json.T_renamedByte;
typedef T_renamedByteSlice = stdgo._internal.encoding.json.Json.T_renamedByteSlice;
typedef T_renamedRenamedByteSlice = stdgo._internal.encoding.json.Json.T_renamedRenamedByteSlice;
typedef RecursiveSlice = stdgo._internal.encoding.json.Json.RecursiveSlice;
typedef Ref = stdgo._internal.encoding.json.Json.Ref;
typedef Val = stdgo._internal.encoding.json.Json.Val;
typedef RefText = stdgo._internal.encoding.json.Json.RefText;
typedef ValText = stdgo._internal.encoding.json.Json.ValText;
typedef C = stdgo._internal.encoding.json.Json.C;
typedef CText = stdgo._internal.encoding.json.Json.CText;
typedef T_nilJSONMarshaler = stdgo._internal.encoding.json.Json.T_nilJSONMarshaler;
typedef T_nilTextMarshaler = stdgo._internal.encoding.json.Json.T_nilTextMarshaler;
typedef T_jsonbyte = stdgo._internal.encoding.json.Json.T_jsonbyte;
typedef T_textbyte = stdgo._internal.encoding.json.Json.T_textbyte;
typedef T_jsonint = stdgo._internal.encoding.json.Json.T_jsonint;
typedef T_textint = stdgo._internal.encoding.json.Json.T_textint;
typedef T_textfloat = stdgo._internal.encoding.json.Json.T_textfloat;
typedef RawMessage = stdgo._internal.encoding.json.Json.RawMessage;
typedef Token = stdgo._internal.encoding.json.Json.Token;
typedef Delim = stdgo._internal.encoding.json.Json.Delim;
typedef T_strMarshaler = stdgo._internal.encoding.json.Json.T_strMarshaler;
typedef T_strPtrMarshaler = stdgo._internal.encoding.json.Json.T_strPtrMarshaler;
typedef T_tagOptions = stdgo._internal.encoding.json.Json.T_tagOptions;
@:structInit abstract T_benchmarkCodeEncoderError___localname___Dummy_2370(stdgo._internal.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370) from stdgo._internal.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370 to stdgo._internal.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : stdgo._internal.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370;
    function get_next():stdgo._internal.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370 return this.next;
    function set_next(v:stdgo._internal.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370):stdgo._internal.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:stdgo._internal.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370) this = new stdgo._internal.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_benchmarkCodeMarshalError___localname___Dummy_3282(stdgo._internal.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282) from stdgo._internal.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282 to stdgo._internal.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : stdgo._internal.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282;
    function get_next():stdgo._internal.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282 return this.next;
    function set_next(v:stdgo._internal.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282):stdgo._internal.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:stdgo._internal.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282) this = new stdgo._internal.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T__benchMarshalBytesError___localname___Dummy_4406(stdgo._internal.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406) from stdgo._internal.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406 to stdgo._internal.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : stdgo._internal.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406;
    function get_next():stdgo._internal.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406 return this.next;
    function set_next(v:stdgo._internal.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406):stdgo._internal.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:stdgo._internal.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406) this = new stdgo._internal.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_benchmarkEncoderEncode___localname___T_11092(stdgo._internal.encoding.json.Json.T_benchmarkEncoderEncode___localname___T_11092) from stdgo._internal.encoding.json.Json.T_benchmarkEncoderEncode___localname___T_11092 to stdgo._internal.encoding.json.Json.T_benchmarkEncoderEncode___localname___T_11092 {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = v;
        return v;
    }
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = v;
        return v;
    }
    public function new(?x:String, ?y:String) this = new stdgo._internal.encoding.json.Json.T_benchmarkEncoderEncode___localname___T_11092(x, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testRefUnmarshal___localname___S_40168(stdgo._internal.encoding.json.Json.T_testRefUnmarshal___localname___S_40168) from stdgo._internal.encoding.json.Json.T_testRefUnmarshal___localname___S_40168 to stdgo._internal.encoding.json.Json.T_testRefUnmarshal___localname___S_40168 {
    public var r0(get, set) : stdgo._internal.encoding.json.Json.Ref;
    function get_r0():stdgo._internal.encoding.json.Json.Ref return this.r0;
    function set_r0(v:stdgo._internal.encoding.json.Json.Ref):stdgo._internal.encoding.json.Json.Ref {
        this.r0 = v;
        return v;
    }
    public var r1(get, set) : stdgo.Pointer<stdgo._internal.encoding.json.Json.Ref>;
    function get_r1():stdgo.Pointer<stdgo._internal.encoding.json.Json.Ref> return this.r1;
    function set_r1(v:stdgo.Pointer<stdgo._internal.encoding.json.Json.Ref>):stdgo.Pointer<stdgo._internal.encoding.json.Json.Ref> {
        this.r1 = v;
        return v;
    }
    public var r2(get, set) : stdgo._internal.encoding.json.Json.RefText;
    function get_r2():stdgo._internal.encoding.json.Json.RefText return this.r2;
    function set_r2(v:stdgo._internal.encoding.json.Json.RefText):stdgo._internal.encoding.json.Json.RefText {
        this.r2 = v;
        return v;
    }
    public var r3(get, set) : stdgo.Pointer<stdgo._internal.encoding.json.Json.RefText>;
    function get_r3():stdgo.Pointer<stdgo._internal.encoding.json.Json.RefText> return this.r3;
    function set_r3(v:stdgo.Pointer<stdgo._internal.encoding.json.Json.RefText>):stdgo.Pointer<stdgo._internal.encoding.json.Json.RefText> {
        this.r3 = v;
        return v;
    }
    public function new(?r0:stdgo._internal.encoding.json.Json.Ref, ?r1:stdgo.Pointer<stdgo._internal.encoding.json.Json.Ref>, ?r2:stdgo._internal.encoding.json.Json.RefText, ?r3:stdgo.Pointer<stdgo._internal.encoding.json.Json.RefText>) this = new stdgo._internal.encoding.json.Json.T_testRefUnmarshal___localname___S_40168(r0, r1, r2, r3);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testEmptyString___localname___T2_40735(stdgo._internal.encoding.json.Json.T_testEmptyString___localname___T2_40735) from stdgo._internal.encoding.json.Json.T_testEmptyString___localname___T2_40735 to stdgo._internal.encoding.json.Json.T_testEmptyString___localname___T2_40735 {
    public var number1(get, set) : StdTypes.Int;
    function get_number1():StdTypes.Int return this.number1;
    function set_number1(v:StdTypes.Int):StdTypes.Int {
        this.number1 = v;
        return v;
    }
    public var number2(get, set) : StdTypes.Int;
    function get_number2():StdTypes.Int return this.number2;
    function set_number2(v:StdTypes.Int):StdTypes.Int {
        this.number2 = v;
        return v;
    }
    public function new(?number1:StdTypes.Int, ?number2:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testEmptyString___localname___T2_40735(number1, number2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testNullString___localname___T_41259(stdgo._internal.encoding.json.Json.T_testNullString___localname___T_41259) from stdgo._internal.encoding.json.Json.T_testNullString___localname___T_41259 to stdgo._internal.encoding.json.Json.T_testNullString___localname___T_41259 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = v;
        return v;
    }
    public var c(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_c():stdgo.Pointer<StdTypes.Int> return this.c;
    function set_c(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.c = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:stdgo.Pointer<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json.T_testNullString___localname___T_41259(a, b, c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testStringKind___localname___stringKind_47067 = stdgo._internal.encoding.json.Json.T_testStringKind___localname___stringKind_47067;
typedef T_testByteKind___localname___byteKind_47617 = stdgo._internal.encoding.json.Json.T_testByteKind___localname___byteKind_47617;
typedef T_testSliceOfCustomByte___localname___Uint8_47988 = stdgo._internal.encoding.json.Json.T_testSliceOfCustomByte___localname___Uint8_47988;
@:structInit abstract T_testUnmarshalEmbeddedUnexported___localname___embed1_54365(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = v;
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testUnmarshalEmbeddedUnexported___localname___embed2_54390(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = v;
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testUnmarshalEmbeddedUnexported___localname___embed3_54415(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
    public var q(get, set) : haxe.Int64;
    function get_q():haxe.Int64 return this.q;
    function set_q(v:haxe.Int64):haxe.Int64 {
        this.q = v;
        return v;
    }
    public function new(?q:haxe.Int64) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S1_54465(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S1_54465) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S1_54465 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S1_54465 {
    public var _embed1(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = v;
        return v;
    }
    public function new(?_embed1:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S1_54465(_embed1, r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S2_54503_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S2_54503(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S2_54503) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S2_54503 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S2_54503 {
    public var _embed1(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = v;
        return v;
    }
    public function new(?_embed1:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S2_54503(_embed1, q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S3_54541_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S3_54541(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S3_54541) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S3_54541 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S3_54541 {
    public var _embed1(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = v;
        return v;
    }
    public function new(?_embed1:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S3_54541(_embed1, r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S4_54578_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S4_54578(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S4_54578) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S4_54578 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S4_54578 {
    public var _embed1(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var _embed2(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390;
    function get__embed2():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 return this._embed2;
    function set__embed2(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
        this._embed2 = v;
        return v;
    }
    public function new(?_embed1:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S4_54578(_embed1, _embed2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S5_54617_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S5_54617(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S5_54617) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S5_54617 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S5_54617 {
    public var _embed3(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415;
    function get__embed3():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 return this._embed3;
    function set__embed3(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
        this._embed3 = v;
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = v;
        return v;
    }
    public function new(?_embed3:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S5_54617(_embed3, r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S6_54655_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S6_54655(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S6_54655) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S6_54655 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S6_54655 {
    public var _embed1(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public function new(?_embed1:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S6_54655(_embed1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S7_54699_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S7_54699(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S7_54699) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S7_54699 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S7_54699 {
    public var _embed1(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var _embed2(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390;
    function get__embed2():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 return this._embed2;
    function set__embed2(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
        this._embed2 = v;
        return v;
    }
    public function new(?_embed1:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S7_54699(_embed1, _embed2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S8_54753_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S8_54753(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S8_54753) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S8_54753 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S8_54753 {
    public var _embed1(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var _embed2(get, set) : stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390;
    function get__embed2():stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 return this._embed2;
    function set__embed2(v:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390):stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
        this._embed2 = v;
        return v;
    }
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = v;
        return v;
    }
    public function new(?_embed1:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390, ?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S8_54753(_embed1, _embed2, q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S9_54837(stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S9_54837) from stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S9_54837 to stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S9_54837 {
    public var _unexportedWithMethods(get, set) : stdgo._internal.encoding.json.Json.T_unexportedWithMethods;
    function get__unexportedWithMethods():stdgo._internal.encoding.json.Json.T_unexportedWithMethods return this._unexportedWithMethods;
    function set__unexportedWithMethods(v:stdgo._internal.encoding.json.Json.T_unexportedWithMethods):stdgo._internal.encoding.json.Json.T_unexportedWithMethods {
        this._unexportedWithMethods = v;
        return v;
    }
    public function new(?_unexportedWithMethods:stdgo._internal.encoding.json.Json.T_unexportedWithMethods) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S9_54837(_unexportedWithMethods);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829(stdgo._internal.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829) from stdgo._internal.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829 to stdgo._internal.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829 {
    public var f1(get, set) : String;
    function get_f1():String return this.f1;
    function set_f1(v:String):String {
        this.f1 = v;
        return v;
    }
    public function new(?f1:String) this = new stdgo._internal.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829(f1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S1_8122(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8122) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8122 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8122 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8122(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_8148(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8148) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8148 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8148 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8148(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8174_static_extension) abstract T_testAnonymousFields___localname___S_8174(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8174) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8174 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8174 {
    public var s1(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8122;
    function get_s1():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8122 return this.s1;
    function set_s1(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8122):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8122 {
        this.s1 = v;
        return v;
    }
    public var s2(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8148;
    function get_s2():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8148 return this.s2;
    function set_s2(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8148):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8148 {
        this.s2 = v;
        return v;
    }
    public function new(?s1:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8122, ?s2:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8148) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8174(s1, s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S1_8459(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8459) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8459 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8459 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8459(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_8485(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8485) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8485 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8485 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8485(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8511_static_extension) abstract T_testAnonymousFields___localname___S_8511(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8511) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8511 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8511 {
    public var s1(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8459;
    function get_s1():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8459 return this.s1;
    function set_s1(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8459):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8459 {
        this.s1 = v;
        return v;
    }
    public var s2(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8485;
    function get_s2():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8485 return this.s2;
    function set_s2(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8485):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8485 {
        this.s2 = v;
        return v;
    }
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?s1:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S1_8459, ?s2:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_8485, ?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8511(s1, s2, _x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___myInt_8782 = stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_8782;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8796_static_extension) abstract T_testAnonymousFields___localname___S_8796(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8796) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8796 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8796 {
    public var _myInt(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_8782;
    function get__myInt():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_8782 return this._myInt;
    function set__myInt(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_8782):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_8782 {
        this._myInt = v;
        return v;
    }
    public function new(?_myInt:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_8782) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_8796(_myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___MyInt_9005 = stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9005;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9019_static_extension) abstract T_testAnonymousFields___localname___S_9019(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9019) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9019 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9019 {
    public var myInt(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9005;
    function get_myInt():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9005 return this.myInt;
    function set_myInt(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9005):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9005 {
        this.myInt = v;
        return v;
    }
    public function new(?myInt:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9005) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9019(myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___myInt_9268 = stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_9268;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9282_static_extension) abstract T_testAnonymousFields___localname___S_9282(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9282) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9282 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9282 {
    public var _myInt(get, set) : stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_9268>;
    function get__myInt():stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_9268> return this._myInt;
    function set__myInt(v:stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_9268>):stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_9268> {
        this._myInt = v;
        return v;
    }
    public function new(?_myInt:stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_9268>) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9282(_myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___MyInt_9550 = stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9550;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9564_static_extension) abstract T_testAnonymousFields___localname___S_9564(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9564) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9564 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9564 {
    public var myInt(get, set) : stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9550>;
    function get_myInt():stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9550> return this.myInt;
    function set_myInt(v:stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9550>):stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9550> {
        this.myInt = v;
        return v;
    }
    public function new(?myInt:stdgo.Pointer<stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt_9550>) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9564(myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___s1_9906(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_9906) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_9906 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_9906 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_9906(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_9932(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_9932) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_9932 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_9932 {
    public var _y(get, set) : StdTypes.Int;
    function get__y():StdTypes.Int return this._y;
    function set__y(v:StdTypes.Int):StdTypes.Int {
        this._y = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public function new(?_y:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_9932(_y, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9958_static_extension) abstract T_testAnonymousFields___localname___S_9958(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9958) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9958 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9958 {
    public var _s1(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_9906;
    function get__s1():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_9906 return this._s1;
    function set__s1(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_9906):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_9906 {
        this._s1 = v;
        return v;
    }
    public var s2(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_9932;
    function get_s2():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_9932 return this.s2;
    function set_s2(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_9932):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_9932 {
        this.s2 = v;
        return v;
    }
    public function new(?_s1:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_9906, ?s2:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_9932) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_9958(_s1, s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___s1_10314(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10314) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10314 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10314 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10314(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_10340(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_10340) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_10340 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_10340 {
    public var _y(get, set) : StdTypes.Int;
    function get__y():StdTypes.Int return this._y;
    function set__y(v:StdTypes.Int):StdTypes.Int {
        this._y = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public function new(?_y:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_10340(_y, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_10366_static_extension) abstract T_testAnonymousFields___localname___S_10366(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_10366) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_10366 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_10366 {
    public var _s1(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10314;
    function get__s1():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10314 return this._s1;
    function set__s1(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10314):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10314 {
        this._s1 = v;
        return v;
    }
    public var s2(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_10340;
    function get_s2():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_10340 return this.s2;
    function set_s2(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_10340):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_10340 {
        this.s2 = v;
        return v;
    }
    public function new(?_s1:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10314, ?s2:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_10340) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_10366(_s1, s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___MyInt1_10664 = stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt1_10664;
typedef T_testAnonymousFields___localname___MyInt2_10679 = stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt2_10679;
typedef T_testAnonymousFields___localname___myInt_10694 = stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___s2_10709_static_extension) abstract T_testAnonymousFields___localname___s2_10709(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s2_10709) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s2_10709 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s2_10709 {
    public var myInt2(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt2_10679;
    function get_myInt2():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt2_10679 return this.myInt2;
    function set_myInt2(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt2_10679):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt2_10679 {
        this.myInt2 = v;
        return v;
    }
    public var _myInt(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694;
    function get__myInt():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694 return this._myInt;
    function set__myInt(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694 {
        this._myInt = v;
        return v;
    }
    public function new(?myInt2:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt2_10679, ?_myInt:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s2_10709(myInt2, _myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___s1_10758_static_extension) abstract T_testAnonymousFields___localname___s1_10758(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10758) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10758 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10758 {
    public var myInt1(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt1_10664;
    function get_myInt1():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt1_10664 return this.myInt1;
    function set_myInt1(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt1_10664):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt1_10664 {
        this.myInt1 = v;
        return v;
    }
    public var _myInt(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694;
    function get__myInt():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694 return this._myInt;
    function set__myInt(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694 {
        this._myInt = v;
        return v;
    }
    public var _s2(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s2_10709;
    function get__s2():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s2_10709 return this._s2;
    function set__s2(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s2_10709):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s2_10709 {
        this._s2 = v;
        return v;
    }
    public function new(?myInt1:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___MyInt1_10664, ?_myInt:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694, ?_s2:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s2_10709) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10758(myInt1, _myInt, _s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_10811_static_extension) abstract T_testAnonymousFields___localname___S_10811(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_10811) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_10811 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_10811 {
    public var _s1(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10758;
    function get__s1():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10758 return this._s1;
    function set__s1(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10758):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10758 {
        this._s1 = v;
        return v;
    }
    public var _myInt(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694;
    function get__myInt():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694 return this._myInt;
    function set__myInt(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694 {
        this._myInt = v;
        return v;
    }
    public function new(?_s1:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___s1_10758, ?_myInt:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___myInt_10694) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_10811(_s1, _myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_11195(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_11195) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_11195 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_11195 {
    public var field(get, set) : String;
    function get_field():String return this.field;
    function set_field(v:String):String {
        this.field = v;
        return v;
    }
    public function new(?field:String) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_11195(field);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_11225_static_extension) abstract T_testAnonymousFields___localname___S_11225(stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_11225) from stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_11225 to stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_11225 {
    public var s2(get, set) : stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_11195;
    function get_s2():stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_11195 return this.s2;
    function set_s2(v:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_11195):stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_11195 {
        this.s2 = v;
        return v;
    }
    public function new(?s2:stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S2_11195) this = new stdgo._internal.encoding.json.Json.T_testAnonymousFields___localname___S_11225(s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testIssue10281___localname___Foo_15026(stdgo._internal.encoding.json.Json.T_testIssue10281___localname___Foo_15026) from stdgo._internal.encoding.json.Json.T_testIssue10281___localname___Foo_15026 to stdgo._internal.encoding.json.Json.T_testIssue10281___localname___Foo_15026 {
    public var n(get, set) : stdgo._internal.encoding.json.Json.Number;
    function get_n():stdgo._internal.encoding.json.Json.Number return this.n;
    function set_n(v:stdgo._internal.encoding.json.Json.Number):stdgo._internal.encoding.json.Json.Number {
        this.n = v;
        return v;
    }
    public function new(?n:stdgo._internal.encoding.json.Json.Number) this = new stdgo._internal.encoding.json.Json.T_testIssue10281___localname___Foo_15026(n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460(stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460) from stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 to stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460;
    function get_next():stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 return this.next;
    function set_next(v:stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460):stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460) this = new stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testMarshalErrorAndReuseEncodeState___localname___Data_15661(stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661) from stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 to stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = v;
        return v;
    }
    public function new(?a:String, ?i:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661(a, i);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testEncodePointerString___localname___stringPointer_16452(stdgo._internal.encoding.json.Json.T_testEncodePointerString___localname___stringPointer_16452) from stdgo._internal.encoding.json.Json.T_testEncodePointerString___localname___stringPointer_16452 to stdgo._internal.encoding.json.Json.T_testEncodePointerString___localname___stringPointer_16452 {
    public var n(get, set) : stdgo.Pointer<haxe.Int64>;
    function get_n():stdgo.Pointer<haxe.Int64> return this.n;
    function set_n(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        this.n = v;
        return v;
    }
    public function new(?n:stdgo.Pointer<haxe.Int64>) this = new stdgo._internal.encoding.json.Json.T_testEncodePointerString___localname___stringPointer_16452(n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testMarshalRawMessageValue___localname___T1_23519(stdgo._internal.encoding.json.Json.T_testMarshalRawMessageValue___localname___T1_23519) from stdgo._internal.encoding.json.Json.T_testMarshalRawMessageValue___localname___T1_23519 to stdgo._internal.encoding.json.Json.T_testMarshalRawMessageValue___localname___T1_23519 {
    public var m(get, set) : stdgo._internal.encoding.json.Json.RawMessage;
    function get_m():stdgo._internal.encoding.json.Json.RawMessage return this.m;
    function set_m(v:stdgo._internal.encoding.json.Json.RawMessage):stdgo._internal.encoding.json.Json.RawMessage {
        this.m = v;
        return v;
    }
    public function new(?m:stdgo._internal.encoding.json.Json.RawMessage) this = new stdgo._internal.encoding.json.Json.T_testMarshalRawMessageValue___localname___T1_23519(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testMarshalRawMessageValue___localname___T2_23573(stdgo._internal.encoding.json.Json.T_testMarshalRawMessageValue___localname___T2_23573) from stdgo._internal.encoding.json.Json.T_testMarshalRawMessageValue___localname___T2_23573 to stdgo._internal.encoding.json.Json.T_testMarshalRawMessageValue___localname___T2_23573 {
    public var m(get, set) : stdgo._internal.encoding.json.Json.RawMessage;
    function get_m():stdgo._internal.encoding.json.Json.RawMessage return this.m;
    function set_m(v:stdgo._internal.encoding.json.Json.RawMessage):stdgo._internal.encoding.json.Json.RawMessage {
        this.m = v;
        return v;
    }
    public function new(?m:stdgo._internal.encoding.json.Json.RawMessage) this = new stdgo._internal.encoding.json.Json.T_testMarshalRawMessageValue___localname___T2_23573(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487(stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487) from stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 to stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487;
    function get_next():stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 return this.next;
    function set_next(v:stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487):stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487) this = new stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testEncoderErrorAndReuseEncodeState___localname___Data_1733(stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733) from stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 to stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = v;
        return v;
    }
    public function new(?a:String, ?i:StdTypes.Int) this = new stdgo._internal.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733(a, i);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class UnmarshalTypeError_static_extension {
    static public function error(_e:UnmarshalTypeError):String {
        return stdgo._internal.encoding.json.Json.UnmarshalTypeError_static_extension.error(_e);
    }
}
class UnmarshalFieldError_static_extension {
    static public function error(_e:UnmarshalFieldError):String {
        return stdgo._internal.encoding.json.Json.UnmarshalFieldError_static_extension.error(_e);
    }
}
class InvalidUnmarshalError_static_extension {
    static public function error(_e:InvalidUnmarshalError):String {
        return stdgo._internal.encoding.json.Json.InvalidUnmarshalError_static_extension.error(_e);
    }
}
class T_decodeState_static_extension {
    static public function _literalInterface(_d:T_decodeState):stdgo.AnyInterface {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._literalInterface(_d);
    }
    static public function _objectInterface(_d:T_decodeState):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._objectInterface(_d);
    }
    static public function _arrayInterface(_d:T_decodeState):Array<stdgo.AnyInterface> {
        return [for (i in stdgo._internal.encoding.json.Json.T_decodeState_static_extension._arrayInterface(_d)) i];
    }
    static public function _valueInterface(_d:T_decodeState):stdgo.AnyInterface {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._valueInterface(_d);
    }
    static public function _literalStore(_d:T_decodeState, _item:Array<StdTypes.Int>, _v:stdgo._internal.reflect.Reflect.Value, _fromQuoted:Bool):stdgo.Error {
        final _item = ([for (i in _item) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._literalStore(_d, _item, _v, _fromQuoted);
    }
    static public function _convertNumber(_d:T_decodeState, _s:String):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_decodeState_static_extension._convertNumber(_d, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _object(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect.Value):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._object(_d, _v);
    }
    static public function _array(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect.Value):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._array(_d, _v);
    }
    static public function _valueQuoted(_d:T_decodeState):stdgo.AnyInterface {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._valueQuoted(_d);
    }
    static public function _value(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect.Value):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._value(_d, _v);
    }
    static public function _rescanLiteral(_d:T_decodeState):Void {
        stdgo._internal.encoding.json.Json.T_decodeState_static_extension._rescanLiteral(_d);
    }
    static public function _scanWhile(_d:T_decodeState, _op:StdTypes.Int):Void {
        stdgo._internal.encoding.json.Json.T_decodeState_static_extension._scanWhile(_d, _op);
    }
    static public function _scanNext(_d:T_decodeState):Void {
        stdgo._internal.encoding.json.Json.T_decodeState_static_extension._scanNext(_d);
    }
    static public function _skip(_d:T_decodeState):Void {
        stdgo._internal.encoding.json.Json.T_decodeState_static_extension._skip(_d);
    }
    static public function _addErrorContext(_d:T_decodeState, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._addErrorContext(_d, _err);
    }
    static public function _saveError(_d:T_decodeState, _err:stdgo.Error):Void {
        stdgo._internal.encoding.json.Json.T_decodeState_static_extension._saveError(_d, _err);
    }
    static public function _init(_d:T_decodeState, _data:Array<StdTypes.Int>):T_decodeState {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._init(_d, _data);
    }
    static public function _readIndex(_d:T_decodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._readIndex(_d);
    }
    static public function _unmarshal(_d:T_decodeState, _v:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_decodeState_static_extension._unmarshal(_d, _v);
    }
}
class T_unmarshaler_static_extension {
    static public function unmarshalJSON(_u:T_unmarshaler, _b:Array<StdTypes.Int>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_unmarshaler_static_extension.unmarshalJSON(_u, _b);
    }
}
class T_unmarshalerText_static_extension {
    static public function unmarshalText(_u:T_unmarshalerText, _b:Array<StdTypes.Int>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_unmarshalerText_static_extension.unmarshalText(_u, _b);
    }
    static public function marshalText(_u:T_unmarshalerText):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_unmarshalerText_static_extension.marshalText(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class Top_static_extension {
    public static function sub(__self__:Top, _q:stdgo._internal.image.Image.Point):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Top_static_extension.sub(__self__, _q);
    }
    public static function string(__self__:Top):String {
        return stdgo._internal.encoding.json.Json.Top_static_extension.string(__self__);
    }
    public static function mul(__self__:Top, _n:StdTypes.Int):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Top_static_extension.mul(__self__, _n);
    }
    public static function mod(__self__:Top, _r:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Top_static_extension.mod(__self__, _r);
    }
    public static function in_(__self__:Top, _r:stdgo._internal.image.Image.Rectangle):Bool {
        return stdgo._internal.encoding.json.Json.Top_static_extension.in_(__self__, _r);
    }
    public static function eq(__self__:Top, _q:stdgo._internal.image.Image.Point):Bool {
        return stdgo._internal.encoding.json.Json.Top_static_extension.eq(__self__, _q);
    }
    public static function div(__self__:Top, _n:StdTypes.Int):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Top_static_extension.div(__self__, _n);
    }
    public static function add(__self__:Top, _q:stdgo._internal.image.Image.Point):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Top_static_extension.add(__self__, _q);
    }
}
class Embed0p_static_extension {
    public static function sub(__self__:Embed0p, _q:stdgo._internal.image.Image.Point):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Embed0p_static_extension.sub(__self__, _q);
    }
    public static function string(__self__:Embed0p):String {
        return stdgo._internal.encoding.json.Json.Embed0p_static_extension.string(__self__);
    }
    public static function mul(__self__:Embed0p, _n:StdTypes.Int):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Embed0p_static_extension.mul(__self__, _n);
    }
    public static function mod(__self__:Embed0p, _r:stdgo._internal.image.Image.Rectangle):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Embed0p_static_extension.mod(__self__, _r);
    }
    public static function in_(__self__:Embed0p, _r:stdgo._internal.image.Image.Rectangle):Bool {
        return stdgo._internal.encoding.json.Json.Embed0p_static_extension.in_(__self__, _r);
    }
    public static function eq(__self__:Embed0p, _q:stdgo._internal.image.Image.Point):Bool {
        return stdgo._internal.encoding.json.Json.Embed0p_static_extension.eq(__self__, _q);
    }
    public static function div(__self__:Embed0p, _n:StdTypes.Int):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Embed0p_static_extension.div(__self__, _n);
    }
    public static function add(__self__:Embed0p, _q:stdgo._internal.image.Image.Point):stdgo._internal.image.Image.Point {
        return stdgo._internal.encoding.json.Json.Embed0p_static_extension.add(__self__, _q);
    }
}
class Embed0q_static_extension {

}
class Loop_static_extension {

}
class S5_static_extension {

}
class S8_static_extension {

}
class S10_static_extension {

}
class S11_static_extension {

}
class S12_static_extension {

}
class S13_static_extension {

}
class T_unexportedWithMethods_static_extension {
    static public function f(_:T_unexportedWithMethods):Void {
        stdgo._internal.encoding.json.Json.T_unexportedWithMethods_static_extension.f(_);
    }
}
class MustNotUnmarshalJSON_static_extension {
    static public function unmarshalJSON(_x:MustNotUnmarshalJSON, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.MustNotUnmarshalJSON_static_extension.unmarshalJSON(_x, _data);
    }
}
class MustNotUnmarshalText_static_extension {
    static public function unmarshalText(_x:MustNotUnmarshalText, _text:Array<StdTypes.Int>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.MustNotUnmarshalText_static_extension.unmarshalText(_x, _text);
    }
}
class T_unmarshalPanic_static_extension {
    static public function unmarshalJSON(_:T_unmarshalPanic, _0:Array<StdTypes.Int>):stdgo.Error {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_unmarshalPanic_static_extension.unmarshalJSON(_, _0);
    }
}
class UnsupportedTypeError_static_extension {
    static public function error(_e:UnsupportedTypeError):String {
        return stdgo._internal.encoding.json.Json.UnsupportedTypeError_static_extension.error(_e);
    }
}
class UnsupportedValueError_static_extension {
    static public function error(_e:UnsupportedValueError):String {
        return stdgo._internal.encoding.json.Json.UnsupportedValueError_static_extension.error(_e);
    }
}
class InvalidUTF8Error_static_extension {
    static public function error(_e:InvalidUTF8Error):String {
        return stdgo._internal.encoding.json.Json.InvalidUTF8Error_static_extension.error(_e);
    }
}
class MarshalerError_static_extension {
    static public function unwrap(_e:MarshalerError):stdgo.Error {
        return stdgo._internal.encoding.json.Json.MarshalerError_static_extension.unwrap(_e);
    }
    static public function error(_e:MarshalerError):String {
        return stdgo._internal.encoding.json.Json.MarshalerError_static_extension.error(_e);
    }
}
class T_encodeState_static_extension {
    static public function _reflectValue(_e:T_encodeState, _v:stdgo._internal.reflect.Reflect.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json.T_encodeState_static_extension._reflectValue(_e, _v, _opts);
    }
    static public function _error(_e:T_encodeState, _err:stdgo.Error):Void {
        stdgo._internal.encoding.json.Json.T_encodeState_static_extension._error(_e, _err);
    }
    static public function _marshal(_e:T_encodeState, _v:stdgo.AnyInterface, _opts:T_encOpts):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension._marshal(_e, _v, _opts);
    }
    public static function _tryGrowByReslice(__self__:T_encodeState, _n:StdTypes.Int):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension._tryGrowByReslice(__self__, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readSlice(__self__:T_encodeState, __0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension._readSlice(__self__, __0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _grow(__self__:T_encodeState, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension._grow(__self__, _n);
    }
    public static function _empty(__self__:T_encodeState):Bool {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension._empty(__self__);
    }
    public static function writeTo(__self__:T_encodeState, _w:stdgo._internal.io.Io.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.writeTo(__self__, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeString(__self__:T_encodeState, __0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.writeString(__self__, __0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:T_encodeState, __0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.writeRune(__self__, __0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:T_encodeState, __0:std.UInt):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension.writeByte(__self__, __0);
    }
    public static function write(__self__:T_encodeState, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.write(__self__, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:T_encodeState):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension.unreadRune(__self__);
    }
    public static function unreadByte(__self__:T_encodeState):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension.unreadByte(__self__);
    }
    public static function truncate(__self__:T_encodeState, _n:StdTypes.Int) {
        stdgo._internal.encoding.json.Json.T_encodeState_static_extension.truncate(__self__, _n);
    }
    public static function string(__self__:T_encodeState):String {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension.string(__self__);
    }
    public static function reset(__self__:T_encodeState) {
        stdgo._internal.encoding.json.Json.T_encodeState_static_extension.reset(__self__);
    }
    public static function readString(__self__:T_encodeState, __0:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.readString(__self__, __0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readRune(__self__:T_encodeState):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readFrom(__self__:T_encodeState, _r:stdgo._internal.io.Io.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.readFrom(__self__, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readBytes(__self__:T_encodeState, __0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.readBytes(__self__, __0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readByte(__self__:T_encodeState):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.readByte(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:T_encodeState, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.json.Json.T_encodeState_static_extension.read(__self__, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function next(__self__:T_encodeState, _n:StdTypes.Int):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json.T_encodeState_static_extension.next(__self__, _n)) i];
    }
    public static function len(__self__:T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension.len(__self__);
    }
    public static function grow(__self__:T_encodeState, _n:StdTypes.Int) {
        stdgo._internal.encoding.json.Json.T_encodeState_static_extension.grow(__self__, _n);
    }
    public static function cap(__self__:T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension.cap(__self__);
    }
    public static function bytes(__self__:T_encodeState):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json.T_encodeState_static_extension.bytes(__self__)) i];
    }
    public static function availableBuffer(__self__:T_encodeState):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json.T_encodeState_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json.T_encodeState_static_extension.available(__self__);
    }
}
class T_jsonError_static_extension {
    public static function error(__self__:T_jsonError):String {
        return stdgo._internal.encoding.json.Json.T_jsonError_static_extension.error(__self__);
    }
}
class T_structEncoder_static_extension {
    static public function _encode(_se:T_structEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json.T_structEncoder_static_extension._encode(_se, _e, _v, _opts);
    }
}
class T_mapEncoder_static_extension {
    static public function _encode(_me:T_mapEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json.T_mapEncoder_static_extension._encode(_me, _e, _v, _opts);
    }
}
class T_sliceEncoder_static_extension {
    static public function _encode(_se:T_sliceEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json.T_sliceEncoder_static_extension._encode(_se, _e, _v, _opts);
    }
}
class T_arrayEncoder_static_extension {
    static public function _encode(_ae:T_arrayEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json.T_arrayEncoder_static_extension._encode(_ae, _e, _v, _opts);
    }
}
class T_ptrEncoder_static_extension {
    static public function _encode(_pe:T_ptrEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json.T_ptrEncoder_static_extension._encode(_pe, _e, _v, _opts);
    }
}
class T_condAddrEncoder_static_extension {
    static public function _encode(_ce:T_condAddrEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json.T_condAddrEncoder_static_extension._encode(_ce, _e, _v, _opts);
    }
}
class T_reflectWithString_static_extension {
    static public function _resolve(_w:T_reflectWithString):stdgo.Error {
        return stdgo._internal.encoding.json.Json.T_reflectWithString_static_extension._resolve(_w);
    }
}
class BugB_static_extension {

}
class BugX_static_extension {

}
class BugY_static_extension {

}
class BugZ_static_extension {

}
class T_marshalPanic_static_extension {
    static public function marshalJSON(_:T_marshalPanic):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_marshalPanic_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class SyntaxError_static_extension {
    static public function error(_e:SyntaxError):String {
        return stdgo._internal.encoding.json.Json.SyntaxError_static_extension.error(_e);
    }
}
class T_scanner_static_extension {
    static public function _error(_s:T_scanner, _c:StdTypes.Int, _context:String):StdTypes.Int {
        return stdgo._internal.encoding.json.Json.T_scanner_static_extension._error(_s, _c, _context);
    }
    static public function _popParseState(_s:T_scanner):Void {
        stdgo._internal.encoding.json.Json.T_scanner_static_extension._popParseState(_s);
    }
    static public function _pushParseState(_s:T_scanner, _c:StdTypes.Int, _newParseState:StdTypes.Int, _successState:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.json.Json.T_scanner_static_extension._pushParseState(_s, _c, _newParseState, _successState);
    }
    static public function _eof(_s:T_scanner):StdTypes.Int {
        return stdgo._internal.encoding.json.Json.T_scanner_static_extension._eof(_s);
    }
    static public function _reset(_s:T_scanner):Void {
        stdgo._internal.encoding.json.Json.T_scanner_static_extension._reset(_s);
    }
}
class Decoder_static_extension {
    static public function inputOffset(_dec:Decoder):haxe.Int64 {
        return stdgo._internal.encoding.json.Json.Decoder_static_extension.inputOffset(_dec);
    }
    static public function _peek(_dec:Decoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.Decoder_static_extension._peek(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function more(_dec:Decoder):Bool {
        return stdgo._internal.encoding.json.Json.Decoder_static_extension.more(_dec);
    }
    static public function _tokenError(_dec:Decoder, _c:StdTypes.Int):stdgo.Tuple<Token, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.Decoder_static_extension._tokenError(_dec, _c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function token(_dec:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.Decoder_static_extension.token(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _tokenValueEnd(_dec:Decoder):Void {
        stdgo._internal.encoding.json.Json.Decoder_static_extension._tokenValueEnd(_dec);
    }
    static public function _tokenValueAllowed(_dec:Decoder):Bool {
        return stdgo._internal.encoding.json.Json.Decoder_static_extension._tokenValueAllowed(_dec);
    }
    static public function _tokenPrepareForDecode(_dec:Decoder):stdgo.Error {
        return stdgo._internal.encoding.json.Json.Decoder_static_extension._tokenPrepareForDecode(_dec);
    }
    static public function _refill(_dec:Decoder):stdgo.Error {
        return stdgo._internal.encoding.json.Json.Decoder_static_extension._refill(_dec);
    }
    static public function _readValue(_dec:Decoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.Decoder_static_extension._readValue(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function buffered(_dec:Decoder):stdgo._internal.io.Io.Reader {
        return stdgo._internal.encoding.json.Json.Decoder_static_extension.buffered(_dec);
    }
    static public function decode(_dec:Decoder, _v:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.json.Json.Decoder_static_extension.decode(_dec, _v);
    }
    static public function disallowUnknownFields(_dec:Decoder):Void {
        stdgo._internal.encoding.json.Json.Decoder_static_extension.disallowUnknownFields(_dec);
    }
    static public function useNumber(_dec:Decoder):Void {
        stdgo._internal.encoding.json.Json.Decoder_static_extension.useNumber(_dec);
    }
}
class Encoder_static_extension {
    static public function setEscapeHTML(_enc:Encoder, _on:Bool):Void {
        stdgo._internal.encoding.json.Json.Encoder_static_extension.setEscapeHTML(_enc, _on);
    }
    static public function setIndent(_enc:Encoder, _prefix:String, _indent:String):Void {
        stdgo._internal.encoding.json.Json.Encoder_static_extension.setIndent(_enc, _prefix, _indent);
    }
    static public function encode(_enc:Encoder, _v:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.json.Json.Encoder_static_extension.encode(_enc, _v);
    }
}
class Number_static_extension {
    static public function int64(_n:Number):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.Number_static_extension.int64(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_n:Number):stdgo.Tuple<StdTypes.Float, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.Number_static_extension.float64(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_n:Number):String {
        return stdgo._internal.encoding.json.Json.Number_static_extension.string(_n);
    }
}
class SS_static_extension {
    static public function unmarshalJSON(____:SS, _:stdgo.Pointer<SS>, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.SS_static_extension.unmarshalJSON(____, _, _data);
    }
}
class T_u8marshal_static_extension {
    static public function unmarshalText(____:T_u8marshal, _u8:stdgo.Pointer<T_u8marshal>, _b:Array<StdTypes.Int>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_u8marshal_static_extension.unmarshalText(____, _u8, _b);
    }
    static public function marshalText(_u8:T_u8marshal):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_u8marshal_static_extension.marshalText(_u8);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_byteWithMarshalJSON_static_extension {
    static public function unmarshalJSON(____:T_byteWithMarshalJSON, _b:stdgo.Pointer<T_byteWithMarshalJSON>, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_byteWithMarshalJSON_static_extension.unmarshalJSON(____, _b, _data);
    }
    static public function marshalJSON(_b:T_byteWithMarshalJSON):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_byteWithMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_byteWithPtrMarshalJSON_static_extension {
    static public function unmarshalJSON(____:T_byteWithPtrMarshalJSON, _b:stdgo.Pointer<T_byteWithPtrMarshalJSON>, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalJSON_static_extension.unmarshalJSON(____, _b, _data);
    }
    static public function marshalJSON(____:T_byteWithPtrMarshalJSON, _b:stdgo.Pointer<T_byteWithPtrMarshalJSON>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalJSON_static_extension.marshalJSON(____, _b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_byteWithMarshalText_static_extension {
    static public function unmarshalText(____:T_byteWithMarshalText, _b:stdgo.Pointer<T_byteWithMarshalText>, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_byteWithMarshalText_static_extension.unmarshalText(____, _b, _data);
    }
    static public function marshalText(_b:T_byteWithMarshalText):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_byteWithMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_byteWithPtrMarshalText_static_extension {
    static public function unmarshalText(____:T_byteWithPtrMarshalText, _b:stdgo.Pointer<T_byteWithPtrMarshalText>, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalText_static_extension.unmarshalText(____, _b, _data);
    }
    static public function marshalText(____:T_byteWithPtrMarshalText, _b:stdgo.Pointer<T_byteWithPtrMarshalText>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalText_static_extension.marshalText(____, _b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_intWithMarshalJSON_static_extension {
    static public function unmarshalJSON(____:T_intWithMarshalJSON, _b:stdgo.Pointer<T_intWithMarshalJSON>, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_intWithMarshalJSON_static_extension.unmarshalJSON(____, _b, _data);
    }
    static public function marshalJSON(_b:T_intWithMarshalJSON):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_intWithMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_intWithPtrMarshalJSON_static_extension {
    static public function unmarshalJSON(____:T_intWithPtrMarshalJSON, _b:stdgo.Pointer<T_intWithPtrMarshalJSON>, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_intWithPtrMarshalJSON_static_extension.unmarshalJSON(____, _b, _data);
    }
    static public function marshalJSON(____:T_intWithPtrMarshalJSON, _b:stdgo.Pointer<T_intWithPtrMarshalJSON>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_intWithPtrMarshalJSON_static_extension.marshalJSON(____, _b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_intWithMarshalText_static_extension {
    static public function unmarshalText(____:T_intWithMarshalText, _b:stdgo.Pointer<T_intWithMarshalText>, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_intWithMarshalText_static_extension.unmarshalText(____, _b, _data);
    }
    static public function marshalText(_b:T_intWithMarshalText):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_intWithMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_intWithPtrMarshalText_static_extension {
    static public function unmarshalText(____:T_intWithPtrMarshalText, _b:stdgo.Pointer<T_intWithPtrMarshalText>, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_intWithPtrMarshalText_static_extension.unmarshalText(____, _b, _data);
    }
    static public function marshalText(____:T_intWithPtrMarshalText, _b:stdgo.Pointer<T_intWithPtrMarshalText>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_intWithPtrMarshalText_static_extension.marshalText(____, _b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class Time3339_static_extension {
    static public function unmarshalJSON(_t:Time3339, _b:Array<StdTypes.Int>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.Time3339_static_extension.unmarshalJSON(_t, _b);
    }
}
class T_textUnmarshalerString_static_extension {
    static public function unmarshalText(____:T_textUnmarshalerString, _m:stdgo.Pointer<T_textUnmarshalerString>, _text:Array<StdTypes.Int>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.T_textUnmarshalerString_static_extension.unmarshalText(____, _m, _text);
    }
}
class T_floatEncoder_static_extension {
    static public function _encode(_bits:T_floatEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json.T_floatEncoder_static_extension._encode(_bits, _e, _v, _opts);
    }
}
class T_byIndex_static_extension {
    static public function less(_x:T_byIndex, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.encoding.json.Json.T_byIndex_static_extension.less(_x, _i, _j);
    }
    static public function swap(_x:T_byIndex, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.encoding.json.Json.T_byIndex_static_extension.swap(_x, _i, _j);
    }
    static public function len(_x:T_byIndex):StdTypes.Int {
        return stdgo._internal.encoding.json.Json.T_byIndex_static_extension.len(_x);
    }
}
class Ref_static_extension {
    static public function unmarshalJSON(____:Ref, _r:stdgo.Pointer<Ref>, _0:Array<StdTypes.Int>):stdgo.Error {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.Ref_static_extension.unmarshalJSON(____, _r, _0);
    }
    static public function marshalJSON(____:Ref, _:stdgo.Pointer<Ref>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.Ref_static_extension.marshalJSON(____, _);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class Val_static_extension {
    static public function marshalJSON(_:Val):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.Val_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class RefText_static_extension {
    static public function unmarshalText(____:RefText, _r:stdgo.Pointer<RefText>, _0:Array<StdTypes.Int>):stdgo.Error {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.RefText_static_extension.unmarshalText(____, _r, _0);
    }
    static public function marshalText(____:RefText, _:stdgo.Pointer<RefText>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.RefText_static_extension.marshalText(____, _);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class ValText_static_extension {
    static public function marshalText(_:ValText):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.ValText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class C_static_extension {
    static public function marshalJSON(_:C):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.C_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class CText_static_extension {
    static public function marshalText(_:CText):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.CText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_nilJSONMarshaler_static_extension {
    static public function marshalJSON(____:T_nilJSONMarshaler, _nm:stdgo.Pointer<T_nilJSONMarshaler>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_nilJSONMarshaler_static_extension.marshalJSON(____, _nm);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_nilTextMarshaler_static_extension {
    static public function marshalText(____:T_nilTextMarshaler, _nm:stdgo.Pointer<T_nilTextMarshaler>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_nilTextMarshaler_static_extension.marshalText(____, _nm);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_jsonbyte_static_extension {
    static public function marshalJSON(_b:T_jsonbyte):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_jsonbyte_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_textbyte_static_extension {
    static public function marshalText(_b:T_textbyte):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_textbyte_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_jsonint_static_extension {
    static public function marshalJSON(_i:T_jsonint):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_jsonint_static_extension.marshalJSON(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_textint_static_extension {
    static public function marshalText(_i:T_textint):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_textint_static_extension.marshalText(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_textfloat_static_extension {
    static public function marshalText(_f:T_textfloat):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_textfloat_static_extension.marshalText(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class RawMessage_static_extension {
    static public function unmarshalJSON(_m:RawMessage, _data:Array<StdTypes.Int>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.RawMessage_static_extension.unmarshalJSON(_m, _data);
    }
    static public function marshalJSON(_m:RawMessage):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.RawMessage_static_extension.marshalJSON(_m);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class Delim_static_extension {
    static public function string(_d:Delim):String {
        return stdgo._internal.encoding.json.Json.Delim_static_extension.string(_d);
    }
}
class T_strMarshaler_static_extension {
    static public function marshalJSON(_s:T_strMarshaler):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_strMarshaler_static_extension.marshalJSON(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_strPtrMarshaler_static_extension {
    static public function marshalJSON(____:T_strPtrMarshaler, _s:stdgo.Pointer<T_strPtrMarshaler>):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.T_strPtrMarshaler_static_extension.marshalJSON(____, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class T_tagOptions_static_extension {
    static public function contains(_o:T_tagOptions, _optionName:String):Bool {
        return stdgo._internal.encoding.json.Json.T_tagOptions_static_extension.contains(_o, _optionName);
    }
}
class T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension {

}
class T_testUnmarshalEmbeddedUnexported___localname___S2_54503_static_extension {

}
class T_testUnmarshalEmbeddedUnexported___localname___S3_54541_static_extension {

}
class T_testUnmarshalEmbeddedUnexported___localname___S4_54578_static_extension {

}
class T_testUnmarshalEmbeddedUnexported___localname___S5_54617_static_extension {

}
class T_testUnmarshalEmbeddedUnexported___localname___S6_54655_static_extension {

}
class T_testUnmarshalEmbeddedUnexported___localname___S7_54699_static_extension {

}
class T_testUnmarshalEmbeddedUnexported___localname___S8_54753_static_extension {

}
class T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension {
    public static function f(__self__:T_testUnmarshalEmbeddedUnexported___localname___S9_54837) {
        stdgo._internal.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension.f(__self__);
    }
}
class T_testAnonymousFields___localname___S_8174_static_extension {

}
class T_testAnonymousFields___localname___S_8511_static_extension {

}
class T_testAnonymousFields___localname___S_8796_static_extension {

}
class T_testAnonymousFields___localname___S_9019_static_extension {

}
class T_testAnonymousFields___localname___S_9282_static_extension {

}
class T_testAnonymousFields___localname___S_9564_static_extension {

}
class T_testAnonymousFields___localname___S_9958_static_extension {

}
class T_testAnonymousFields___localname___S_10366_static_extension {

}
class T_testAnonymousFields___localname___s2_10709_static_extension {

}
class T_testAnonymousFields___localname___s1_10758_static_extension {

}
class T_testAnonymousFields___localname___S_10811_static_extension {

}
class T_testAnonymousFields___localname___S_11225_static_extension {

}
/**
    Package json implements encoding and decoding of JSON as defined in
    RFC 7159. The mapping between JSON and Go values is described
    in the documentation for the Marshal and Unmarshal functions.
    
    See "JSON and Go" for an introduction to this package:
    https://golang.org/doc/articles/json_and_go.html
**/
class Json {
    static public function benchmarkCodeEncoder(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkCodeEncoder(_b);
    }
    static public function benchmarkCodeEncoderError(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkCodeEncoderError(_b);
    }
    static public function benchmarkCodeMarshal(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkCodeMarshal(_b);
    }
    static public function benchmarkCodeMarshalError(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkCodeMarshalError(_b);
    }
    static public function benchmarkMarshalBytes(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkMarshalBytes(_b);
    }
    static public function benchmarkMarshalBytesError(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkMarshalBytesError(_b);
    }
    static public function benchmarkCodeDecoder(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkCodeDecoder(_b);
    }
    static public function benchmarkUnicodeDecoder(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkUnicodeDecoder(_b);
    }
    static public function benchmarkDecoderStream(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkDecoderStream(_b);
    }
    static public function benchmarkCodeUnmarshal(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkCodeUnmarshal(_b);
    }
    static public function benchmarkCodeUnmarshalReuse(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkCodeUnmarshalReuse(_b);
    }
    static public function benchmarkUnmarshalString(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkUnmarshalString(_b);
    }
    static public function benchmarkUnmarshalFloat64(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkUnmarshalFloat64(_b);
    }
    static public function benchmarkUnmarshalInt64(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkUnmarshalInt64(_b);
    }
    static public function benchmarkIssue10335(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkIssue10335(_b);
    }
    static public function benchmarkIssue34127(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkIssue34127(_b);
    }
    static public function benchmarkUnmapped(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkUnmapped(_b);
    }
    static public function benchmarkTypeFieldsCache(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkTypeFieldsCache(_b);
    }
    static public function benchmarkEncodeMarshaler(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkEncodeMarshaler(_b);
    }
    static public function benchmarkEncoderEncode(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkEncoderEncode(_b);
    }
    static public function benchmarkNumberIsValid(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkNumberIsValid(_b);
    }
    static public function benchmarkNumberIsValidRegexp(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.json.Json.benchmarkNumberIsValidRegexp(_b);
    }
    /**
        Unmarshal parses the JSON-encoded data and stores the result
        in the value pointed to by v. If v is nil or not a pointer,
        Unmarshal returns an InvalidUnmarshalError.
        
        Unmarshal uses the inverse of the encodings that
        Marshal uses, allocating maps, slices, and pointers as necessary,
        with the following additional rules:
        
        To unmarshal JSON into a pointer, Unmarshal first handles the case of
        the JSON being the JSON literal null. In that case, Unmarshal sets
        the pointer to nil. Otherwise, Unmarshal unmarshals the JSON into
        the value pointed at by the pointer. If the pointer is nil, Unmarshal
        allocates a new value for it to point to.
        
        To unmarshal JSON into a value implementing the Unmarshaler interface,
        Unmarshal calls that value's UnmarshalJSON method, including
        when the input is a JSON null.
        Otherwise, if the value implements encoding.TextUnmarshaler
        and the input is a JSON quoted string, Unmarshal calls that value's
        UnmarshalText method with the unquoted form of the string.
        
        To unmarshal JSON into a struct, Unmarshal matches incoming object
        keys to the keys used by Marshal (either the struct field name or its tag),
        preferring an exact match but also accepting a case-insensitive match. By
        default, object keys which don't have a corresponding struct field are
        ignored (see Decoder.DisallowUnknownFields for an alternative).
        
        To unmarshal JSON into an interface value,
        Unmarshal stores one of these in the interface value:
        
        	bool, for JSON booleans
        	float64, for JSON numbers
        	string, for JSON strings
        	[]interface{}, for JSON arrays
        	map[string]interface{}, for JSON objects
        	nil for JSON null
        
        To unmarshal a JSON array into a slice, Unmarshal resets the slice length
        to zero and then appends each element to the slice.
        As a special case, to unmarshal an empty JSON array into a slice,
        Unmarshal replaces the slice with a new empty slice.
        
        To unmarshal a JSON array into a Go array, Unmarshal decodes
        JSON array elements into corresponding Go array elements.
        If the Go array is smaller than the JSON array,
        the additional JSON array elements are discarded.
        If the JSON array is smaller than the Go array,
        the additional Go array elements are set to zero values.
        
        To unmarshal a JSON object into a map, Unmarshal first establishes a map to
        use. If the map is nil, Unmarshal allocates a new map. Otherwise Unmarshal
        reuses the existing map, keeping existing entries. Unmarshal then stores
        key-value pairs from the JSON object into the map. The map's key type must
        either be any string type, an integer, implement json.Unmarshaler, or
        implement encoding.TextUnmarshaler.
        
        If the JSON-encoded data contain a syntax error, Unmarshal returns a SyntaxError.
        
        If a JSON value is not appropriate for a given target type,
        or if a JSON number overflows the target type, Unmarshal
        skips that field and completes the unmarshaling as best it can.
        If no more serious errors are encountered, Unmarshal returns
        an UnmarshalTypeError describing the earliest such error. In any
        case, it's not guaranteed that all the remaining fields following
        the problematic one will be unmarshaled into the target object.
        
        The JSON null value unmarshals into an interface, map, pointer, or slice
        by setting that Go value to nil. Because null is often used in JSON to mean
        “not present,” unmarshaling a JSON null into any other Go type has no effect
        on the value and produces no error.
        
        When unmarshaling quoted strings, invalid UTF-8 or
        invalid UTF-16 surrogate pairs are not treated as an error.
        Instead, they are replaced by the Unicode replacement
        character U+FFFD.
    **/
    static public function unmarshal(_data:Array<StdTypes.Int>, _v:stdgo.AnyInterface):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.unmarshal(_data, _v);
    }
    static public function testMarshal(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshal(_t);
    }
    static public function testMarshalBadUTF8(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalBadUTF8(_t);
    }
    static public function testMarshalNumberZeroVal(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalNumberZeroVal(_t);
    }
    static public function testMarshalEmbeds(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalEmbeds(_t);
    }
    static public function testUnmarshal(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshal(_t);
    }
    static public function testUnmarshalMarshal(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalMarshal(_t);
    }
    /**
        Independent of Decode, basic coverage of the accessors in Number
    **/
    static public function testNumberAccessors(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testNumberAccessors(_t);
    }
    static public function testLargeByteSlice(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testLargeByteSlice(_t);
    }
    static public function testUnmarshalInterface(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalInterface(_t);
    }
    static public function testUnmarshalPtrPtr(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalPtrPtr(_t);
    }
    static public function testEscape(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEscape(_t);
    }
    /**
        If people misuse the ,string modifier, the error message should be
        helpful, telling the user that they're doing it wrong.
    **/
    static public function testErrorMessageFromMisusedString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testErrorMessageFromMisusedString(_t);
    }
    static public function testRefUnmarshal(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testRefUnmarshal(_t);
    }
    /**
        Test that the empty string doesn't panic decoding when ,string is specified
        Issue 3450
    **/
    static public function testEmptyString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEmptyString(_t);
    }
    /**
        Test that a null for ,string is not replaced with the previous quoted string (issue 7046).
        It should also not be an error (issue 2540, issue 8587).
    **/
    static public function testNullString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testNullString(_t);
    }
    static public function testInterfaceSet(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testInterfaceSet(_t);
    }
    /**
        JSON null values should be ignored for primitives and string values instead of resulting in an error.
        Issue 2540
    **/
    static public function testUnmarshalNulls(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalNulls(_t);
    }
    static public function testStringKind(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testStringKind(_t);
    }
    /**
        Custom types with []byte as underlying type could not be marshaled
        and then unmarshaled.
        Issue 8962.
    **/
    static public function testByteKind(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testByteKind(_t);
    }
    /**
        The fix for issue 8962 introduced a regression.
        Issue 12921.
    **/
    static public function testSliceOfCustomByte(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testSliceOfCustomByte(_t);
    }
    static public function testUnmarshalTypeError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalTypeError(_t);
    }
    static public function testUnmarshalSyntax(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalSyntax(_t);
    }
    static public function testUnmarshalUnexported(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalUnexported(_t);
    }
    static public function testUnmarshalJSONLiteralError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalJSONLiteralError(_t);
    }
    /**
        Test that extra object elements in an array do not result in a
        "data changing underfoot" error.
        Issue 3717
    **/
    static public function testSkipArrayObjects(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testSkipArrayObjects(_t);
    }
    /**
        Test semantics of pre-filled data, such as struct fields, map elements,
        slices, and arrays.
        Issues 4900 and 8837, among others.
    **/
    static public function testPrefilled(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testPrefilled(_t);
    }
    static public function testInvalidUnmarshal(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testInvalidUnmarshal(_t);
    }
    static public function testInvalidUnmarshalText(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testInvalidUnmarshalText(_t);
    }
    /**
        Test that string option is ignored for invalid types.
        Issue 9812.
    **/
    static public function testInvalidStringOption(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testInvalidStringOption(_t);
    }
    /**
        Test unmarshal behavior with regards to embedded unexported structs.
        
        (Issue 21357) If the embedded struct is a pointer and is unallocated,
        this returns an error because unmarshal cannot set the field.
        
        (Issue 24152) If the embedded struct is given an explicit name,
        ensure that the normal unmarshal logic does not panic in reflect.
        
        (Issue 28145) If the embedded struct is given an explicit name and has
        exported methods, don't cause a panic trying to get its value.
    **/
    static public function testUnmarshalEmbeddedUnexported(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalEmbeddedUnexported(_t);
    }
    static public function testUnmarshalErrorAfterMultipleJSON(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalErrorAfterMultipleJSON(_t);
    }
    static public function testUnmarshalPanic(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalPanic(_t);
    }
    /**
        The decoder used to hang if decoding into an interface pointing to its own address.
        See golang.org/issues/31740.
    **/
    static public function testUnmarshalRecursivePointer(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalRecursivePointer(_t);
    }
    /**
        Test unmarshal to a map, where the map key is a user defined type.
        See golang.org/issues/34437.
    **/
    static public function testUnmarshalMapWithTextUnmarshalerStringKey(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalMapWithTextUnmarshalerStringKey(_t);
    }
    static public function testUnmarshalRescanLiteralMangledUnquote(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalRescanLiteralMangledUnquote(_t);
    }
    static public function testUnmarshalMaxDepth(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnmarshalMaxDepth(_t);
    }
    /**
        Marshal returns the JSON encoding of v.
        
        Marshal traverses the value v recursively.
        If an encountered value implements the Marshaler interface
        and is not a nil pointer, Marshal calls its MarshalJSON method
        to produce JSON. If no MarshalJSON method is present but the
        value implements encoding.TextMarshaler instead, Marshal calls
        its MarshalText method and encodes the result as a JSON string.
        The nil pointer exception is not strictly necessary
        but mimics a similar, necessary exception in the behavior of
        UnmarshalJSON.
        
        Otherwise, Marshal uses the following type-dependent default encodings:
        
        Boolean values encode as JSON booleans.
        
        Floating point, integer, and Number values encode as JSON numbers.
        NaN and +/-Inf values will return an [UnsupportedValueError].
        
        String values encode as JSON strings coerced to valid UTF-8,
        replacing invalid bytes with the Unicode replacement rune.
        So that the JSON will be safe to embed inside HTML <script> tags,
        the string is encoded using HTMLEscape,
        which replaces "<", ">", "&", U+2028, and U+2029 are escaped
        to "\u003c","\u003e", "\u0026", "\u2028", and "\u2029".
        This replacement can be disabled when using an Encoder,
        by calling SetEscapeHTML(false).
        
        Array and slice values encode as JSON arrays, except that
        []byte encodes as a base64-encoded string, and a nil slice
        encodes as the null JSON value.
        
        Struct values encode as JSON objects.
        Each exported struct field becomes a member of the object, using the
        field name as the object key, unless the field is omitted for one of the
        reasons given below.
        
        The encoding of each struct field can be customized by the format string
        stored under the "json" key in the struct field's tag.
        The format string gives the name of the field, possibly followed by a
        comma-separated list of options. The name may be empty in order to
        specify options without overriding the default field name.
        
        The "omitempty" option specifies that the field should be omitted
        from the encoding if the field has an empty value, defined as
        false, 0, a nil pointer, a nil interface value, and any empty array,
        slice, map, or string.
        
        As a special case, if the field tag is "-", the field is always omitted.
        Note that a field with name "-" can still be generated using the tag "-,".
        
        Examples of struct field tags and their meanings:
        
        	// Field appears in JSON as key "myName".
        	Field int `json:"myName"`
        
        	// Field appears in JSON as key "myName" and
        	// the field is omitted from the object if its value is empty,
        	// as defined above.
        	Field int `json:"myName,omitempty"`
        
        	// Field appears in JSON as key "Field" (the default), but
        	// the field is skipped if empty.
        	// Note the leading comma.
        	Field int `json:",omitempty"`
        
        	// Field is ignored by this package.
        	Field int `json:"-"`
        
        	// Field appears in JSON as key "-".
        	Field int `json:"-,"`
        
        The "string" option signals that a field is stored as JSON inside a
        JSON-encoded string. It applies only to fields of string, floating point,
        integer, or boolean types. This extra level of encoding is sometimes used
        when communicating with JavaScript programs:
        
        	Int64String int64 `json:",string"`
        
        The key name will be used if it's a non-empty string consisting of
        only Unicode letters, digits, and ASCII punctuation except quotation
        marks, backslash, and comma.
        
        Anonymous struct fields are usually marshaled as if their inner exported fields
        were fields in the outer struct, subject to the usual Go visibility rules amended
        as described in the next paragraph.
        An anonymous struct field with a name given in its JSON tag is treated as
        having that name, rather than being anonymous.
        An anonymous struct field of interface type is treated the same as having
        that type as its name, rather than being anonymous.
        
        The Go visibility rules for struct fields are amended for JSON when
        deciding which field to marshal or unmarshal. If there are
        multiple fields at the same level, and that level is the least
        nested (and would therefore be the nesting level selected by the
        usual Go rules), the following extra rules apply:
        
        1) Of those fields, if any are JSON-tagged, only tagged fields are considered,
        even if there are multiple untagged fields that would otherwise conflict.
        
        2) If there is exactly one field (tagged or not according to the first rule), that is selected.
        
        3) Otherwise there are multiple fields, and all are ignored; no error occurs.
        
        Handling of anonymous struct fields is new in Go 1.1.
        Prior to Go 1.1, anonymous struct fields were ignored. To force ignoring of
        an anonymous struct field in both current and earlier versions, give the field
        a JSON tag of "-".
        
        Map values encode as JSON objects. The map's key type must either be a
        string, an integer type, or implement encoding.TextMarshaler. The map keys
        are sorted and used as JSON object keys by applying the following rules,
        subject to the UTF-8 coercion described for string values above:
          - keys of any string type are used directly
          - encoding.TextMarshalers are marshaled
          - integer keys are converted to strings
        
        Pointer values encode as the value pointed to.
        A nil pointer encodes as the null JSON value.
        
        Interface values encode as the value contained in the interface.
        A nil interface value encodes as the null JSON value.
        
        Channel, complex, and function values cannot be encoded in JSON.
        Attempting to encode such a value causes Marshal to return
        an UnsupportedTypeError.
        
        JSON cannot represent cyclic data structures and Marshal does not
        handle them. Passing cyclic structures to Marshal will result in
        an error.
    **/
    static public function marshal(_v:stdgo.AnyInterface):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.marshal(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        MarshalIndent is like Marshal but applies Indent to format the output.
        Each JSON element in the output will begin on a new line beginning with prefix
        followed by one or more copies of indent according to the indentation nesting.
    **/
    static public function marshalIndent(_v:stdgo.AnyInterface, _prefix:String, _indent:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json.marshalIndent(_v, _prefix, _indent);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function testOmitEmpty(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testOmitEmpty(_t);
    }
    static public function testRoundtripStringTag(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testRoundtripStringTag(_t);
    }
    static public function testEncodeRenamedByteSlice(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEncodeRenamedByteSlice(_t);
    }
    static public function testSamePointerNoCycle(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testSamePointerNoCycle(_t);
    }
    static public function testSliceNoCycle(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testSliceNoCycle(_t);
    }
    static public function testUnsupportedValues(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testUnsupportedValues(_t);
    }
    /**
        Issue 43207
    **/
    static public function testMarshalTextFloatMap(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalTextFloatMap(_t);
    }
    static public function testRefValMarshal(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testRefValMarshal(_t);
    }
    static public function testMarshalerEscaping(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalerEscaping(_t);
    }
    static public function testAnonymousFields(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testAnonymousFields(_t);
    }
    /**
        See golang.org/issue/16042 and golang.org/issue/34235.
    **/
    static public function testNilMarshal(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testNilMarshal(_t);
    }
    /**
        Issue 5245.
    **/
    static public function testEmbeddedBug(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEmbeddedBug(_t);
    }
    /**
        Test that a field with a tag dominates untagged fields.
    **/
    static public function testTaggedFieldDominates(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testTaggedFieldDominates(_t);
    }
    static public function testDuplicatedFieldDisappears(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testDuplicatedFieldDisappears(_t);
    }
    static public function testIssue10281(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testIssue10281(_t);
    }
    static public function testMarshalErrorAndReuseEncodeState(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalErrorAndReuseEncodeState(_t);
    }
    static public function testHTMLEscape(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testHTMLEscape(_t);
    }
    /**
        golang.org/issue/8582
    **/
    static public function testEncodePointerString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEncodePointerString(_t);
    }
    static public function testEncodeString(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEncodeString(_t);
    }
    /**
        Issue 13783
    **/
    static public function testEncodeBytekind(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEncodeBytekind(_t);
    }
    static public function testTextMarshalerMapKeysAreSorted(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testTextMarshalerMapKeysAreSorted(_t);
    }
    /**
        https://golang.org/issue/33675
    **/
    static public function testNilMarshalerTextMapKey(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testNilMarshalerTextMapKey(_t);
    }
    static public function testMarshalFloat(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalFloat(_t);
    }
    static public function testMarshalRawMessageValue(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalRawMessageValue(_t);
    }
    static public function testMarshalPanic(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalPanic(_t);
    }
    static public function testMarshalUncommonFieldNames(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalUncommonFieldNames(_t);
    }
    static public function testMarshalerError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testMarshalerError(_t);
    }
    static public function fuzzEqualFold(_f:stdgo._internal.testing.Testing.F):Void {
        stdgo._internal.encoding.json.Json.fuzzEqualFold(_f);
    }
    static public function fuzzUnmarshalJSON(_f:stdgo._internal.testing.Testing.F):Void {
        stdgo._internal.encoding.json.Json.fuzzUnmarshalJSON(_f);
    }
    static public function fuzzDecoderToken(_f:stdgo._internal.testing.Testing.F):Void {
        stdgo._internal.encoding.json.Json.fuzzDecoderToken(_f);
    }
    /**
        HTMLEscape appends to dst the JSON-encoded src with <, >, &, U+2028 and U+2029
        characters inside string literals changed to \u003c, \u003e, \u0026, \u2028, \u2029
        so that the JSON will be safe to embed inside HTML <script> tags.
        For historical reasons, web browsers don't honor standard HTML
        escaping within <script> tags, so an alternative JSON encoding must be used.
    **/
    static public function htmlescape(_dst:stdgo._internal.bytes.Bytes.Buffer, _src:Array<StdTypes.Int>):Void {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.json.Json.htmlescape(_dst, _src);
    }
    /**
        Compact appends to dst the JSON-encoded src with
        insignificant space characters elided.
    **/
    static public function compact(_dst:stdgo._internal.bytes.Bytes.Buffer, _src:Array<StdTypes.Int>):stdgo.Error {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.compact(_dst, _src);
    }
    /**
        Indent appends to dst an indented form of the JSON-encoded src.
        Each element in a JSON object or array begins on a new,
        indented line beginning with prefix followed by one or more
        copies of indent according to the indentation nesting.
        The data appended to dst does not begin with the prefix nor
        any indentation, to make it easier to embed inside other formatted JSON data.
        Although leading space characters (space, tab, carriage return, newline)
        at the beginning of src are dropped, trailing space characters
        at the end of src are preserved and copied to dst.
        For example, if src has no trailing spaces, neither will dst;
        if src ends in a trailing newline, so will dst.
    **/
    static public function indent(_dst:stdgo._internal.bytes.Bytes.Buffer, _src:Array<StdTypes.Int>, _prefix:String, _indent:String):stdgo.Error {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.indent(_dst, _src, _prefix, _indent);
    }
    static public function testNumberIsValid(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testNumberIsValid(_t);
    }
    /**
        Valid reports whether data is a valid JSON encoding.
    **/
    static public function valid(_data:Array<StdTypes.Int>):Bool {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.json.Json.valid(_data);
    }
    static public function testValid(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testValid(_t);
    }
    static public function testCompact(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testCompact(_t);
    }
    static public function testCompactSeparators(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testCompactSeparators(_t);
    }
    static public function testIndent(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testIndent(_t);
    }
    static public function testCompactBig(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testCompactBig(_t);
    }
    static public function testIndentBig(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testIndentBig(_t);
    }
    static public function testIndentErrors(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testIndentErrors(_t);
    }
    /**
        NewDecoder returns a new decoder that reads from r.
        
        The decoder introduces its own buffering and may
        read data from r beyond the JSON values requested.
    **/
    static public function newDecoder(_r:stdgo._internal.io.Io.Reader):Decoder {
        return stdgo._internal.encoding.json.Json.newDecoder(_r);
    }
    /**
        NewEncoder returns a new encoder that writes to w.
    **/
    static public function newEncoder(_w:stdgo._internal.io.Io.Writer):Encoder {
        return stdgo._internal.encoding.json.Json.newEncoder(_w);
    }
    static public function testEncoder(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEncoder(_t);
    }
    static public function testEncoderErrorAndReuseEncodeState(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEncoderErrorAndReuseEncodeState(_t);
    }
    static public function testEncoderIndent(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEncoderIndent(_t);
    }
    static public function testEncoderSetEscapeHTML(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testEncoderSetEscapeHTML(_t);
    }
    static public function testDecoder(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testDecoder(_t);
    }
    static public function testDecoderBuffered(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testDecoderBuffered(_t);
    }
    static public function testRawMessage(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testRawMessage(_t);
    }
    static public function testNullRawMessage(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testNullRawMessage(_t);
    }
    static public function testBlocking(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testBlocking(_t);
    }
    static public function testDecodeInStream(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testDecodeInStream(_t);
    }
    /**
        Test from golang.org/issue/11893
    **/
    static public function testHTTPDecoding(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testHTTPDecoding(_t);
    }
    static public function testStructTagObjectKey(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testStructTagObjectKey(_t);
    }
    static public function testTagParsing(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.json.Json.testTagParsing(_t);
    }
}
