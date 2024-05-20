package stdgo.text.template;
class I_static_extension {
    static public function method0(t:I):String {
        return stdgo._internal.text.template.Template.I_static_extension.method0(t);
    }
}
typedef I = stdgo._internal.text.template.Template.I;
@:structInit @:private @:using(stdgo.text.template.Template.T_state_static_extension) abstract T_state(stdgo._internal.text.template.Template.T_state) from stdgo._internal.text.template.Template.T_state to stdgo._internal.text.template.Template.T_state {
    public var _tmpl(get, set) : stdgo._internal.text.template.Template.Template;
    function get__tmpl():stdgo._internal.text.template.Template.Template return this._tmpl;
    function set__tmpl(v:stdgo._internal.text.template.Template.Template):stdgo._internal.text.template.Template.Template {
        this._tmpl = v;
        return v;
    }
    public var _wr(get, set) : stdgo._internal.io.Io.Writer;
    function get__wr():stdgo._internal.io.Io.Writer return this._wr;
    function set__wr(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._wr = v;
        return v;
    }
    public var _node(get, set) : stdgo._internal.text.template.parse.Parse.Node;
    function get__node():stdgo._internal.text.template.parse.Parse.Node return this._node;
    function set__node(v:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.text.template.parse.Parse.Node {
        this._node = v;
        return v;
    }
    public var _vars(get, set) : Array<stdgo._internal.text.template.Template.T_variable>;
    function get__vars():Array<stdgo._internal.text.template.Template.T_variable> return [for (i in this._vars) i];
    function set__vars(v:Array<stdgo._internal.text.template.Template.T_variable>):Array<stdgo._internal.text.template.Template.T_variable> {
        this._vars = ([for (i in v) i] : stdgo.Slice<stdgo._internal.text.template.Template.T_variable>);
        return v;
    }
    public var _depth(get, set) : StdTypes.Int;
    function get__depth():StdTypes.Int return this._depth;
    function set__depth(v:StdTypes.Int):StdTypes.Int {
        this._depth = v;
        return v;
    }
    public function new(?_tmpl:stdgo._internal.text.template.Template.Template, ?_wr:stdgo._internal.io.Io.Writer, ?_node:stdgo._internal.text.template.parse.Parse.Node, ?_vars:Array<stdgo._internal.text.template.Template.T_variable>, ?_depth:StdTypes.Int) this = new stdgo._internal.text.template.Template.T_state(_tmpl, _wr, _node, ([for (i in _vars) i] : stdgo.Slice<stdgo._internal.text.template.Template.T_variable>), _depth);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_variable(stdgo._internal.text.template.Template.T_variable) from stdgo._internal.text.template.Template.T_variable to stdgo._internal.text.template.Template.T_variable {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _value(get, set) : stdgo._internal.reflect.Reflect.Value;
    function get__value():stdgo._internal.reflect.Reflect.Value return this._value;
    function set__value(v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        this._value = v;
        return v;
    }
    public function new(?_name:String, ?_value:stdgo._internal.reflect.Reflect.Value) this = new stdgo._internal.text.template.Template.T_variable(_name, _value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_missingValType(stdgo._internal.text.template.Template.T_missingValType) from stdgo._internal.text.template.Template.T_missingValType to stdgo._internal.text.template.Template.T_missingValType {
    public function new() this = new stdgo._internal.text.template.Template.T_missingValType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.ExecError_static_extension) abstract ExecError(stdgo._internal.text.template.Template.ExecError) from stdgo._internal.text.template.Template.ExecError to stdgo._internal.text.template.Template.ExecError {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?name:String, ?err:stdgo.Error) this = new stdgo._internal.text.template.Template.ExecError(name, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_writeError(stdgo._internal.text.template.Template.T_writeError) from stdgo._internal.text.template.Template.T_writeError to stdgo._internal.text.template.Template.T_writeError {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.text.template.Template.T_writeError(err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T__static_extension) abstract T_(stdgo._internal.text.template.Template.T_) from stdgo._internal.text.template.Template.T_ to stdgo._internal.text.template.Template.T_ {
    public var _True(get, set) : Bool;
    function get__True():Bool return this._True;
    function set__True(v:Bool):Bool {
        this._True = v;
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = v;
        return v;
    }
    public var u16(get, set) : std.UInt;
    function get_u16():std.UInt return this.u16;
    function set_u16(v:std.UInt):std.UInt {
        this.u16 = v;
        return v;
    }
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = v;
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public var floatZero(get, set) : StdTypes.Float;
    function get_floatZero():StdTypes.Float return this.floatZero;
    function set_floatZero(v:StdTypes.Float):StdTypes.Float {
        this.floatZero = v;
        return v;
    }
    public var complexZero(get, set) : stdgo.GoComplex128;
    function get_complexZero():stdgo.GoComplex128 return this.complexZero;
    function set_complexZero(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.complexZero = v;
        return v;
    }
    public var u(get, set) : stdgo._internal.text.template.Template.U;
    function get_u():stdgo._internal.text.template.Template.U return this.u;
    function set_u(v:stdgo._internal.text.template.Template.U):stdgo._internal.text.template.Template.U {
        this.u = v;
        return v;
    }
    public var v0(get, set) : stdgo._internal.text.template.Template.V;
    function get_v0():stdgo._internal.text.template.Template.V return this.v0;
    function set_v0(v:stdgo._internal.text.template.Template.V):stdgo._internal.text.template.Template.V {
        this.v0 = v;
        return v;
    }
    public var v1(get, set) : stdgo._internal.text.template.Template.V;
    function get_v1():stdgo._internal.text.template.Template.V return this.v1;
    function set_v1(v:stdgo._internal.text.template.Template.V):stdgo._internal.text.template.Template.V {
        this.v1 = v;
        return v;
    }
    public var v2(get, set) : stdgo._internal.text.template.Template.V;
    function get_v2():stdgo._internal.text.template.Template.V return this.v2;
    function set_v2(v:stdgo._internal.text.template.Template.V):stdgo._internal.text.template.Template.V {
        this.v2 = v;
        return v;
    }
    public var w0(get, set) : stdgo._internal.text.template.Template.W;
    function get_w0():stdgo._internal.text.template.Template.W return this.w0;
    function set_w0(v:stdgo._internal.text.template.Template.W):stdgo._internal.text.template.Template.W {
        this.w0 = v;
        return v;
    }
    public var w1(get, set) : stdgo._internal.text.template.Template.W;
    function get_w1():stdgo._internal.text.template.Template.W return this.w1;
    function set_w1(v:stdgo._internal.text.template.Template.W):stdgo._internal.text.template.Template.W {
        this.w1 = v;
        return v;
    }
    public var w2(get, set) : stdgo._internal.text.template.Template.W;
    function get_w2():stdgo._internal.text.template.Template.W return this.w2;
    function set_w2(v:stdgo._internal.text.template.Template.W):stdgo._internal.text.template.Template.W {
        this.w2 = v;
        return v;
    }
    public var si(get, set) : Array<StdTypes.Int>;
    function get_si():Array<StdTypes.Int> return [for (i in this.si) i];
    function set_si(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.si = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var sicap(get, set) : Array<StdTypes.Int>;
    function get_sicap():Array<StdTypes.Int> return [for (i in this.sicap) i];
    function set_sicap(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.sicap = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var siempty(get, set) : Array<StdTypes.Int>;
    function get_siempty():Array<StdTypes.Int> return [for (i in this.siempty) i];
    function set_siempty(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.siempty = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var sb(get, set) : Array<Bool>;
    function get_sb():Array<Bool> return [for (i in this.sb) i];
    function set_sb(v:Array<Bool>):Array<Bool> {
        this.sb = ([for (i in v) i] : stdgo.Slice<Bool>);
        return v;
    }
    public var ai(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_ai():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.ai) i]);
    function set_ai(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.ai = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var msi(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_msi():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.msi;
    function set_msi(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.msi = v;
        return v;
    }
    public var msione(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_msione():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.msione;
    function set_msione(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.msione = v;
        return v;
    }
    public var msiempty(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get_msiempty():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this.msiempty;
    function set_msiempty(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this.msiempty = v;
        return v;
    }
    public var mxi(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>;
    function get_mxi():stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> return this.mxi;
    function set_mxi(v:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>):stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> {
        this.mxi = v;
        return v;
    }
    public var mii(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
    function get_mii():stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> return this.mii;
    function set_mii(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> {
        this.mii = v;
        return v;
    }
    public var mi32s(get, set) : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>;
    function get_mi32s():stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> return this.mi32s;
    function set_mi32s(v:stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>):stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> {
        this.mi32s = v;
        return v;
    }
    public var mi64s(get, set) : stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>;
    function get_mi64s():stdgo.GoMap<stdgo.GoInt64, stdgo.GoString> return this.mi64s;
    function set_mi64s(v:stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>):stdgo.GoMap<stdgo.GoInt64, stdgo.GoString> {
        this.mi64s = v;
        return v;
    }
    public var mui32s(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>;
    function get_mui32s():stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> return this.mui32s;
    function set_mui32s(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString> {
        this.mui32s = v;
        return v;
    }
    public var mui64s(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>;
    function get_mui64s():stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> return this.mui64s;
    function set_mui64s(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> {
        this.mui64s = v;
        return v;
    }
    public var mi8s(get, set) : stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>;
    function get_mi8s():stdgo.GoMap<stdgo.GoInt8, stdgo.GoString> return this.mi8s;
    function set_mi8s(v:stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>):stdgo.GoMap<stdgo.GoInt8, stdgo.GoString> {
        this.mi8s = v;
        return v;
    }
    public var mui8s(get, set) : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>;
    function get_mui8s():stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString> return this.mui8s;
    function set_mui8s(v:stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>):stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString> {
        this.mui8s = v;
        return v;
    }
    public var smsi(get, set) : Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>;
    function get_smsi():Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>> return [for (i in this.smsi) i];
    function set_smsi(v:Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>):Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>> {
        this.smsi = ([for (i in v) i] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>);
        return v;
    }
    public var empty0(get, set) : stdgo.AnyInterface;
    function get_empty0():stdgo.AnyInterface return this.empty0;
    function set_empty0(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty0 = v;
        return v;
    }
    public var empty1(get, set) : stdgo.AnyInterface;
    function get_empty1():stdgo.AnyInterface return this.empty1;
    function set_empty1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty1 = v;
        return v;
    }
    public var empty2(get, set) : stdgo.AnyInterface;
    function get_empty2():stdgo.AnyInterface return this.empty2;
    function set_empty2(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty2 = v;
        return v;
    }
    public var empty3(get, set) : stdgo.AnyInterface;
    function get_empty3():stdgo.AnyInterface return this.empty3;
    function set_empty3(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty3 = v;
        return v;
    }
    public var empty4(get, set) : stdgo.AnyInterface;
    function get_empty4():stdgo.AnyInterface return this.empty4;
    function set_empty4(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.empty4 = v;
        return v;
    }
    public var nonEmptyInterface(get, set) : stdgo._internal.text.template.Template.I;
    function get_nonEmptyInterface():stdgo._internal.text.template.Template.I return this.nonEmptyInterface;
    function set_nonEmptyInterface(v:stdgo._internal.text.template.Template.I):stdgo._internal.text.template.Template.I {
        this.nonEmptyInterface = v;
        return v;
    }
    public var nonEmptyInterfacePtS(get, set) : stdgo._internal.text.template.Template.I;
    function get_nonEmptyInterfacePtS():stdgo._internal.text.template.Template.I return this.nonEmptyInterfacePtS;
    function set_nonEmptyInterfacePtS(v:stdgo._internal.text.template.Template.I):stdgo._internal.text.template.Template.I {
        this.nonEmptyInterfacePtS = v;
        return v;
    }
    public var nonEmptyInterfaceNil(get, set) : stdgo._internal.text.template.Template.I;
    function get_nonEmptyInterfaceNil():stdgo._internal.text.template.Template.I return this.nonEmptyInterfaceNil;
    function set_nonEmptyInterfaceNil(v:stdgo._internal.text.template.Template.I):stdgo._internal.text.template.Template.I {
        this.nonEmptyInterfaceNil = v;
        return v;
    }
    public var nonEmptyInterfaceTypedNil(get, set) : stdgo._internal.text.template.Template.I;
    function get_nonEmptyInterfaceTypedNil():stdgo._internal.text.template.Template.I return this.nonEmptyInterfaceTypedNil;
    function set_nonEmptyInterfaceTypedNil(v:stdgo._internal.text.template.Template.I):stdgo._internal.text.template.Template.I {
        this.nonEmptyInterfaceTypedNil = v;
        return v;
    }
    public var str(get, set) : stdgo._internal.fmt.Fmt.Stringer;
    function get_str():stdgo._internal.fmt.Fmt.Stringer return this.str;
    function set_str(v:stdgo._internal.fmt.Fmt.Stringer):stdgo._internal.fmt.Fmt.Stringer {
        this.str = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public var pi(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pi():stdgo.Pointer<StdTypes.Int> return this.pi;
    function set_pi(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pi = v;
        return v;
    }
    public var ps(get, set) : stdgo.Pointer<String>;
    function get_ps():stdgo.Pointer<String> return this.ps;
    function set_ps(v:stdgo.Pointer<String>):stdgo.Pointer<String> {
        this.ps = v;
        return v;
    }
    public var psi(get, set) : Array<StdTypes.Int>;
    function get_psi():Array<StdTypes.Int> return this.psi;
    function set_psi(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.psi = v;
        return v;
    }
    public var nil(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_nil():stdgo.Pointer<StdTypes.Int> return this.nil;
    function set_nil(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.nil = v;
        return v;
    }
    public var binaryFunc(get, set) : (stdgo.GoString, stdgo.GoString) -> stdgo.GoString;
    function get_binaryFunc():(stdgo.GoString, stdgo.GoString) -> stdgo.GoString return (_0, _1) -> this.binaryFunc(_0, _1);
    function set_binaryFunc(v:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString):(stdgo.GoString, stdgo.GoString) -> stdgo.GoString {
        this.binaryFunc = v;
        return v;
    }
    public var variadicFunc(get, set) : stdgo.Slice<stdgo.GoString> -> stdgo.GoString;
    function get_variadicFunc():stdgo.Slice<stdgo.GoString> -> stdgo.GoString return _0 -> this.variadicFunc([for (i in _0) i]);
    function set_variadicFunc(v:stdgo.Slice<stdgo.GoString> -> stdgo.GoString):stdgo.Slice<stdgo.GoString> -> stdgo.GoString {
        this.variadicFunc = v;
        return v;
    }
    public var variadicFuncInt(get, set) : (stdgo.GoInt, stdgo.Slice<stdgo.GoString>) -> stdgo.GoString;
    function get_variadicFuncInt():(stdgo.GoInt, stdgo.Slice<stdgo.GoString>) -> stdgo.GoString return (_0, _1) -> this.variadicFuncInt(_0, [for (i in _1) i]);
    function set_variadicFuncInt(v:(stdgo.GoInt, stdgo.Slice<stdgo.GoString>) -> stdgo.GoString):(stdgo.GoInt, stdgo.Slice<stdgo.GoString>) -> stdgo.GoString {
        this.variadicFuncInt = v;
        return v;
    }
    public var nilOKFunc(get, set) : stdgo.Pointer<stdgo.GoInt> -> Bool;
    function get_nilOKFunc():stdgo.Pointer<stdgo.GoInt> -> Bool return _0 -> this.nilOKFunc(_0);
    function set_nilOKFunc(v:stdgo.Pointer<stdgo.GoInt> -> Bool):stdgo.Pointer<stdgo.GoInt> -> Bool {
        this.nilOKFunc = v;
        return v;
    }
    public var errFunc(get, set) : () -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    function get_errFunc():() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return () -> this.errFunc();
    function set_errFunc(v:() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; }):() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        this.errFunc = v;
        return v;
    }
    public var panicFunc(get, set) : () -> stdgo.GoString;
    function get_panicFunc():() -> stdgo.GoString return () -> this.panicFunc();
    function set_panicFunc(v:() -> stdgo.GoString):() -> stdgo.GoString {
        this.panicFunc = v;
        return v;
    }
    public var tmpl(get, set) : stdgo._internal.text.template.Template.Template;
    function get_tmpl():stdgo._internal.text.template.Template.Template return this.tmpl;
    function set_tmpl(v:stdgo._internal.text.template.Template.Template):stdgo._internal.text.template.Template.Template {
        this.tmpl = v;
        return v;
    }
    public var _unexported(get, set) : StdTypes.Int;
    function get__unexported():StdTypes.Int return this._unexported;
    function set__unexported(v:StdTypes.Int):StdTypes.Int {
        this._unexported = v;
        return v;
    }
    public function new(?_True:Bool, ?i:StdTypes.Int, ?u16:std.UInt, ?x:String, ?s:String, ?floatZero:StdTypes.Float, ?complexZero:stdgo.GoComplex128, ?u:stdgo._internal.text.template.Template.U, ?v0:stdgo._internal.text.template.Template.V, ?v1:stdgo._internal.text.template.Template.V, ?v2:stdgo._internal.text.template.Template.V, ?w0:stdgo._internal.text.template.Template.W, ?w1:stdgo._internal.text.template.Template.W, ?w2:stdgo._internal.text.template.Template.W, ?si:Array<StdTypes.Int>, ?sicap:Array<StdTypes.Int>, ?siempty:Array<StdTypes.Int>, ?sb:Array<Bool>, ?ai:haxe.ds.Vector<StdTypes.Int>, ?msi:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?msione:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?msiempty:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?mxi:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>, ?mii:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?mi32s:stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>, ?mi64s:stdgo.GoMap<stdgo.GoInt64, stdgo.GoString>, ?mui32s:stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>, ?mui64s:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>, ?mi8s:stdgo.GoMap<stdgo.GoInt8, stdgo.GoString>, ?mui8s:stdgo.GoMap<stdgo.GoUInt8, stdgo.GoString>, ?smsi:Array<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>, ?empty0:stdgo.AnyInterface, ?empty1:stdgo.AnyInterface, ?empty2:stdgo.AnyInterface, ?empty3:stdgo.AnyInterface, ?empty4:stdgo.AnyInterface, ?nonEmptyInterface:stdgo._internal.text.template.Template.I, ?nonEmptyInterfacePtS:stdgo._internal.text.template.Template.I, ?nonEmptyInterfaceNil:stdgo._internal.text.template.Template.I, ?nonEmptyInterfaceTypedNil:stdgo._internal.text.template.Template.I, ?str:stdgo._internal.fmt.Fmt.Stringer, ?err:stdgo.Error, ?pi:stdgo.Pointer<StdTypes.Int>, ?ps:stdgo.Pointer<String>, ?psi:Array<StdTypes.Int>, ?nil:stdgo.Pointer<StdTypes.Int>, ?binaryFunc:(stdgo.GoString, stdgo.GoString) -> stdgo.GoString, ?variadicFunc:stdgo.Slice<stdgo.GoString> -> stdgo.GoString, ?variadicFuncInt:(stdgo.GoInt, stdgo.Slice<stdgo.GoString>) -> stdgo.GoString, ?nilOKFunc:stdgo.Pointer<stdgo.GoInt> -> Bool, ?errFunc:() -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; }, ?panicFunc:() -> stdgo.GoString, ?tmpl:stdgo._internal.text.template.Template.Template, ?_unexported:StdTypes.Int) this = new stdgo._internal.text.template.Template.T_(
_True,
i,
u16,
x,
s,
floatZero,
complexZero,
u,
v0,
v1,
v2,
w0,
w1,
w2,
([for (i in si) i] : stdgo.Slice<stdgo.GoInt>),
([for (i in sicap) i] : stdgo.Slice<stdgo.GoInt>),
([for (i in siempty) i] : stdgo.Slice<stdgo.GoInt>),
([for (i in sb) i] : stdgo.Slice<Bool>),
([for (i in ai) i] : stdgo.GoArray<stdgo.GoInt>),
msi,
msione,
msiempty,
mxi,
mii,
mi32s,
mi64s,
mui32s,
mui64s,
mi8s,
mui8s,
([for (i in smsi) i] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>),
empty0,
empty1,
empty2,
empty3,
empty4,
nonEmptyInterface,
nonEmptyInterfacePtS,
nonEmptyInterfaceNil,
nonEmptyInterfaceTypedNil,
str,
err,
pi,
ps,
psi,
nil,
binaryFunc,
variadicFunc,
variadicFuncInt,
nilOKFunc,
errFunc,
panicFunc,
tmpl,
_unexported);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.U_static_extension) abstract U(stdgo._internal.text.template.Template.U) from stdgo._internal.text.template.Template.U to stdgo._internal.text.template.Template.U {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.text.template.Template.U(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.V_static_extension) abstract V(stdgo._internal.text.template.Template.V) from stdgo._internal.text.template.Template.V to stdgo._internal.text.template.Template.V {
    public var _j(get, set) : StdTypes.Int;
    function get__j():StdTypes.Int return this._j;
    function set__j(v:StdTypes.Int):StdTypes.Int {
        this._j = v;
        return v;
    }
    public function new(?_j:StdTypes.Int) this = new stdgo._internal.text.template.Template.V(_j);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.W_static_extension) abstract W(stdgo._internal.text.template.Template.W) from stdgo._internal.text.template.Template.W to stdgo._internal.text.template.Template.W {
    public var _k(get, set) : StdTypes.Int;
    function get__k():StdTypes.Int return this._k;
    function set__k(v:StdTypes.Int):StdTypes.Int {
        this._k = v;
        return v;
    }
    public function new(?_k:StdTypes.Int) this = new stdgo._internal.text.template.Template.W(_k);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_execTest(stdgo._internal.text.template.Template.T_execTest) from stdgo._internal.text.template.Template.T_execTest to stdgo._internal.text.template.Template.T_execTest {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = v;
        return v;
    }
    public var _output(get, set) : String;
    function get__output():String return this._output;
    function set__output(v:String):String {
        this._output = v;
        return v;
    }
    public var _data(get, set) : stdgo.AnyInterface;
    function get__data():stdgo.AnyInterface return this._data;
    function set__data(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._data = v;
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_name:String, ?_input:String, ?_output:String, ?_data:stdgo.AnyInterface, ?_ok:Bool) this = new stdgo._internal.text.template.Template.T_execTest(_name, _input, _output, _data, _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.CustomError_static_extension) abstract CustomError(stdgo._internal.text.template.Template.CustomError) from stdgo._internal.text.template.Template.CustomError to stdgo._internal.text.template.Template.CustomError {
    public function new() this = new stdgo._internal.text.template.Template.CustomError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Tree(stdgo._internal.text.template.Template.Tree) from stdgo._internal.text.template.Template.Tree to stdgo._internal.text.template.Template.Tree {
    public var val(get, set) : StdTypes.Int;
    function get_val():StdTypes.Int return this.val;
    function set_val(v:StdTypes.Int):StdTypes.Int {
        this.val = v;
        return v;
    }
    public var left(get, set) : stdgo._internal.text.template.Template.Tree;
    function get_left():stdgo._internal.text.template.Template.Tree return this.left;
    function set_left(v:stdgo._internal.text.template.Template.Tree):stdgo._internal.text.template.Template.Tree {
        this.left = v;
        return v;
    }
    public var right(get, set) : stdgo._internal.text.template.Template.Tree;
    function get_right():stdgo._internal.text.template.Template.Tree return this.right;
    function set_right(v:stdgo._internal.text.template.Template.Tree):stdgo._internal.text.template.Template.Tree {
        this.right = v;
        return v;
    }
    public function new(?val:StdTypes.Int, ?left:stdgo._internal.text.template.Template.Tree, ?right:stdgo._internal.text.template.Template.Tree) this = new stdgo._internal.text.template.Template.Tree(val, left, right);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_cmpTest(stdgo._internal.text.template.Template.T_cmpTest) from stdgo._internal.text.template.Template.T_cmpTest to stdgo._internal.text.template.Template.T_cmpTest {
    public var _expr(get, set) : String;
    function get__expr():String return this._expr;
    function set__expr(v:String):String {
        this._expr = v;
        return v;
    }
    public var _truth(get, set) : String;
    function get__truth():String return this._truth;
    function set__truth(v:String):String {
        this._truth = v;
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_expr:String, ?_truth:String, ?_ok:Bool) this = new stdgo._internal.text.template.Template.T_cmpTest(_expr, _truth, _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_multiParseTest(stdgo._internal.text.template.Template.T_multiParseTest) from stdgo._internal.text.template.Template.T_multiParseTest to stdgo._internal.text.template.Template.T_multiParseTest {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _input(get, set) : String;
    function get__input():String return this._input;
    function set__input(v:String):String {
        this._input = v;
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public var _names(get, set) : Array<String>;
    function get__names():Array<String> return [for (i in this._names) i];
    function set__names(v:Array<String>):Array<String> {
        this._names = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _results(get, set) : Array<String>;
    function get__results():Array<String> return [for (i in this._results) i];
    function set__results(v:Array<String>):Array<String> {
        this._results = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_name:String, ?_input:String, ?_ok:Bool, ?_names:Array<String>, ?_results:Array<String>) this = new stdgo._internal.text.template.Template.T_multiParseTest(_name, _input, _ok, ([for (i in _names) i] : stdgo.Slice<stdgo.GoString>), ([for (i in _results) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_option(stdgo._internal.text.template.Template.T_option) from stdgo._internal.text.template.Template.T_option to stdgo._internal.text.template.Template.T_option {
    public var _missingKey(get, set) : stdgo._internal.text.template.Template.T_missingKeyAction;
    function get__missingKey():stdgo._internal.text.template.Template.T_missingKeyAction return this._missingKey;
    function set__missingKey(v:stdgo._internal.text.template.Template.T_missingKeyAction):stdgo._internal.text.template.Template.T_missingKeyAction {
        this._missingKey = v;
        return v;
    }
    public function new(?_missingKey:stdgo._internal.text.template.Template.T_missingKeyAction) this = new stdgo._internal.text.template.Template.T_option(_missingKey);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_common(stdgo._internal.text.template.Template.T_common) from stdgo._internal.text.template.Template.T_common to stdgo._internal.text.template.Template.T_common {
    public var _tmpl(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template.Template>>;
    function get__tmpl():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template.Template>> return this._tmpl;
    function set__tmpl(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template.Template>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template.Template>> {
        this._tmpl = v;
        return v;
    }
    public var _muTmpl(get, set) : stdgo._internal.sync.Sync.RWMutex;
    function get__muTmpl():stdgo._internal.sync.Sync.RWMutex return this._muTmpl;
    function set__muTmpl(v:stdgo._internal.sync.Sync.RWMutex):stdgo._internal.sync.Sync.RWMutex {
        this._muTmpl = v;
        return v;
    }
    public var _option(get, set) : stdgo._internal.text.template.Template.T_option;
    function get__option():stdgo._internal.text.template.Template.T_option return this._option;
    function set__option(v:stdgo._internal.text.template.Template.T_option):stdgo._internal.text.template.Template.T_option {
        this._option = v;
        return v;
    }
    public var _muFuncs(get, set) : stdgo._internal.sync.Sync.RWMutex;
    function get__muFuncs():stdgo._internal.sync.Sync.RWMutex return this._muFuncs;
    function set__muFuncs(v:stdgo._internal.sync.Sync.RWMutex):stdgo._internal.sync.Sync.RWMutex {
        this._muFuncs = v;
        return v;
    }
    public var _parseFuncs(get, set) : stdgo._internal.text.template.Template.FuncMap;
    function get__parseFuncs():stdgo._internal.text.template.Template.FuncMap return this._parseFuncs;
    function set__parseFuncs(v:stdgo._internal.text.template.Template.FuncMap):stdgo._internal.text.template.Template.FuncMap {
        this._parseFuncs = v;
        return v;
    }
    public var _execFuncs(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>;
    function get__execFuncs():stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value> return this._execFuncs;
    function set__execFuncs(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>):stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value> {
        this._execFuncs = v;
        return v;
    }
    public function new(?_tmpl:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template.Template>>, ?_muTmpl:stdgo._internal.sync.Sync.RWMutex, ?_option:stdgo._internal.text.template.Template.T_option, ?_muFuncs:stdgo._internal.sync.Sync.RWMutex, ?_parseFuncs:stdgo._internal.text.template.Template.FuncMap, ?_execFuncs:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect.Value>) this = new stdgo._internal.text.template.Template.T_common(_tmpl, _muTmpl, _option, _muFuncs, _parseFuncs, _execFuncs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.Template__static_extension) abstract Template_(stdgo._internal.text.template.Template.Template) from stdgo._internal.text.template.Template.Template to stdgo._internal.text.template.Template.Template {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var tree(get, set) : stdgo._internal.text.template.parse.Parse.Tree;
    function get_tree():stdgo._internal.text.template.parse.Parse.Tree return this.tree;
    function set_tree(v:stdgo._internal.text.template.parse.Parse.Tree):stdgo._internal.text.template.parse.Parse.Tree {
        this.tree = v;
        return v;
    }
    public var _common(get, set) : stdgo._internal.text.template.Template.T_common;
    function get__common():stdgo._internal.text.template.Template.T_common return this._common;
    function set__common(v:stdgo._internal.text.template.Template.T_common):stdgo._internal.text.template.Template.T_common {
        this._common = v;
        return v;
    }
    public var _leftDelim(get, set) : String;
    function get__leftDelim():String return this._leftDelim;
    function set__leftDelim(v:String):String {
        this._leftDelim = v;
        return v;
    }
    public var _rightDelim(get, set) : String;
    function get__rightDelim():String return this._rightDelim;
    function set__rightDelim(v:String):String {
        this._rightDelim = v;
        return v;
    }
    public function new(?_name:String, ?tree:stdgo._internal.text.template.parse.Parse.Tree, ?_common:stdgo._internal.text.template.Template.T_common, ?_leftDelim:String, ?_rightDelim:String) this = new stdgo._internal.text.template.Template.Template(_name, tree, _common, _leftDelim, _rightDelim);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.text.template.Template.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.text.template.Template.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.text.template.Template.T__struct_2;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.text.template.Template.T__struct_3;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.text.template.Template.T__struct_4;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.text.template.Template.T__struct_5;
class T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.text.template.Template.T__struct_6;
class T__struct_7_static_extension {
    public static function _doSlow(__self__:T__struct_7, _f:() -> Void) {
        final _f = _f;
        stdgo._internal.text.template.Template.T__struct_7_static_extension._doSlow(__self__, _f);
    }
    public static function do_(__self__:T__struct_7, _f:() -> Void) {
        final _f = _f;
        stdgo._internal.text.template.Template.T__struct_7_static_extension.do_(__self__, _f);
    }
}
typedef T__struct_7 = stdgo._internal.text.template.Template.T__struct_7;
class T__struct_8_static_extension {

}
typedef T__struct_8 = stdgo._internal.text.template.Template.T__struct_8;
typedef S = stdgo._internal.text.template.Template.S;
typedef ErrorWriter = stdgo._internal.text.template.Template.ErrorWriter;
typedef FuncMap = stdgo._internal.text.template.Template.FuncMap;
typedef T_kind = stdgo._internal.text.template.Template.T_kind;
typedef T_missingKeyAction = stdgo._internal.text.template.Template.T_missingKeyAction;
@:structInit abstract T_testIssue48215___localname___A_58273(stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273) from stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273 to stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273 {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.template.Template.T_testIssue48215___localname___B_58304_static_extension) abstract T_testIssue48215___localname___B_58304(stdgo._internal.text.template.Template.T_testIssue48215___localname___B_58304) from stdgo._internal.text.template.Template.T_testIssue48215___localname___B_58304 to stdgo._internal.text.template.Template.T_testIssue48215___localname___B_58304 {
    public var a(get, set) : stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273;
    function get_a():stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273 return this.a;
    function set_a(v:stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273):stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273 {
        this.a = v;
        return v;
    }
    public function new(?a:stdgo._internal.text.template.Template.T_testIssue48215___localname___A_58273) this = new stdgo._internal.text.template.Template.T_testIssue48215___localname___B_58304(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_state_static_extension {
    static public function _printValue(_s:T_state, _n:stdgo._internal.text.template.parse.Parse.Node, _v:stdgo._internal.reflect.Reflect.Value):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._printValue(_s, _n, _v);
    }
    static public function _evalEmptyInterface(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalEmptyInterface(_s, _dot, _n);
    }
    static public function _evalComplex(_s:T_state, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalComplex(_s, _typ, _n);
    }
    static public function _evalFloat(_s:T_state, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalFloat(_s, _typ, _n);
    }
    static public function _evalUnsignedInteger(_s:T_state, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalUnsignedInteger(_s, _typ, _n);
    }
    static public function _evalInteger(_s:T_state, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalInteger(_s, _typ, _n);
    }
    static public function _evalString(_s:T_state, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalString(_s, _typ, _n);
    }
    static public function _evalBool(_s:T_state, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalBool(_s, _typ, _n);
    }
    static public function _evalArg(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _typ:stdgo._internal.reflect.Reflect.Type_, _n:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalArg(_s, _dot, _typ, _n);
    }
    static public function _validateType(_s:T_state, _value:stdgo._internal.reflect.Reflect.Value, _typ:stdgo._internal.reflect.Reflect.Type_):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._validateType(_s, _value, _typ);
    }
    static public function _evalCall(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _fun:stdgo._internal.reflect.Reflect.Value, _isBuiltin:Bool, _node:stdgo._internal.text.template.parse.Parse.Node, _name:String, _args:Array<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>);
        return stdgo._internal.text.template.Template.T_state_static_extension._evalCall(_s, _dot, _fun, _isBuiltin, _node, _name, _args, _final);
    }
    static public function _evalField(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _fieldName:String, _node:stdgo._internal.text.template.parse.Parse.Node, _args:Array<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value, _receiver:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>);
        return stdgo._internal.text.template.Template.T_state_static_extension._evalField(_s, _dot, _fieldName, _node, _args, _final, _receiver);
    }
    static public function _evalFunction(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _node:stdgo._internal.text.template.parse.Parse.IdentifierNode, _cmd:stdgo._internal.text.template.parse.Parse.Node, _args:Array<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>);
        return stdgo._internal.text.template.Template.T_state_static_extension._evalFunction(_s, _dot, _node, _cmd, _args, _final);
    }
    static public function _evalFieldChain(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _receiver:stdgo._internal.reflect.Reflect.Value, _node:stdgo._internal.text.template.parse.Parse.Node, _ident:Array<String>, _args:Array<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        final _ident = ([for (i in _ident) i] : stdgo.Slice<stdgo.GoString>);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>);
        return stdgo._internal.text.template.Template.T_state_static_extension._evalFieldChain(_s, _dot, _receiver, _node, _ident, _args, _final);
    }
    static public function _evalVariableNode(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _variable:stdgo._internal.text.template.parse.Parse.VariableNode, _args:Array<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>);
        return stdgo._internal.text.template.Template.T_state_static_extension._evalVariableNode(_s, _dot, _variable, _args, _final);
    }
    static public function _evalChainNode(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _chain:stdgo._internal.text.template.parse.Parse.ChainNode, _args:Array<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>);
        return stdgo._internal.text.template.Template.T_state_static_extension._evalChainNode(_s, _dot, _chain, _args, _final);
    }
    static public function _evalFieldNode(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _field:stdgo._internal.text.template.parse.Parse.FieldNode, _args:Array<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>);
        return stdgo._internal.text.template.Template.T_state_static_extension._evalFieldNode(_s, _dot, _field, _args, _final);
    }
    static public function _idealConstant(_s:T_state, _constant:stdgo._internal.text.template.parse.Parse.NumberNode):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._idealConstant(_s, _constant);
    }
    static public function _evalCommand(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _cmd:stdgo._internal.text.template.parse.Parse.CommandNode, _final:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalCommand(_s, _dot, _cmd, _final);
    }
    static public function _notAFunction(_s:T_state, _args:Array<stdgo._internal.text.template.parse.Parse.Node>, _final:stdgo._internal.reflect.Reflect.Value):Void {
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse.Node>);
        stdgo._internal.text.template.Template.T_state_static_extension._notAFunction(_s, _args, _final);
    }
    static public function _evalPipeline(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _pipe:stdgo._internal.text.template.parse.Parse.PipeNode):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._evalPipeline(_s, _dot, _pipe);
    }
    static public function _walkTemplate(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _t:stdgo._internal.text.template.parse.Parse.TemplateNode):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._walkTemplate(_s, _dot, _t);
    }
    static public function _walkRange(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _r:stdgo._internal.text.template.parse.Parse.RangeNode):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._walkRange(_s, _dot, _r);
    }
    static public function _walkIfOrWith(_s:T_state, _typ:stdgo._internal.text.template.parse.Parse.NodeType, _dot:stdgo._internal.reflect.Reflect.Value, _pipe:stdgo._internal.text.template.parse.Parse.PipeNode, _list:stdgo._internal.text.template.parse.Parse.ListNode, _elseList:stdgo._internal.text.template.parse.Parse.ListNode):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._walkIfOrWith(_s, _typ, _dot, _pipe, _list, _elseList);
    }
    static public function _walk(_s:T_state, _dot:stdgo._internal.reflect.Reflect.Value, _node:stdgo._internal.text.template.parse.Parse.Node):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._walk(_s, _dot, _node);
    }
    static public function _writeError(_s:T_state, _err:stdgo.Error):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._writeError(_s, _err);
    }
    static public function _errorf(_s:T_state, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._errorf(_s, _format, ...[for (i in _args) i]);
    }
    static public function _at(_s:T_state, _node:stdgo._internal.text.template.parse.Parse.Node):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._at(_s, _node);
    }
    static public function _varValue(_s:T_state, _name:String):stdgo._internal.reflect.Reflect.Value {
        return stdgo._internal.text.template.Template.T_state_static_extension._varValue(_s, _name);
    }
    static public function _setTopVar(_s:T_state, _n:StdTypes.Int, _value:stdgo._internal.reflect.Reflect.Value):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._setTopVar(_s, _n, _value);
    }
    static public function _setVar(_s:T_state, _name:String, _value:stdgo._internal.reflect.Reflect.Value):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._setVar(_s, _name, _value);
    }
    static public function _pop(_s:T_state, _mark:StdTypes.Int):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._pop(_s, _mark);
    }
    static public function _mark(_s:T_state):StdTypes.Int {
        return stdgo._internal.text.template.Template.T_state_static_extension._mark(_s);
    }
    static public function _push(_s:T_state, _name:String, _value:stdgo._internal.reflect.Reflect.Value):Void {
        stdgo._internal.text.template.Template.T_state_static_extension._push(_s, _name, _value);
    }
}
class ExecError_static_extension {
    static public function unwrap(_e:ExecError):stdgo.Error {
        return stdgo._internal.text.template.Template.ExecError_static_extension.unwrap(_e);
    }
    static public function error(_e:ExecError):String {
        return stdgo._internal.text.template.Template.ExecError_static_extension.error(_e);
    }
}
class T__static_extension {
    static public function getU(_t:T_):U {
        return stdgo._internal.text.template.Template.T__static_extension.getU(_t);
    }
    static public function myError(_t:T_, _error:Bool):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.T__static_extension.myError(_t, _error);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function madd(_t:T_, _a:StdTypes.Int, _b:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.text.template.Template.T__static_extension.madd(_t, _a, _b)) i];
    }
    static public function copy(_t:T_):T_ {
        return stdgo._internal.text.template.Template.T__static_extension.copy(_t);
    }
    static public function method3(_t:T_, _v:stdgo.AnyInterface):String {
        return stdgo._internal.text.template.Template.T__static_extension.method3(_t, _v);
    }
    static public function method2(_t:T_, _a:std.UInt, _b:String):String {
        return stdgo._internal.text.template.Template.T__static_extension.method2(_t, _a, _b);
    }
    static public function method1(_t:T_, _a:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.text.template.Template.T__static_extension.method1(_t, _a);
    }
    static public function method0(_t:T_):String {
        return stdgo._internal.text.template.Template.T__static_extension.method0(_t);
    }
}
class U_static_extension {
    static public function trueFalse(_u:U, _b:Bool):String {
        return stdgo._internal.text.template.Template.U_static_extension.trueFalse(_u, _b);
    }
}
class V_static_extension {
    static public function string(_v:V):String {
        return stdgo._internal.text.template.Template.V_static_extension.string(_v);
    }
}
class W_static_extension {
    static public function error(_w:W):String {
        return stdgo._internal.text.template.Template.W_static_extension.error(_w);
    }
}
class CustomError_static_extension {
    static public function error(_:CustomError):String {
        return stdgo._internal.text.template.Template.CustomError_static_extension.error(_);
    }
}
class Template__static_extension {
    static public function _associate(_t:Template_, _new:Template_, _tree:stdgo._internal.text.template.parse.Parse.Tree):Bool {
        return stdgo._internal.text.template.Template.Template_static_extension._associate(_t, _new, _tree);
    }
    static public function parse(_t:Template_, _text:String):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension.parse(_t, _text);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lookup(_t:Template_, _name:String):Template_ {
        return stdgo._internal.text.template.Template.Template_static_extension.lookup(_t, _name);
    }
    static public function funcs(_t:Template_, _funcMap:FuncMap):Template_ {
        return stdgo._internal.text.template.Template.Template_static_extension.funcs(_t, _funcMap);
    }
    static public function delims(_t:Template_, _left:String, _right:String):Template_ {
        return stdgo._internal.text.template.Template.Template_static_extension.delims(_t, _left, _right);
    }
    static public function templates(_t:Template_):Array<Template_> {
        return [for (i in stdgo._internal.text.template.Template.Template_static_extension.templates(_t)) i];
    }
    static public function addParseTree(_t:Template_, _name:String, _tree:stdgo._internal.text.template.parse.Parse.Tree):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension.addParseTree(_t, _name, _tree);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _copy(_t:Template_, _c:T_common):Template_ {
        return stdgo._internal.text.template.Template.Template_static_extension._copy(_t, _c);
    }
    static public function clone(_t:Template_):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension.clone(_t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _init(_t:Template_):Void {
        stdgo._internal.text.template.Template.Template_static_extension._init(_t);
    }
    static public function new_(_t:Template_, _name:String):Template_ {
        return stdgo._internal.text.template.Template.Template_static_extension.new_(_t, _name);
    }
    static public function name(_t:Template_):String {
        return stdgo._internal.text.template.Template.Template_static_extension.name(_t);
    }
    static public function _setOption(_t:Template_, _opt:String):Void {
        stdgo._internal.text.template.Template.Template_static_extension._setOption(_t, _opt);
    }
    static public function option(_t:Template_, _opt:haxe.Rest<String>):Template_ {
        return stdgo._internal.text.template.Template.Template_static_extension.option(_t, ...[for (i in _opt) i]);
    }
    static public function parseFS(_t:Template_, _fsys:stdgo._internal.io.fs.Fs.FS, _patterns:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension.parseFS(_t, _fsys, ...[for (i in _patterns) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseGlob(_t:Template_, _pattern:String):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension.parseGlob(_t, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function parseFiles(_t:Template_, _filenames:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension.parseFiles(_t, ...[for (i in _filenames) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function definedTemplates(_t:Template_):String {
        return stdgo._internal.text.template.Template.Template_static_extension.definedTemplates(_t);
    }
    static public function _execute(_t:Template_, _wr:stdgo._internal.io.Io.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.text.template.Template.Template_static_extension._execute(_t, _wr, _data);
    }
    static public function execute(_t:Template_, _wr:stdgo._internal.io.Io.Writer, _data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.text.template.Template.Template_static_extension.execute(_t, _wr, _data);
    }
    static public function executeTemplate(_t:Template_, _wr:stdgo._internal.io.Io.Writer, _name:String, _data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.text.template.Template.Template_static_extension.executeTemplate(_t, _wr, _name, _data);
    }
    public static function _withControl(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._withControl(__self__);
    }
    public static function _useVar(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:String):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._useVar(__self__, _pos, _text);
    }
    public static function _unexpected(__self__:Template_, _token:stdgo._internal.text.template.parse.Parse.T_item, _context:String) {
        stdgo._internal.text.template.Template.Template_static_extension._unexpected(__self__, _token, _context);
    }
    public static function _textOrAction(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._textOrAction(__self__);
    }
    public static function _term(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._term(__self__);
    }
    public static function _templateControl(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._templateControl(__self__);
    }
    public static function _stopParse(__self__:Template_) {
        stdgo._internal.text.template.Template.Template_static_extension._stopParse(__self__);
    }
    public static function _startParse(__self__:Template_, _funcs:Array<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>, _lex:stdgo._internal.text.template.parse.Parse.T_lexer, _treeSet:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse.Tree>>) {
        final _funcs = ([for (i in _funcs) i] : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        stdgo._internal.text.template.Template.Template_static_extension._startParse(__self__, _funcs, _lex, _treeSet);
    }
    public static function _recover(__self__:Template_, _errp:stdgo.Error) {
        stdgo._internal.text.template.Template.Template_static_extension._recover(__self__, _errp);
    }
    public static function _rangeControl(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._rangeControl(__self__);
    }
    public static function _popVars(__self__:Template_, __0:StdTypes.Int) {
        stdgo._internal.text.template.Template.Template_static_extension._popVars(__self__, __0);
    }
    public static function _pipeline(__self__:Template_, _context:String, _end:stdgo._internal.text.template.parse.Parse.T_itemType):stdgo._internal.text.template.parse.Parse.PipeNode {
        return stdgo._internal.text.template.Template.Template_static_extension._pipeline(__self__, _context, _end);
    }
    public static function _peekNonSpace(__self__:Template_):stdgo._internal.text.template.parse.Parse.T_item {
        return stdgo._internal.text.template.Template.Template_static_extension._peekNonSpace(__self__);
    }
    public static function _peek(__self__:Template_):stdgo._internal.text.template.parse.Parse.T_item {
        return stdgo._internal.text.template.Template.Template_static_extension._peek(__self__);
    }
    public static function _parseTemplateName(__self__:Template_, _token:stdgo._internal.text.template.parse.Parse.T_item, _context:String):String {
        return stdgo._internal.text.template.Template.Template_static_extension._parseTemplateName(__self__, _token, _context);
    }
    public static function _parseDefinition(__self__:Template_) {
        stdgo._internal.text.template.Template.Template_static_extension._parseDefinition(__self__);
    }
    public static function _parseControl(__self__:Template_, _allowElseIf:Bool, _context:String):stdgo.Tuple.Tuple5<stdgo._internal.text.template.parse.Parse.Pos, StdTypes.Int, stdgo._internal.text.template.parse.Parse.PipeNode, stdgo._internal.text.template.parse.Parse.ListNode, stdgo._internal.text.template.parse.Parse.ListNode> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension._parseControl(__self__, _allowElseIf, _context);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    public static function _parse(__self__:Template_) {
        stdgo._internal.text.template.Template.Template_static_extension._parse(__self__);
    }
    public static function _operand(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._operand(__self__);
    }
    public static function _nextNonSpace(__self__:Template_):stdgo._internal.text.template.parse.Parse.T_item {
        return stdgo._internal.text.template.Template.Template_static_extension._nextNonSpace(__self__);
    }
    public static function _next(__self__:Template_):stdgo._internal.text.template.parse.Parse.T_item {
        return stdgo._internal.text.template.Template.Template_static_extension._next(__self__);
    }
    public static function _newWith(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int, _pipe:stdgo._internal.text.template.parse.Parse.PipeNode, _list:stdgo._internal.text.template.parse.Parse.ListNode, _elseList:stdgo._internal.text.template.parse.Parse.ListNode):stdgo._internal.text.template.parse.Parse.WithNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newWith(__self__, _pos, _line, _pipe, _list, _elseList);
    }
    public static function _newVariable(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:String):stdgo._internal.text.template.parse.Parse.VariableNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newVariable(__self__, _pos, _text);
    }
    public static function _newText(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:String):stdgo._internal.text.template.parse.Parse.TextNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newText(__self__, _pos, _text);
    }
    public static function _newTemplate(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int, _name:String, _pipe:stdgo._internal.text.template.parse.Parse.PipeNode):stdgo._internal.text.template.parse.Parse.TemplateNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newTemplate(__self__, _pos, _line, _name, _pipe);
    }
    public static function _newString(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _orig:String, _text:String):stdgo._internal.text.template.parse.Parse.StringNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newString(__self__, _pos, _orig, _text);
    }
    public static function _newRange(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int, _pipe:stdgo._internal.text.template.parse.Parse.PipeNode, _list:stdgo._internal.text.template.parse.Parse.ListNode, _elseList:stdgo._internal.text.template.parse.Parse.ListNode):stdgo._internal.text.template.parse.Parse.RangeNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newRange(__self__, _pos, _line, _pipe, _list, _elseList);
    }
    public static function _newPipeline(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int, _vars:Array<stdgo._internal.text.template.parse.Parse.VariableNode>):stdgo._internal.text.template.parse.Parse.PipeNode {
        final _vars = ([for (i in _vars) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse.VariableNode>>);
        return stdgo._internal.text.template.Template.Template_static_extension._newPipeline(__self__, _pos, _line, _vars);
    }
    public static function _newNumber(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:String, _typ:stdgo._internal.text.template.parse.Parse.T_itemType):stdgo.Tuple<stdgo._internal.text.template.parse.Parse.NumberNode, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension._newNumber(__self__, _pos, _text, _typ);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _newNil(__self__:Template_, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo._internal.text.template.parse.Parse.NilNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newNil(__self__, __0);
    }
    public static function _newList(__self__:Template_, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo._internal.text.template.parse.Parse.ListNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newList(__self__, __0);
    }
    public static function _newIf(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int, _pipe:stdgo._internal.text.template.parse.Parse.PipeNode, _list:stdgo._internal.text.template.parse.Parse.ListNode, _elseList:stdgo._internal.text.template.parse.Parse.ListNode):stdgo._internal.text.template.parse.Parse.IfNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newIf(__self__, _pos, _line, _pipe, _list, _elseList);
    }
    public static function _newField(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:String):stdgo._internal.text.template.parse.Parse.FieldNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newField(__self__, _pos, _text);
    }
    public static function _newEnd(__self__:Template_, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo._internal.text.template.parse.Parse.T_endNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newEnd(__self__, __0);
    }
    public static function _newElse(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int):stdgo._internal.text.template.parse.Parse.T_elseNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newElse(__self__, _pos, _line);
    }
    public static function _newDot(__self__:Template_, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo._internal.text.template.parse.Parse.DotNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newDot(__self__, __0);
    }
    public static function _newContinue(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int):stdgo._internal.text.template.parse.Parse.ContinueNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newContinue(__self__, _pos, _line);
    }
    public static function _newComment(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _text:String):stdgo._internal.text.template.parse.Parse.CommentNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newComment(__self__, _pos, _text);
    }
    public static function _newCommand(__self__:Template_, __0:stdgo._internal.text.template.parse.Parse.Pos):stdgo._internal.text.template.parse.Parse.CommandNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newCommand(__self__, __0);
    }
    public static function _newChain(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _node:stdgo._internal.text.template.parse.Parse.Node):stdgo._internal.text.template.parse.Parse.ChainNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newChain(__self__, _pos, _node);
    }
    public static function _newBreak(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int):stdgo._internal.text.template.parse.Parse.BreakNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newBreak(__self__, _pos, _line);
    }
    public static function _newBool(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, true:Bool):stdgo._internal.text.template.parse.Parse.BoolNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newBool(__self__, _pos, true);
    }
    public static function _newAction(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int, _pipe:stdgo._internal.text.template.parse.Parse.PipeNode):stdgo._internal.text.template.parse.Parse.ActionNode {
        return stdgo._internal.text.template.Template.Template_static_extension._newAction(__self__, _pos, _line, _pipe);
    }
    public static function _itemList(__self__:Template_):stdgo.Tuple<stdgo._internal.text.template.parse.Parse.ListNode, stdgo._internal.text.template.parse.Parse.Node> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension._itemList(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ifControl(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._ifControl(__self__);
    }
    public static function _hasFunction(__self__:Template_, __0:String):Bool {
        return stdgo._internal.text.template.Template.Template_static_extension._hasFunction(__self__, __0);
    }
    public static function _expectOneOf(__self__:Template_, _expected1:stdgo._internal.text.template.parse.Parse.T_itemType, _expected2:stdgo._internal.text.template.parse.Parse.T_itemType, _context:String):stdgo._internal.text.template.parse.Parse.T_item {
        return stdgo._internal.text.template.Template.Template_static_extension._expectOneOf(__self__, _expected1, _expected2, _context);
    }
    public static function _expect(__self__:Template_, _expected:stdgo._internal.text.template.parse.Parse.T_itemType, _context:String):stdgo._internal.text.template.parse.Parse.T_item {
        return stdgo._internal.text.template.Template.Template_static_extension._expect(__self__, _expected, _context);
    }
    public static function _errorf(__self__:Template_, _format:String, _args:haxe.Rest<stdgo.AnyInterface>) {
        stdgo._internal.text.template.Template.Template_static_extension._errorf(__self__, _format, ...[for (i in _args) i]);
    }
    public static function _error(__self__:Template_, __0:stdgo.Error) {
        stdgo._internal.text.template.Template.Template_static_extension._error(__self__, __0);
    }
    public static function _endControl(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._endControl(__self__);
    }
    public static function _elseControl(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._elseControl(__self__);
    }
    public static function _continueControl(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._continueControl(__self__, _pos, _line);
    }
    public static function _command(__self__:Template_):stdgo._internal.text.template.parse.Parse.CommandNode {
        return stdgo._internal.text.template.Template.Template_static_extension._command(__self__);
    }
    public static function _clearActionLine(__self__:Template_) {
        stdgo._internal.text.template.Template.Template_static_extension._clearActionLine(__self__);
    }
    public static function _checkPipeline(__self__:Template_, _pipe:stdgo._internal.text.template.parse.Parse.PipeNode, _context:String) {
        stdgo._internal.text.template.Template.Template_static_extension._checkPipeline(__self__, _pipe, _context);
    }
    public static function _breakControl(__self__:Template_, _pos:stdgo._internal.text.template.parse.Parse.Pos, _line:StdTypes.Int):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._breakControl(__self__, _pos, _line);
    }
    public static function _blockControl(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._blockControl(__self__);
    }
    public static function _backup3(__self__:Template_, _t2:stdgo._internal.text.template.parse.Parse.T_item, _t1:stdgo._internal.text.template.parse.Parse.T_item) {
        stdgo._internal.text.template.Template.Template_static_extension._backup3(__self__, _t2, _t1);
    }
    public static function _backup2(__self__:Template_, _t1:stdgo._internal.text.template.parse.Parse.T_item) {
        stdgo._internal.text.template.Template.Template_static_extension._backup2(__self__, _t1);
    }
    public static function _backup(__self__:Template_) {
        stdgo._internal.text.template.Template.Template_static_extension._backup(__self__);
    }
    public static function _add(__self__:Template_) {
        stdgo._internal.text.template.Template.Template_static_extension._add(__self__);
    }
    public static function _action(__self__:Template_):stdgo._internal.text.template.parse.Parse.Node {
        return stdgo._internal.text.template.Template.Template_static_extension._action(__self__);
    }
    public static function errorContext(__self__:Template_, _node:stdgo._internal.text.template.parse.Parse.Node):stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.text.template.Template.Template_static_extension.errorContext(__self__, _node);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function copy(__self__:Template_):stdgo._internal.text.template.parse.Parse.Tree {
        return stdgo._internal.text.template.Template.Template_static_extension.copy(__self__);
    }
}
class S_static_extension {
    static public function method0(_:S):String {
        return stdgo._internal.text.template.Template.S_static_extension.method0(_);
    }
}
class ErrorWriter_static_extension {
    static public function write(_e:ErrorWriter, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.text.template.Template.ErrorWriter_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_testIssue48215___localname___B_58304_static_extension {

}
/**
    /|*
    Package template implements data-driven templates for generating textual output.
    
    To generate HTML output, see [html/template], which has the same interface
    as this package but automatically secures HTML output against certain attacks.
    
    Templates are executed by applying them to a data structure. Annotations in the
    template refer to elements of the data structure (typically a field of a struct
    or a key in a map) to control execution and derive values to be displayed.
    Execution of the template walks the structure and sets the cursor, represented
    by a period '.' and called "dot", to the value at the current location in the
    structure as execution proceeds.
    
    The input text for a template is UTF-8-encoded text in any format.
    "Actions"--data evaluations or control structures--are delimited by
    "{{" and "}}"; all text outside actions is copied to the output unchanged.
    
    Once parsed, a template may be executed safely in parallel, although if parallel
    executions share a Writer the output may be interleaved.
    
    Here is a trivial example that prints "17 items are made of wool".
    
    	type Inventory struct {
    		Material string
    		Count    uint
    	}
    	sweaters := Inventory{"wool", 17}
    	tmpl, err := template.New("test").Parse("{{.Count}} items are made of {{.Material}}")
    	if err != nil { panic(err) }
    	err = tmpl.Execute(os.Stdout, sweaters)
    	if err != nil { panic(err) }
    
    More intricate examples appear below.
    
    Text and spaces
    
    By default, all text between actions is copied verbatim when the template is
    executed. For example, the string " items are made of " in the example above
    appears on standard output when the program is run.
    
    However, to aid in formatting template source code, if an action's left
    delimiter (by default "{{") is followed immediately by a minus sign and white
    space, all trailing white space is trimmed from the immediately preceding text.
    Similarly, if the right delimiter ("}}") is preceded by white space and a minus
    sign, all leading white space is trimmed from the immediately following text.
    In these trim markers, the white space must be present:
    "{{- 3}}" is like "{{3}}" but trims the immediately preceding text, while
    "{{-3}}" parses as an action containing the number -3.
    
    For instance, when executing the template whose source is
    
    	"{{23 -}} < {{- 45}}"
    
    the generated output would be
    
    	"23<45"
    
    For this trimming, the definition of white space characters is the same as in Go:
    space, horizontal tab, carriage return, and newline.
    
    Actions
    
    Here is the list of actions. "Arguments" and "pipelines" are evaluations of
    data, defined in detail in the corresponding sections that follow.
    
    *|/
    	{{/|* a comment *|/}}
    	{{- /|* a comment with white space trimmed from preceding and following text *|/ -}}
    		A comment; discarded. May contain newlines.
    		Comments do not nest and must start and end at the
    		delimiters, as shown here.
    /|*
    
    	{{pipeline}}
    		The default textual representation (the same as would be
    		printed by fmt.Print) of the value of the pipeline is copied
    		to the output.
    
    	{{if pipeline}} T1 {{end}}
    		If the value of the pipeline is empty, no output is generated;
    		otherwise, T1 is executed. The empty values are false, 0, any
    		nil pointer or interface value, and any array, slice, map, or
    		string of length zero.
    		Dot is unaffected.
    
    	{{if pipeline}} T1 {{else}} T0 {{end}}
    		If the value of the pipeline is empty, T0 is executed;
    		otherwise, T1 is executed. Dot is unaffected.
    
    	{{if pipeline}} T1 {{else if pipeline}} T0 {{end}}
    		To simplify the appearance of if-else chains, the else action
    		of an if may include another if directly; the effect is exactly
    		the same as writing
    			{{if pipeline}} T1 {{else}}{{if pipeline}} T0 {{end}}{{end}}
    
    	{{range pipeline}} T1 {{end}}
    		The value of the pipeline must be an array, slice, map, or channel.
    		If the value of the pipeline has length zero, nothing is output;
    		otherwise, dot is set to the successive elements of the array,
    		slice, or map and T1 is executed. If the value is a map and the
    		keys are of basic type with a defined order, the elements will be
    		visited in sorted key order.
    
    	{{range pipeline}} T1 {{else}} T0 {{end}}
    		The value of the pipeline must be an array, slice, map, or channel.
    		If the value of the pipeline has length zero, dot is unaffected and
    		T0 is executed; otherwise, dot is set to the successive elements
    		of the array, slice, or map and T1 is executed.
    
    	{{break}}
    		The innermost {{range pipeline}} loop is ended early, stopping the
    		current iteration and bypassing all remaining iterations.
    
    	{{continue}}
    		The current iteration of the innermost {{range pipeline}} loop is
    		stopped, and the loop starts the next iteration.
    
    	{{template "name"}}
    		The template with the specified name is executed with nil data.
    
    	{{template "name" pipeline}}
    		The template with the specified name is executed with dot set
    		to the value of the pipeline.
    
    	{{block "name" pipeline}} T1 {{end}}
    		A block is shorthand for defining a template
    			{{define "name"}} T1 {{end}}
    		and then executing it in place
    			{{template "name" pipeline}}
    		The typical use is to define a set of root templates that are
    		then customized by redefining the block templates within.
    
    	{{with pipeline}} T1 {{end}}
    		If the value of the pipeline is empty, no output is generated;
    		otherwise, dot is set to the value of the pipeline and T1 is
    		executed.
    
    	{{with pipeline}} T1 {{else}} T0 {{end}}
    		If the value of the pipeline is empty, dot is unaffected and T0
    		is executed; otherwise, dot is set to the value of the pipeline
    		and T1 is executed.
    
    Arguments
    
    An argument is a simple value, denoted by one of the following.
    
    	- A boolean, string, character, integer, floating-point, imaginary
    	  or complex constant in Go syntax. These behave like Go's untyped
    	  constants. Note that, as in Go, whether a large integer constant
    	  overflows when assigned or passed to a function can depend on whether
    	  the host machine's ints are 32 or 64 bits.
    	- The keyword nil, representing an untyped Go nil.
    	- The character '.' (period):
    		.
    	  The result is the value of dot.
    	- A variable name, which is a (possibly empty) alphanumeric string
    	  preceded by a dollar sign, such as
    		$piOver2
    	  or
    		$
    	  The result is the value of the variable.
    	  Variables are described below.
    	- The name of a field of the data, which must be a struct, preceded
    	  by a period, such as
    		.Field
    	  The result is the value of the field. Field invocations may be
    	  chained:
    	    .Field1.Field2
    	  Fields can also be evaluated on variables, including chaining:
    	    $x.Field1.Field2
    	- The name of a key of the data, which must be a map, preceded
    	  by a period, such as
    		.Key
    	  The result is the map element value indexed by the key.
    	  Key invocations may be chained and combined with fields to any
    	  depth:
    	    .Field1.Key1.Field2.Key2
    	  Although the key must be an alphanumeric identifier, unlike with
    	  field names they do not need to start with an upper case letter.
    	  Keys can also be evaluated on variables, including chaining:
    	    $x.key1.key2
    	- The name of a niladic method of the data, preceded by a period,
    	  such as
    		.Method
    	  The result is the value of invoking the method with dot as the
    	  receiver, dot.Method(). Such a method must have one return value (of
    	  any type) or two return values, the second of which is an error.
    	  If it has two and the returned error is non-nil, execution terminates
    	  and an error is returned to the caller as the value of Execute.
    	  Method invocations may be chained and combined with fields and keys
    	  to any depth:
    	    .Field1.Key1.Method1.Field2.Key2.Method2
    	  Methods can also be evaluated on variables, including chaining:
    	    $x.Method1.Field
    	- The name of a niladic function, such as
    		fun
    	  The result is the value of invoking the function, fun(). The return
    	  types and values behave as in methods. Functions and function
    	  names are described below.
    	- A parenthesized instance of one the above, for grouping. The result
    	  may be accessed by a field or map key invocation.
    		print (.F1 arg1) (.F2 arg2)
    		(.StructValuedMethod "arg").Field
    
    Arguments may evaluate to any type; if they are pointers the implementation
    automatically indirects to the base type when required.
    If an evaluation yields a function value, such as a function-valued
    field of a struct, the function is not invoked automatically, but it
    can be used as a truth value for an if action and the like. To invoke
    it, use the call function, defined below.
    
    Pipelines
    
    A pipeline is a possibly chained sequence of "commands". A command is a simple
    value (argument) or a function or method call, possibly with multiple arguments:
    
    	Argument
    		The result is the value of evaluating the argument.
    	.Method [Argument...]
    		The method can be alone or the last element of a chain but,
    		unlike methods in the middle of a chain, it can take arguments.
    		The result is the value of calling the method with the
    		arguments:
    			dot.Method(Argument1, etc.)
    	functionName [Argument...]
    		The result is the value of calling the function associated
    		with the name:
    			function(Argument1, etc.)
    		Functions and function names are described below.
    
    A pipeline may be "chained" by separating a sequence of commands with pipeline
    characters '|'. In a chained pipeline, the result of each command is
    passed as the last argument of the following command. The output of the final
    command in the pipeline is the value of the pipeline.
    
    The output of a command will be either one value or two values, the second of
    which has type error. If that second value is present and evaluates to
    non-nil, execution terminates and the error is returned to the caller of
    Execute.
    
    Variables
    
    A pipeline inside an action may initialize a variable to capture the result.
    The initialization has syntax
    
    	$variable := pipeline
    
    where $variable is the name of the variable. An action that declares a
    variable produces no output.
    
    Variables previously declared can also be assigned, using the syntax
    
    	$variable = pipeline
    
    If a "range" action initializes a variable, the variable is set to the
    successive elements of the iteration. Also, a "range" may declare two
    variables, separated by a comma:
    
    	range $index, $element := pipeline
    
    in which case $index and $element are set to the successive values of the
    array/slice index or map key and element, respectively. Note that if there is
    only one variable, it is assigned the element; this is opposite to the
    convention in Go range clauses.
    
    A variable's scope extends to the "end" action of the control structure ("if",
    "with", or "range") in which it is declared, or to the end of the template if
    there is no such control structure. A template invocation does not inherit
    variables from the point of its invocation.
    
    When execution begins, $ is set to the data argument passed to Execute, that is,
    to the starting value of dot.
    
    Examples
    
    Here are some example one-line templates demonstrating pipelines and variables.
    All produce the quoted word "output":
    
    	{{"\"output\""}}
    		A string constant.
    	{{`"output"`}}
    		A raw string constant.
    	{{printf "%q" "output"}}
    		A function call.
    	{{"output" | printf "%q"}}
    		A function call whose final argument comes from the previous
    		command.
    	{{printf "%q" (print "out" "put")}}
    		A parenthesized argument.
    	{{"put" | printf "%s%s" "out" | printf "%q"}}
    		A more elaborate call.
    	{{"output" | printf "%s" | printf "%q"}}
    		A longer chain.
    	{{with "output"}}{{printf "%q" .}}{{end}}
    		A with action using dot.
    	{{with $x := "output" | printf "%q"}}{{$x}}{{end}}
    		A with action that creates and uses a variable.
    	{{with $x := "output"}}{{printf "%q" $x}}{{end}}
    		A with action that uses the variable in another action.
    	{{with $x := "output"}}{{$x | printf "%q"}}{{end}}
    		The same, but pipelined.
    
    Functions
    
    During execution functions are found in two function maps: first in the
    template, then in the global function map. By default, no functions are defined
    in the template but the Funcs method can be used to add them.
    
    Predefined global functions are named as follows.
    
    	and
    		Returns the boolean AND of its arguments by returning the
    		first empty argument or the last argument. That is,
    		"and x y" behaves as "if x then y else x."
    		Evaluation proceeds through the arguments left to right
    		and returns when the result is determined.
    	call
    		Returns the result of calling the first argument, which
    		must be a function, with the remaining arguments as parameters.
    		Thus "call .X.Y 1 2" is, in Go notation, dot.X.Y(1, 2) where
    		Y is a func-valued field, map entry, or the like.
    		The first argument must be the result of an evaluation
    		that yields a value of function type (as distinct from
    		a predefined function such as print). The function must
    		return either one or two result values, the second of which
    		is of type error. If the arguments don't match the function
    		or the returned error value is non-nil, execution stops.
    	html
    		Returns the escaped HTML equivalent of the textual
    		representation of its arguments. This function is unavailable
    		in html/template, with a few exceptions.
    	index
    		Returns the result of indexing its first argument by the
    		following arguments. Thus "index x 1 2 3" is, in Go syntax,
    		x[1][2][3]. Each indexed item must be a map, slice, or array.
    	slice
    		slice returns the result of slicing its first argument by the
    		remaining arguments. Thus "slice x 1 2" is, in Go syntax, x[1:2],
    		while "slice x" is x[:], "slice x 1" is x[1:], and "slice x 1 2 3"
    		is x[1:2:3]. The first argument must be a string, slice, or array.
    	js
    		Returns the escaped JavaScript equivalent of the textual
    		representation of its arguments.
    	len
    		Returns the integer length of its argument.
    	not
    		Returns the boolean negation of its single argument.
    	or
    		Returns the boolean OR of its arguments by returning the
    		first non-empty argument or the last argument, that is,
    		"or x y" behaves as "if x then x else y".
    		Evaluation proceeds through the arguments left to right
    		and returns when the result is determined.
    	print
    		An alias for fmt.Sprint
    	printf
    		An alias for fmt.Sprintf
    	println
    		An alias for fmt.Sprintln
    	urlquery
    		Returns the escaped value of the textual representation of
    		its arguments in a form suitable for embedding in a URL query.
    		This function is unavailable in html/template, with a few
    		exceptions.
    
    The boolean functions take any zero value to be false and a non-zero
    value to be true.
    
    There is also a set of binary comparison operators defined as
    functions:
    
    	eq
    		Returns the boolean truth of arg1 == arg2
    	ne
    		Returns the boolean truth of arg1 != arg2
    	lt
    		Returns the boolean truth of arg1 < arg2
    	le
    		Returns the boolean truth of arg1 <= arg2
    	gt
    		Returns the boolean truth of arg1 > arg2
    	ge
    		Returns the boolean truth of arg1 >= arg2
    
    For simpler multi-way equality tests, eq (only) accepts two or more
    arguments and compares the second and subsequent to the first,
    returning in effect
    
    	arg1==arg2 || arg1==arg3 || arg1==arg4 ...
    
    (Unlike with || in Go, however, eq is a function call and all the
    arguments will be evaluated.)
    
    The comparison functions work on any values whose type Go defines as
    comparable. For basic types such as integers, the rules are relaxed:
    size and exact type are ignored, so any integer value, signed or unsigned,
    may be compared with any other integer value. (The arithmetic value is compared,
    not the bit pattern, so all negative integers are less than all unsigned integers.)
    However, as usual, one may not compare an int with a float32 and so on.
    
    Associated templates
    
    Each template is named by a string specified when it is created. Also, each
    template is associated with zero or more other templates that it may invoke by
    name; such associations are transitive and form a name space of templates.
    
    A template may use a template invocation to instantiate another associated
    template; see the explanation of the "template" action above. The name must be
    that of a template associated with the template that contains the invocation.
    
    Nested template definitions
    
    When parsing a template, another template may be defined and associated with the
    template being parsed. Template definitions must appear at the top level of the
    template, much like global variables in a Go program.
    
    The syntax of such definitions is to surround each template declaration with a
    "define" and "end" action.
    
    The define action names the template being created by providing a string
    constant. Here is a simple example:
    
    	{{define "T1"}}ONE{{end}}
    	{{define "T2"}}TWO{{end}}
    	{{define "T3"}}{{template "T1"}} {{template "T2"}}{{end}}
    	{{template "T3"}}
    
    This defines two templates, T1 and T2, and a third T3 that invokes the other two
    when it is executed. Finally it invokes T3. If executed this template will
    produce the text
    
    	ONE TWO
    
    By construction, a template may reside in only one association. If it's
    necessary to have a template addressable from multiple associations, the
    template definition must be parsed multiple times to create distinct *Template
    values, or must be copied with the Clone or AddParseTree method.
    
    Parse may be called multiple times to assemble the various associated templates;
    see the ParseFiles and ParseGlob functions and methods for simple ways to parse
    related templates stored in files.
    
    A template may be executed directly or through ExecuteTemplate, which executes
    an associated template identified by name. To invoke our example above, we
    might write,
    
    	err := tmpl.Execute(os.Stdout, "no data needed")
    	if err != nil {
    		log.Fatalf("execution failed: %s", err)
    	}
    
    or to invoke a particular template explicitly by name,
    
    	err := tmpl.ExecuteTemplate(os.Stdout, "T2", "no data needed")
    	if err != nil {
    		log.Fatalf("execution failed: %s", err)
    	}
    
    *|/
**/
class Template {
    /**
        IsTrue reports whether the value is 'true', in the sense of not the zero of its type,
        and whether the value has a meaningful truth value. This is the definition of
        truth used by if and other such actions.
    **/
    static public function isTrue(_val:stdgo.AnyInterface):stdgo.Tuple<Bool, Bool> {
        return {
            final obj = stdgo._internal.text.template.Template.isTrue(_val);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testExecute(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testExecute(_t);
    }
    static public function testDelims(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testDelims(_t);
    }
    /**
        Check that an error from a method flows back to the top.
    **/
    static public function testExecuteError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testExecuteError(_t);
    }
    /**
        Check that an error from a nested template contains all the relevant information.
    **/
    static public function testExecError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testExecError(_t);
    }
    /**
        Check that a custom error can be returned.
    **/
    static public function testExecError_CustomError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testExecError_CustomError(_t);
    }
    static public function testJSEscaping(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testJSEscaping(_t);
    }
    static public function testTree(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testTree(_t);
    }
    static public function testExecuteOnNewTemplate(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testExecuteOnNewTemplate(_t);
    }
    static public function testMessageForExecuteEmpty(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testMessageForExecuteEmpty(_t);
    }
    static public function testFinalForPrintf(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testFinalForPrintf(_t);
    }
    static public function testComparison(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testComparison(_t);
    }
    static public function testMissingMapKey(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testMissingMapKey(_t);
    }
    /**
        Test that the error message for multiline unterminated string
        refers to the line number of the opening quote.
    **/
    static public function testUnterminatedStringError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testUnterminatedStringError(_t);
    }
    static public function testExecuteGivesExecError(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testExecuteGivesExecError(_t);
    }
    static public function testGoodFuncNames(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testGoodFuncNames(_t);
    }
    static public function testBadFuncNames(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testBadFuncNames(_t);
    }
    static public function testBlock(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testBlock(_t);
    }
    static public function testEvalFieldErrors(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testEvalFieldErrors(_t);
    }
    static public function testMaxExecDepth(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testMaxExecDepth(_t);
    }
    static public function testAddrOfIndex(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testAddrOfIndex(_t);
    }
    static public function testInterfaceValues(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testInterfaceValues(_t);
    }
    /**
        Check that panics during calls are recovered and returned as errors.
    **/
    static public function testExecutePanicDuringCall(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testExecutePanicDuringCall(_t);
    }
    /**
        Issue 31810. Check that a parenthesized first argument behaves properly.
    **/
    static public function testIssue31810(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testIssue31810(_t);
    }
    /**
        Issue 43065, range over send only channel
    **/
    static public function testIssue43065(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testIssue43065(_t);
    }
    /**
        Issue 39807: data race in html/template & text/template
    **/
    static public function testIssue39807(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testIssue39807(_t);
    }
    /**
        Issue 48215: embedded nil pointer causes panic.
        Fixed by adding FieldByIndexErr to the reflect package.
    **/
    static public function testIssue48215(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testIssue48215(_t);
    }
    /**
        HTMLEscape writes to w the escaped HTML equivalent of the plain text data b.
    **/
    static public function htmlescape(_w:stdgo._internal.io.Io.Writer, _b:Array<StdTypes.Int>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.text.template.Template.htmlescape(_w, _b);
    }
    /**
        HTMLEscapeString returns the escaped HTML equivalent of the plain text data s.
    **/
    static public function htmlescapeString(_s:String):String {
        return stdgo._internal.text.template.Template.htmlescapeString(_s);
    }
    /**
        HTMLEscaper returns the escaped HTML equivalent of the textual
        representation of its arguments.
    **/
    static public function htmlescaper(_args:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.text.template.Template.htmlescaper(...[for (i in _args) i]);
    }
    /**
        JSEscape writes to w the escaped JavaScript equivalent of the plain text data b.
    **/
    static public function jsescape(_w:stdgo._internal.io.Io.Writer, _b:Array<StdTypes.Int>):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.text.template.Template.jsescape(_w, _b);
    }
    /**
        JSEscapeString returns the escaped JavaScript equivalent of the plain text data s.
    **/
    static public function jsescapeString(_s:String):String {
        return stdgo._internal.text.template.Template.jsescapeString(_s);
    }
    /**
        JSEscaper returns the escaped JavaScript equivalent of the textual
        representation of its arguments.
    **/
    static public function jsescaper(_args:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.text.template.Template.jsescaper(...[for (i in _args) i]);
    }
    /**
        URLQueryEscaper returns the escaped value of the textual representation of
        its arguments in a form suitable for embedding in a URL query.
    **/
    static public function urlqueryEscaper(_args:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.text.template.Template.urlqueryEscaper(...[for (i in _args) i]);
    }
    /**
        Must is a helper that wraps a call to a function returning (*Template, error)
        and panics if the error is non-nil. It is intended for use in variable
        initializations such as
        
        	var t = template.Must(template.New("name").Parse("text"))
    **/
    static public function must(_t:Template_, _err:stdgo.Error):Template_ {
        return stdgo._internal.text.template.Template.must(_t, _err);
    }
    /**
        ParseFiles creates a new Template and parses the template definitions from
        the named files. The returned template's name will have the base name and
        parsed contents of the first file. There must be at least one file.
        If an error occurs, parsing stops and the returned *Template is nil.
        
        When parsing multiple files with the same name in different directories,
        the last one mentioned will be the one that results.
        For instance, ParseFiles("a/foo", "b/foo") stores "b/foo" as the template
        named "foo", while "a/foo" is unavailable.
    **/
    static public function parseFiles(_filenames:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.parseFiles(...[for (i in _filenames) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseGlob creates a new Template and parses the template definitions from
        the files identified by the pattern. The files are matched according to the
        semantics of filepath.Match, and the pattern must match at least one file.
        The returned template will have the (base) name and (parsed) contents of the
        first file matched by the pattern. ParseGlob is equivalent to calling
        ParseFiles with the list of files matched by the pattern.
        
        When parsing multiple files with the same name in different directories,
        the last one mentioned will be the one that results.
    **/
    static public function parseGlob(_pattern:String):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.parseGlob(_pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseFS is like ParseFiles or ParseGlob but reads from the file system fsys
        instead of the host operating system's file system.
        It accepts a list of glob patterns.
        (Note that most file names serve as glob patterns matching only themselves.)
    **/
    static public function parseFS(_fsys:stdgo._internal.io.fs.Fs.FS, _patterns:haxe.Rest<String>):stdgo.Tuple<Template_, stdgo.Error> {
        return {
            final obj = stdgo._internal.text.template.Template.parseFS(_fsys, ...[for (i in _patterns) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testMultiParse(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testMultiParse(_t);
    }
    static public function testMultiExecute(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testMultiExecute(_t);
    }
    static public function testParseFiles(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testParseFiles(_t);
    }
    static public function testParseGlob(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testParseGlob(_t);
    }
    static public function testParseFS(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testParseFS(_t);
    }
    static public function testParseFilesWithData(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testParseFilesWithData(_t);
    }
    static public function testParseGlobWithData(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testParseGlobWithData(_t);
    }
    static public function testClone(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testClone(_t);
    }
    static public function testAddParseTree(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testAddParseTree(_t);
    }
    /**
        Issue 7032
    **/
    static public function testAddParseTreeToUnparsedTemplate(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testAddParseTreeToUnparsedTemplate(_t);
    }
    static public function testRedefinition(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testRedefinition(_t);
    }
    /**
        Issue 10879
    **/
    static public function testEmptyTemplateCloneCrash(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testEmptyTemplateCloneCrash(_t);
    }
    /**
        Issue 10910, 10926
    **/
    static public function testTemplateLookUp(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testTemplateLookUp(_t);
    }
    static public function testNew(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testNew(_t);
    }
    static public function testParse(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testParse(_t);
    }
    static public function testEmptyTemplate(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testEmptyTemplate(_t);
    }
    /**
        Issue 19249 was a regression in 1.8 caused by the handling of empty
        templates added in that release, which got different answers depending
        on the order templates appeared in the internal map.
    **/
    static public function testIssue19294(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testIssue19294(_t);
    }
    /**
        Issue 48436
    **/
    static public function testAddToZeroTemplate(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.template.Template.testAddToZeroTemplate(_t);
    }
    /**
        New allocates a new, undefined template with the given name.
    **/
    static public function new_(_name:String):Template_ {
        return stdgo._internal.text.template.Template.new_(_name);
    }
}
