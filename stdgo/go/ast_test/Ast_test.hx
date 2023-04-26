package stdgo.go.ast_test;
import stdgo.go.ast.Ast;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.go.ast.Ast;
/**
    // res maps a key of the form "line number: node type"
    // to the associated comments' text.
    
    
**/
private var _res = ({
        final x = new GoMap<GoString, GoString>();
        @:mergeBlock {
            x.set((" 5: *ast.File" : GoString), ("the very first comment\npackage p\n" : GoString));
            x.set((" 5: *ast.Ident" : GoString), (" the name is p\n" : GoString));
            x.set((" 8: *ast.GenDecl" : GoString), ("imports\n" : GoString));
            x.set((" 9: *ast.ImportSpec" : GoString), ("bytes\n" : GoString));
            x.set(("10: *ast.ImportSpec" : GoString), ("fmt\n" : GoString));
            x.set(("16: *ast.GenDecl" : GoString), ("T\nalso associated with T\n" : GoString));
            x.set(("17: *ast.Field" : GoString), ("associated with a, b, c\n" : GoString));
            x.set(("19: *ast.Field" : GoString), ("associated with x, y\nfloat values\n" : GoString));
            x.set(("20: *ast.Field" : GoString), ("complex value\n" : GoString));
            x.set(("25: *ast.GenDecl" : GoString), ("x\nx = 0\nalso associated with x\n" : GoString));
            x.set(("29: *ast.FuncDecl" : GoString), ("f1\nassociated with f1\nalso associated with f1\n" : GoString));
            x.set(("31: *ast.ExprStmt" : GoString), (" associated with s1\nalso associated with s1\n" : GoString));
            x.set(("37: *ast.ExprStmt" : GoString), ("associated with s2\nalso associated with s2\nline comment for s2\n" : GoString));
            x.set(("45: *ast.FuncDecl" : GoString), ("associated with f2\nf2\n" : GoString));
            x.set(("49: *ast.AssignStmt" : GoString), ("addition\n" : GoString));
            x.set(("49: *ast.BasicLit" : GoString), (" 1\n" : GoString));
            x.set(("50: *ast.Ident" : GoString), ("the very last comment\n" : GoString));
        };
        x;
    });
/**
    
    
    
**/
private final _src = ("\n// the very first comment\n\n// package p\npackage p /* the name is p */\n\n// imports\nimport (\n\t\"bytes\"     // bytes\n\t\"fmt\"       // fmt\n\t\"go/ast\"\n\t\"go/parser\"\n)\n\n// T\ntype T struct {\n\ta, b, c int // associated with a, b, c\n\t// associated with x, y\n\tx, y float64    // float values\n\tz    complex128 // complex value\n}\n// also associated with T\n\n// x\nvar x = 0 // x = 0\n// also associated with x\n\n// f1\nfunc f1() {\n\t/* associated with s1 */\n\ts1()\n\t// also associated with s1\n\t\n\t// associated with s2\n\t\n\t// also associated with s2\n\ts2() // line comment for s2\n}\n// associated with f1\n// also associated with f1\n\n// associated with f2\n\n// f2\nfunc f2() {\n}\n\nfunc f3() {\n\ti := 1 /* 1 */ + 2 // addition\n\t_ = i\n}\n\n// the very last comment\n" : GoString);
/**
    
    
    
**/
private final _input = ("package p\n\ntype t1 struct{}\ntype t2 struct{}\n\nfunc f1() {}\nfunc f1() {}\nfunc f2() {}\n\nfunc (*t1) f1() {}\nfunc (t1) f1() {}\nfunc (t1) f2() {}\n\nfunc (t2) f1() {}\nfunc (t2) f2() {}\nfunc (x *t2) f2() {}\n" : GoString);
/**
    // Calling ast.MergePackageFiles with ast.FilterFuncDuplicates
    // keeps a duplicate entry with attached documentation in favor
    // of one without, and it favors duplicate entries appearing
    // later in the source over ones appearing earlier. This is why
    // (*t2).f2 is kept and t2.f2 is eliminated in this test case.
    
    
**/
private final _golden = ("package p\n\ntype t1 struct{}\ntype t2 struct{}\n\nfunc f1() {}\nfunc f2() {}\n\nfunc (t1) f1() {}\nfunc (t1) f2() {}\n\nfunc (t2) f1() {}\n\nfunc (x *t2) f2() {}\n" : GoString);
private function _ctext(_list:Slice<Ref<CommentGroup>>):GoString {
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        for (__0 => _g in _list) {
            _buf.writeString(_g.text());
        };
        return (_buf.string() : GoString);
    }
function testCommentMap(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(("\n// the very first comment\n\n// package p\npackage p /* the name is p */\n\n// imports\nimport (\n\t\"bytes\"     // bytes\n\t\"fmt\"       // fmt\n\t\"go/ast\"\n\t\"go/parser\"\n)\n\n// T\ntype T struct {\n\ta, b, c int // associated with a, b, c\n\t// associated with x, y\n\tx, y float64    // float values\n\tz    complex128 // complex value\n}\n// also associated with T\n\n// x\nvar x = 0 // x = 0\n// also associated with x\n\n// f1\nfunc f1() {\n\t/* associated with s1 */\n\ts1()\n\t// also associated with s1\n\t\n\t// associated with s2\n\t\n\t// also associated with s2\n\ts2() // line comment for s2\n}\n// associated with f1\n// also associated with f1\n\n// associated with f2\n\n// f2\nfunc f2() {\n}\n\nfunc f3() {\n\ti := 1 /* 1 */ + 2 // addition\n\t_ = i\n}\n\n// the very last comment\n" : GoString)), (4u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _cmap:stdgo.go.ast.Ast.CommentMap = newCommentMap(_fset, Go.asInterface(_f), _f.comments);
        for (_n => _list in _cmap) {
            var _key:GoString = stdgo.fmt.Fmt.sprintf(("%2d: %T" : GoString), Go.toInterface(_fset.position(_n.pos()).line), Go.toInterface(_n));
            var _got:GoString = _ctext(_list);
            var _want:GoString = _res[_key];
            if (_got != (_want)) {
                _t.errorf(("%s: got %q; want %q" : GoString), Go.toInterface(_key), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _n:GoInt = (_cmap.comments().length);
            if (_n != ((_f.comments.length))) {
                _t.errorf(("got %d comment groups in map; want %d" : GoString), Go.toInterface(_n), Go.toInterface((_f.comments.length)));
            };
        };
        {};
        if (false) {
            var _out = new Slice<GoString>((0 : GoInt).toBasic(), (_cmap.length)).__setString__();
            for (_n => _list in _cmap) {
                _out = (_out.__append__(stdgo.fmt.Fmt.sprintf(("\t\"%2d: %T\":\t%q," : GoString), Go.toInterface(_fset.position(_n.pos()).line), Go.toInterface(_n), Go.toInterface(_ctext(_list)))));
            };
            stdgo.sort.Sort.strings(_out);
            for (__0 => _s in _out) {
                stdgo.fmt.Fmt.println(Go.toInterface(_s));
            };
        };
    }
function testFilter(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(("\n// the very first comment\n\n// package p\npackage p /* the name is p */\n\n// imports\nimport (\n\t\"bytes\"     // bytes\n\t\"fmt\"       // fmt\n\t\"go/ast\"\n\t\"go/parser\"\n)\n\n// T\ntype T struct {\n\ta, b, c int // associated with a, b, c\n\t// associated with x, y\n\tx, y float64    // float values\n\tz    complex128 // complex value\n}\n// also associated with T\n\n// x\nvar x = 0 // x = 0\n// also associated with x\n\n// f1\nfunc f1() {\n\t/* associated with s1 */\n\ts1()\n\t// also associated with s1\n\t\n\t// associated with s2\n\t\n\t// also associated with s2\n\ts2() // line comment for s2\n}\n// associated with f1\n// also associated with f1\n\n// associated with f2\n\n// f2\nfunc f2() {\n}\n\nfunc f3() {\n\ti := 1 /* 1 */ + 2 // addition\n\t_ = i\n}\n\n// the very last comment\n" : GoString)), (4u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _cmap:stdgo.go.ast.Ast.CommentMap = newCommentMap(_fset, Go.asInterface(_f), _f.comments);
        for (_i => _decl in _f.decls) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_decl) : Ref<GenDecl>)) : Ref<GenDecl>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.GenDecl>), ok : false };
                }, _gen = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && (_gen.tok == (85 : stdgo.go.token.Token.Token))) {
                    Go.copySlice((_f.decls.__slice__(_i) : Slice<stdgo.go.ast.Ast.Decl>), (_f.decls.__slice__(_i + (1 : GoInt)) : Slice<stdgo.go.ast.Ast.Decl>));
                    _f.decls = (_f.decls.__slice__(0, (_f.decls.length) - (1 : GoInt)) : Slice<stdgo.go.ast.Ast.Decl>);
                    break;
                };
            };
        };
        var _cc:stdgo.go.ast.Ast.CommentMap = _cmap.filter(Go.asInterface(_f));
        for (_n => _list in _cc) {
            var _key:GoString = stdgo.fmt.Fmt.sprintf(("%2d: %T" : GoString), Go.toInterface(_fset.position(_n.pos()).line), Go.toInterface(_n));
            var _got:GoString = _ctext(_list);
            var _want:GoString = _res[_key];
            if ((_key == ("25: *ast.GenDecl" : GoString)) || (_got != _want)) {
                _t.errorf(("%s: got %q; want %q" : GoString), Go.toInterface(_key), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
/**
    // This example demonstrates how to inspect the AST of a Go program.
**/
function exampleInspect():Void {
        var _src:GoString = ("\npackage p\nconst c = 1.0\nvar X = f(3.14)*2 + c\n" : GoString);
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("src.go" : GoString), Go.toInterface(_src), (0u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.go.ast.Ast.inspect(Go.asInterface(_f), function(_n:stdgo.go.ast.Ast.Node):Bool {
            var _s:GoString = ("" : GoString);
            {
                final __type__ = _n;
                if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.BasicLit>))) {
                    var _x:Ref<stdgo.go.ast.Ast.BasicLit> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.BasicLit>) : __type__.__underlying__().value;
                    _s = _x.value;
                } else if (Go.typeEquals((__type__ : Ref<stdgo.go.ast.Ast.Ident>))) {
                    var _x:Ref<stdgo.go.ast.Ast.Ident> = __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__ == null ? (null : Ref<stdgo.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    _s = _x.name;
                };
            };
            if (_s != (Go.str())) {
                stdgo.fmt.Fmt.printf(("%s:\t%s\n" : GoString), Go.toInterface(Go.asInterface(_fset.position(_n.pos()))), Go.toInterface(_s));
            };
            return true;
        });
    }
/**
    // This example shows what an AST looks like when printed for debugging.
**/
function examplePrint():Void {
        var _src:GoString = ("\npackage main\nfunc main() {\n\tprintln(\"Hello, World!\")\n}\n" : GoString);
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(_src), (0u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.go.ast.Ast.print(_fset, Go.toInterface(Go.asInterface(_f)));
    }
/**
    // This example illustrates how to remove a variable declaration
    // in a Go program while maintaining correct comment association
    // using an ast.CommentMap.
**/
function exampleCommentMap():Void {
        var _src:GoString = ("\n// This is the package comment.\npackage main\n\n// This comment is associated with the hello constant.\nconst hello = \"Hello, World!\" // line comment 1\n\n// This comment is associated with the foo variable.\nvar foo = hello // line comment 2\n\n// This comment is associated with the main function.\nfunc main() {\n\tfmt.Println(hello) // line comment 3\n}\n" : GoString);
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, ("src.go" : GoString), Go.toInterface(_src), (4u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _cmap:stdgo.go.ast.Ast.CommentMap = stdgo.go.ast.Ast.newCommentMap(_fset, Go.asInterface(_f), _f.comments);
        for (_i => _decl in _f.decls) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_decl) : Ref<stdgo.go.ast.Ast.GenDecl>)) : Ref<stdgo.go.ast.Ast.GenDecl>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.ast.Ast.GenDecl>), ok : false };
                }, _gen = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && (_gen.tok == (85 : stdgo.go.token.Token.Token))) {
                    Go.copySlice((_f.decls.__slice__(_i) : Slice<stdgo.go.ast.Ast.Decl>), (_f.decls.__slice__(_i + (1 : GoInt)) : Slice<stdgo.go.ast.Ast.Decl>));
                    _f.decls = (_f.decls.__slice__(0, (_f.decls.length) - (1 : GoInt)) : Slice<stdgo.go.ast.Ast.Decl>);
                    break;
                };
            };
        };
        _f.comments = _cmap.filter(Go.asInterface(_f)).comments();
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        {
            var _err:Error = stdgo.go.format.Format.node(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), _fset, Go.toInterface(Go.asInterface(_f)));
            if (_err != null) {
                throw Go.toInterface(_err);
            };
        };
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface((_buf.string() : GoString)));
    }
function testFilterDuplicates(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fset = stdgo.go.token.Token.newFileSet();
        var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(("package p\n\ntype t1 struct{}\ntype t2 struct{}\n\nfunc f1() {}\nfunc f1() {}\nfunc f2() {}\n\nfunc (*t1) f1() {}\nfunc (t1) f1() {}\nfunc (t1) f2() {}\n\nfunc (t2) f1() {}\nfunc (t2) f2() {}\nfunc (x *t2) f2() {}\n" : GoString)), (0u32 : stdgo.go.parser.Parser.Mode)), _file:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _files = ({
            final x = new GoMap<GoString, Ref<stdgo.go.ast.Ast.File>>();
            @:mergeBlock {
                x.set(Go.str(), _file);
            };
            x;
        });
        var __tmp__ = stdgo.go.ast.Ast.newPackage(_fset, _files, null, null), _pkg:Ref<stdgo.go.ast.Ast.Package> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _merged = stdgo.go.ast.Ast.mergePackageFiles(_pkg, (1u32 : stdgo.go.ast.Ast.MergeMode));
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        {
            var _err:Error = stdgo.go.format.Format.node(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)), _fset, Go.toInterface(Go.asInterface(_merged)));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _output:GoString = (_buf.string() : GoString);
        if (_output != (("package p\n\ntype t1 struct{}\ntype t2 struct{}\n\nfunc f1() {}\nfunc f2() {}\n\nfunc (t1) f1() {}\nfunc (t1) f2() {}\n\nfunc (t2) f1() {}\n\nfunc (x *t2) f2() {}\n" : GoString))) {
            _t.errorf(("incorrect output:\n%s" : GoString), Go.toInterface(_output));
        };
    }
function testIssue33649(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _src in (new Slice<GoString>(4, 4, ("package p; func _()" : GoString), ("package p; func _() {" : GoString), ("package p; func _() { _ = 0" : GoString), ("package p; func _() { _ = 0 }" : GoString)) : Slice<GoString>)) {
            var _fset = stdgo.go.token.Token.newFileSet();
            var __tmp__ = stdgo.go.parser.Parser.parseFile(_fset, Go.str(), Go.toInterface(_src), (32u32 : stdgo.go.parser.Parser.Mode)), _f:Ref<stdgo.go.ast.Ast.File> = __tmp__._0, __1:Error = __tmp__._1;
            if (_f == null || (_f : Dynamic).__nil__) {
                throw Go.toInterface(("invalid test setup: parser didn\'t return an AST" : GoString));
            };
            var _tf:Ref<stdgo.go.token.Token.File> = (null : Ref<stdgo.go.token.Token.File>);
            _fset.iterate(function(_f:Ref<stdgo.go.token.Token.File>):Bool {
                _tf = _f;
                return true;
            });
            var _tfEnd:GoInt = _tf.base() + _tf.size();
            var _fd = (Go.typeAssert((Go.toInterface(_f.decls[((_f.decls.length) - (1 : GoInt) : GoInt)]) : Ref<stdgo.go.ast.Ast.FuncDecl>)) : Ref<stdgo.go.ast.Ast.FuncDecl>);
            var _fdEnd:GoInt = (_fd.end() : GoInt);
            if (_fdEnd != (_tfEnd)) {
                _t.errorf(("%q: got fdEnd = %d; want %d (base = %d, size = %d)" : GoString), Go.toInterface(_src), Go.toInterface(_fdEnd), Go.toInterface(_tfEnd), Go.toInterface(_tf.base()), Go.toInterface(_tf.size()));
            };
        };
    }
