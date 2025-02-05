package stdgo.internal.dag;
@:structInit @:using(stdgo.internal.dag.Dag.Graph_static_extension) abstract Graph(stdgo._internal.internal.dag.Dag_Graph.Graph) from stdgo._internal.internal.dag.Dag_Graph.Graph to stdgo._internal.internal.dag.Dag_Graph.Graph {
    public var nodes(get, set) : Array<String>;
    function get_nodes():Array<String> return [for (i in this.nodes) i];
    function set_nodes(v:Array<String>):Array<String> {
        this.nodes = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _byLabel(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get__byLabel():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this._byLabel;
    function set__byLabel(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this._byLabel = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var _edges(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>;
    function get__edges():stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>> return this._edges;
    function set__edges(v:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>):stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>> {
        this._edges = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>);
        return v;
    }
    public function new(?nodes:Array<String>, ?_byLabel:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_edges:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>) this = new stdgo._internal.internal.dag.Dag_Graph.Graph(([for (i in nodes) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_byLabel : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), (_edges : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.dag.Dag.T_rule_static_extension) abstract T_rule(stdgo._internal.internal.dag.Dag_T_rule.T_rule) from stdgo._internal.internal.dag.Dag_T_rule.T_rule to stdgo._internal.internal.dag.Dag_T_rule.T_rule {
    public var _less(get, set) : Array<String>;
    function get__less():Array<String> return [for (i in this._less) i];
    function set__less(v:Array<String>):Array<String> {
        this._less = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _op(get, set) : String;
    function get__op():String return this._op;
    function set__op(v:String):String {
        this._op = (v : stdgo.GoString);
        return v;
    }
    public var _def(get, set) : Array<String>;
    function get__def():Array<String> return [for (i in this._def) i];
    function set__def(v:Array<String>):Array<String> {
        this._def = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_less:Array<String>, ?_op:String, ?_def:Array<String>) this = new stdgo._internal.internal.dag.Dag_T_rule.T_rule(([for (i in _less) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_op : stdgo.GoString), ([for (i in _def) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.dag.Dag.T_rulesParser_static_extension) abstract T_rulesParser(stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser) from stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser to stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser {
    public var _lineno(get, set) : StdTypes.Int;
    function get__lineno():StdTypes.Int return this._lineno;
    function set__lineno(v:StdTypes.Int):StdTypes.Int {
        this._lineno = (v : stdgo.GoInt);
        return v;
    }
    public var _lastWord(get, set) : String;
    function get__lastWord():String return this._lastWord;
    function set__lastWord(v:String):String {
        this._lastWord = (v : stdgo.GoString);
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public function new(?_lineno:StdTypes.Int, ?_lastWord:String, ?_text:String) this = new stdgo._internal.internal.dag.Dag_T_rulesParser.T_rulesParser((_lineno : stdgo.GoInt), (_lastWord : stdgo.GoString), (_text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_syntaxError = stdgo._internal.internal.dag.Dag_T_syntaxError.T_syntaxError;
typedef GraphPointer = stdgo._internal.internal.dag.Dag_GraphPointer.GraphPointer;
class Graph_static_extension {
    static public function edges(_g:Graph, _from:String):Array<String> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _from = (_from : stdgo.GoString);
        return [for (i in stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.edges(_g, _from)) i];
    }
    static public function hasEdge(_g:Graph, _from:String, _to:String):Bool {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        return stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.hasEdge(_g, _from, _to);
    }
    static public function delEdge(_g:Graph, _from:String, _to:String):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.delEdge(_g, _from, _to);
    }
    static public function addEdge(_g:Graph, _from:String, _to:String):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _from = (_from : stdgo.GoString);
        final _to = (_to : stdgo.GoString);
        stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.addEdge(_g, _from, _to);
    }
    static public function _addNode(_g:Graph, _label:String):Bool {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        final _label = (_label : stdgo.GoString);
        return stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension._addNode(_g, _label);
    }
    static public function transitiveReduction(_g:Graph):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.transitiveReduction(_g);
    }
    static public function topo(_g:Graph):Array<String> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        return [for (i in stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.topo(_g)) i];
    }
    static public function transpose(_g:Graph):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.dag.Dag_graph.Graph>);
        stdgo._internal.internal.dag.Dag_Graph_static_extension.Graph_static_extension.transpose(_g);
    }
}
typedef T_rulePointer = stdgo._internal.internal.dag.Dag_T_rulePointer.T_rulePointer;
class T_rule_static_extension {

}
typedef T_rulesParserPointer = stdgo._internal.internal.dag.Dag_T_rulesParserPointer.T_rulesParserPointer;
class T_rulesParser_static_extension {
    static public function _nextToken(_p:T_rulesParser):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>);
        return stdgo._internal.internal.dag.Dag_T_rulesParser_static_extension.T_rulesParser_static_extension._nextToken(_p);
    }
    static public function _nextList(_p:T_rulesParser):stdgo.Tuple<Array<String>, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>);
        return {
            final obj = stdgo._internal.internal.dag.Dag_T_rulesParser_static_extension.T_rulesParser_static_extension._nextList(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _syntaxError(_p:T_rulesParser, _msg:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.dag.Dag_t_rulesparser.T_rulesParser>);
        final _msg = (_msg : stdgo.GoString);
        stdgo._internal.internal.dag.Dag_T_rulesParser_static_extension.T_rulesParser_static_extension._syntaxError(_p, _msg);
    }
}
typedef T_syntaxErrorPointer = stdgo._internal.internal.dag.Dag_T_syntaxErrorPointer.T_syntaxErrorPointer;
class T_syntaxError_static_extension {
    static public function error(_e:T_syntaxError):String {
        return stdgo._internal.internal.dag.Dag_T_syntaxError_static_extension.T_syntaxError_static_extension.error(_e);
    }
}
/**
    * Package dag implements a language for expressing directed acyclic
    * graphs.
    * 
    * The general syntax of a rule is:
    * 
    * 	a, b < c, d;
    * 
    * which means c and d come after a and b in the partial order
    * (that is, there are edges from c and d to a and b),
    * but doesn't provide a relative order between a vs b or c vs d.
    * 
    * The rules can chain together, as in:
    * 
    * 	e < f, g < h;
    * 
    * which is equivalent to
    * 
    * 	e < f, g;
    * 	f, g < h;
    * 
    * Except for the special bottom element "NONE", each name
    * must appear exactly once on the right-hand side of any rule.
    * That rule serves as the definition of the allowed successor
    * for that name. The definition must appear before any uses
    * of the name on the left-hand side of a rule. (That is, the
    * rules themselves must be ordered according to the partial
    * order, for easier reading by people.)
    * 
    * Negative assertions double-check the partial order:
    * 
    * 	i !< j
    * 
    * means that it must NOT be the case that i < j.
    * Negative assertions may appear anywhere in the rules,
    * even before i and j have been defined.
    * 
    * Comments begin with #.
**/
class Dag {
    /**
        * Parse parses the DAG language and returns the transitive closure of
        * the described graph. In the returned graph, there is an edge from "b"
        * to "a" if b < a (or a > b) in the partial order.
    **/
    static public inline function parse(_dag:String):stdgo.Tuple<Graph, stdgo.Error> {
        final _dag = (_dag : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.dag.Dag_parse.parse(_dag);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
