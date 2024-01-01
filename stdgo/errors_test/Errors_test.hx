package stdgo.errors_test;
import stdgo.errors.Errors;
/**
    
    
    
**/
var _poserPathErr : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError> = (stdgo.Go.setRef(({ op : ("poser" : stdgo.GoString) } : stdgo.io.fs.Fs.PathError)) : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>);
/**
    
    
    
**/
typedef T__interface_4 = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function unwrap():stdgo.Slice<stdgo.Error>;
};
/**
    
    
    
**/
typedef T__interface_5 = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function timeout():Bool;
};
/**
    // MyError is an error implementation that includes a time and message.
    
    
**/
@:structInit @:using(stdgo.errors_test.Errors_test.MyError_static_extension) class MyError {
    public var when : stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
    public var what : stdgo.GoString = "";
    public function new(?when:stdgo.time.Time.Time, ?what:stdgo.GoString) {
        if (when != null) this.when = when;
        if (what != null) this.what = what;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MyError(when, what);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.errors_test.Errors_test.T_poser_static_extension) class T_poser {
    public var _msg : stdgo.GoString = "";
    public var _f : stdgo.Error -> Bool = null;
    public function new(?_msg:stdgo.GoString, ?_f:stdgo.Error -> Bool) {
        if (_msg != null) this._msg = _msg;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poser(_msg, _f);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.errors_test.Errors_test.T_errorT_static_extension) class T_errorT {
    public var _s : stdgo.GoString = "";
    public function new(?_s:stdgo.GoString) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorT(_s);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.errors_test.Errors_test.T_wrapped_static_extension) class T_wrapped {
    public var _msg : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_msg:stdgo.GoString, ?_err:stdgo.Error) {
        if (_msg != null) this._msg = _msg;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrapped(_msg, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.errors_test.Errors_test.T_errorUncomparable_static_extension) class T_errorUncomparable {
    public var _f : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_f:stdgo.Slice<stdgo.GoString>) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorUncomparable(_f);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.errors_test.Errors_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _errs : stdgo.Slice<stdgo.Error>;
    public var _want : stdgo.Slice<stdgo.Error>;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.errors_test.Errors_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _errs : stdgo.Slice<stdgo.Error>;
    public var _want : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.errors_test.Errors_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _err : stdgo.Error;
    public var _target : stdgo.Error;
    public var _match : Bool;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.errors_test.Errors_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _err : stdgo.Error;
    public var _target : stdgo.StdGoTypes.AnyInterface;
    public var _match : Bool;
    public var _want : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.errors_test.Errors_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _err : stdgo.Error;
    public var _want : stdgo.Error;
};
@:named @:using(stdgo.errors_test.Errors_test.T_multiErr_static_extension) typedef T_multiErr = stdgo.Slice<stdgo.Error>;
function testNewEqual(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (stdgo.Go.toInterface(stdgo.errors.Errors.new_(("abc" : stdgo.GoString))) == (stdgo.Go.toInterface(stdgo.errors.Errors.new_(("abc" : stdgo.GoString))))) {
            _t.errorf(("New(\"abc\") == New(\"abc\")" : stdgo.GoString));
        };
        if (stdgo.Go.toInterface(stdgo.errors.Errors.new_(("abc" : stdgo.GoString))) == (stdgo.Go.toInterface(stdgo.errors.Errors.new_(("xyz" : stdgo.GoString))))) {
            _t.errorf(("New(\"abc\") == New(\"xyz\")" : stdgo.GoString));
        };
        var _err:stdgo.Error = stdgo.errors.Errors.new_(("jkl" : stdgo.GoString));
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_err))) {
            _t.errorf(("err != err" : stdgo.GoString));
        };
    }
function testErrorMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _err:stdgo.Error = stdgo.errors.Errors.new_(("abc" : stdgo.GoString));
        if (_err.error() != (("abc" : stdgo.GoString))) {
            _t.errorf(("New(\"abc\").Error() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_err.error()), stdgo.Go.toInterface(("abc" : stdgo.GoString)));
        };
    }
function _oops():stdgo.Error {
        return stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.MyError(stdgo.time.Time.date((1989 : stdgo.StdGoTypes.GoInt), (3 : stdgo.time.Time.Month), (15 : stdgo.StdGoTypes.GoInt), (22 : stdgo.StdGoTypes.GoInt), (30 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), stdgo.time.Time.utc)?.__copy__(), ("the file system has gone away" : stdgo.GoString)) : stdgo.errors_test.Errors_test.MyError));
    }
function example():Void {
        {
            var _err:stdgo.Error = _oops();
            if (_err != null) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleNew():Void {
        var _err:stdgo.Error = stdgo.errors.Errors.new_(("emit macho dwarf: elf header corrupted" : stdgo.GoString));
        if (_err != null) {
            stdgo.fmt.Fmt.print(stdgo.Go.toInterface(_err));
        };
    }
/**
    // The fmt package's Errorf function lets us use the package's formatting
    // features to create descriptive error messages.
**/
function exampleNew_errorf():Void {
        {};
        var _err:stdgo.Error = stdgo.fmt.Fmt.errorf(("user %q (id %d) not found" : stdgo.GoString), stdgo.Go.toInterface(("bimmler" : stdgo.GoString)), stdgo.Go.toInterface((17 : stdgo.StdGoTypes.GoInt)));
        if (_err != null) {
            stdgo.fmt.Fmt.print(stdgo.Go.toInterface(_err));
        };
    }
function exampleJoin():Void {
        var _err1:stdgo.Error = stdgo.errors.Errors.new_(("err1" : stdgo.GoString));
        var _err2:stdgo.Error = stdgo.errors.Errors.new_(("err2" : stdgo.GoString));
        var _err:stdgo.Error = stdgo.errors.Errors.join(_err1, _err2);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_err));
        if (stdgo.errors.Errors.is_(_err, _err1)) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("err is err1" : stdgo.GoString)));
        };
        if (stdgo.errors.Errors.is_(_err, _err2)) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("err is err2" : stdgo.GoString)));
        };
    }
function exampleIs():Void {
        {
            var __tmp__ = stdgo.os.Os.open(("non-existing" : stdgo.GoString)), __0:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.errors.Errors.is_(_err, stdgo.io.fs.Fs.errNotExist)) {
                    stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("file does not exist" : stdgo.GoString)));
                } else {
                    stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function exampleAs():Void {
        {
            var __tmp__ = stdgo.os.Os.open(("non-existing" : stdgo.GoString)), __0:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var _pathError:stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError> = (null : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>);
                if (stdgo.errors.Errors.as(_err, stdgo.Go.toInterface((stdgo.Go.setRef(_pathError) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>>)))) {
                    stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Failed at path:" : stdgo.GoString)), stdgo.Go.toInterface(_pathError.path));
                } else {
                    stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function exampleUnwrap():Void {
        var _err1:stdgo.Error = stdgo.errors.Errors.new_(("error1" : stdgo.GoString));
        var _err2:stdgo.Error = stdgo.fmt.Fmt.errorf(("error2: [%w]" : stdgo.GoString), stdgo.Go.toInterface(_err1));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_err2));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.errors.Errors.unwrap(_err2)));
    }
function testJoinReturnsNil(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _err:stdgo.Error = stdgo.errors.Errors.join();
            if (_err != null) {
                _t.errorf(("errors.Join() = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.errors.Errors.join((null : stdgo.Error));
            if (_err != null) {
                _t.errorf(("errors.Join(nil) = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.errors.Errors.join((null : stdgo.Error), (null : stdgo.Error));
            if (_err != null) {
                _t.errorf(("errors.Join(nil, nil) = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
function testJoin(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _err1:stdgo.Error = stdgo.errors.Errors.new_(("err1" : stdgo.GoString));
        var _err2:stdgo.Error = stdgo.errors.Errors.new_(("err2" : stdgo.GoString));
        for (__0 => _test in (new stdgo.Slice<T__struct_0>(3, 3, ({ _errs : (new stdgo.Slice<stdgo.Error>(1, 1, _err1) : stdgo.Slice<stdgo.Error>), _want : (new stdgo.Slice<stdgo.Error>(1, 1, _err1) : stdgo.Slice<stdgo.Error>) } : T__struct_0), ({ _errs : (new stdgo.Slice<stdgo.Error>(2, 2, _err1, _err2) : stdgo.Slice<stdgo.Error>), _want : (new stdgo.Slice<stdgo.Error>(2, 2, _err1, _err2) : stdgo.Slice<stdgo.Error>) } : T__struct_0), ({ _errs : (new stdgo.Slice<stdgo.Error>(3, 3, _err1, (null : stdgo.Error), _err2) : stdgo.Slice<stdgo.Error>), _want : (new stdgo.Slice<stdgo.Error>(2, 2, _err1, _err2) : stdgo.Slice<stdgo.Error>) } : T__struct_0)) : stdgo.Slice<T__struct_0>)) {
            var _got = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo.errors.Errors.join(..._test._errs.__toArray__())) : T__interface_4)) : T__interface_4).unwrap();
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want))) {
                _t.errorf(("Join(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._errs), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
            if ((_got.length) != (_got.capacity)) {
                _t.errorf(("Join(%v) returns errors with len=%v, cap=%v; want len==cap" : stdgo.GoString), stdgo.Go.toInterface(_test._errs), stdgo.Go.toInterface((_got.length)), stdgo.Go.toInterface(_got.capacity));
            };
        };
    }
function testJoinErrorMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _err1:stdgo.Error = stdgo.errors.Errors.new_(("err1" : stdgo.GoString));
        var _err2:stdgo.Error = stdgo.errors.Errors.new_(("err2" : stdgo.GoString));
        for (__0 => _test in (new stdgo.Slice<T__struct_1>(3, 3, ({ _errs : (new stdgo.Slice<stdgo.Error>(1, 1, _err1) : stdgo.Slice<stdgo.Error>), _want : ("err1" : stdgo.GoString) } : T__struct_1), ({ _errs : (new stdgo.Slice<stdgo.Error>(2, 2, _err1, _err2) : stdgo.Slice<stdgo.Error>), _want : ("err1\nerr2" : stdgo.GoString) } : T__struct_1), ({ _errs : (new stdgo.Slice<stdgo.Error>(3, 3, _err1, (null : stdgo.Error), _err2) : stdgo.Slice<stdgo.Error>), _want : ("err1\nerr2" : stdgo.GoString) } : T__struct_1)) : stdgo.Slice<T__struct_1>)) {
            var _got:stdgo.GoString = stdgo.errors.Errors.join(..._test._errs.__toArray__()).error()?.__copy__();
            if (_got != (_test._want)) {
                _t.errorf(("Join(%v).Error() = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._errs), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
function testIs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _err1:stdgo.Error = stdgo.errors.Errors.new_(("1" : stdgo.GoString));
        var _erra:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped(("wrap 2" : stdgo.GoString), _err1) : stdgo.errors_test.Errors_test.T_wrapped);
        var _errb:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped(("wrap 3" : stdgo.GoString), stdgo.Go.asInterface(_erra)) : stdgo.errors_test.Errors_test.T_wrapped);
        var _err3:stdgo.Error = stdgo.errors.Errors.new_(("3" : stdgo.GoString));
        var _poser = (stdgo.Go.setRef((new stdgo.errors_test.Errors_test.T_poser(("either 1 or 3" : stdgo.GoString), function(_err:stdgo.Error):Bool {
            return (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_err1)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_err3));
        }) : stdgo.errors_test.Errors_test.T_poser)) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>);
        var _testCases = (new stdgo.Slice<T__struct_2>(
29,
29,
({ _err : (null : stdgo.Error), _target : (null : stdgo.Error), _match : true } : T__struct_2),
({ _err : _err1, _target : (null : stdgo.Error), _match : false } : T__struct_2),
({ _err : _err1, _target : _err1, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface(_erra), _target : _err1, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface(_errb), _target : _err1, _match : true } : T__struct_2),
({ _err : _err1, _target : _err3, _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface(_erra), _target : _err3, _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface(_errb), _target : _err3, _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface(_poser), _target : _err1, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface(_poser), _target : _err3, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface(_poser), _target : stdgo.Go.asInterface(_erra), _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface(_poser), _target : stdgo.Go.asInterface(_errb), _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)), _target : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)), _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)), _target : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)), _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)), _target : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)), _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)), _target : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)), _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)), _target : _err1, _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.errors_test.Errors_test.T_errorUncomparable() : stdgo.errors_test.Errors_test.T_errorUncomparable)) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorUncomparable>)), _target : _err1, _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(0, 0) : stdgo.errors_test.Errors_test.T_multiErr)), _target : _err1, _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, _err1, _err3) : stdgo.errors_test.Errors_test.T_multiErr)), _target : _err1, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, _err3, _err1) : stdgo.errors_test.Errors_test.T_multiErr)), _target : _err1, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, _err1, _err3) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.errors.Errors.new_(("x" : stdgo.GoString)), _match : false } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, _err3, stdgo.Go.asInterface(_errb)) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.Go.asInterface(_errb), _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, _err3, stdgo.Go.asInterface(_errb)) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.Go.asInterface(_erra), _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, _err3, stdgo.Go.asInterface(_errb)) : stdgo.errors_test.Errors_test.T_multiErr)), _target : _err1, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, stdgo.Go.asInterface(_errb), _err3) : stdgo.errors_test.Errors_test.T_multiErr)), _target : _err1, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(1, 1, stdgo.Go.asInterface(_poser)) : stdgo.errors_test.Errors_test.T_multiErr)), _target : _err1, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(1, 1, stdgo.Go.asInterface(_poser)) : stdgo.errors_test.Errors_test.T_multiErr)), _target : _err3, _match : true } : T__struct_2),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(1, 1, (null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_multiErr)), _target : (null : stdgo.Error), _match : false } : T__struct_2)) : stdgo.Slice<T__struct_2>);
        for (__0 => _tc in _testCases) {
            _t.run(stdgo.Go.str()?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                {
                    var _got:Bool = stdgo.errors.Errors.is_(_tc._err, _tc._target);
                    if (_got != (_tc._match)) {
                        _t.errorf(("Is(%v, %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._err), stdgo.Go.toInterface(_tc._target), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._match));
                    };
                };
            });
        };
    }
function testAs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _errT:T_errorT = ({} : stdgo.errors_test.Errors_test.T_errorT);
        var _errP:stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError> = (null : stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>);
        var _timeout:T__interface_5 = (null : stdgo.errors_test.Errors_test.T__interface_5);
        var _p:stdgo.StdGoTypes.Ref<T_poser> = (null : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>);
        var __tmp__ = stdgo.os.Os.open(("non-existing" : stdgo.GoString)), __0:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _errF:stdgo.Error = __tmp__._1;
        var _poserErr = (stdgo.Go.setRef((new stdgo.errors_test.Errors_test.T_poser(("oh no" : stdgo.GoString), null) : stdgo.errors_test.Errors_test.T_poser)) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>);
        var _testCases = (new stdgo.Slice<T__struct_3>(
18,
18,
({ _err : (null : stdgo.Error), _target : stdgo.Go.toInterface((stdgo.Go.setRef(_errP) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>>)), _match : false, _want : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(("pitied the fool" : stdgo.GoString), stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("T" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) : stdgo.errors_test.Errors_test.T_wrapped)), _target : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errT) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>))), _match : true, _want : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("T" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) } : T__struct_3),
({ _err : _errF, _target : stdgo.Go.toInterface((stdgo.Go.setRef(_errP) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>>)), _match : true, _want : stdgo.Go.toInterface(_errF) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT() : stdgo.errors_test.Errors_test.T_errorT)), _target : stdgo.Go.toInterface((stdgo.Go.setRef(_errP) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>>)), _match : false, _want : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(("wrapped" : stdgo.GoString), (null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped)), _target : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errT) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>))), _match : false, _want : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_3),
({ _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.errors_test.Errors_test.T_poser(("error" : stdgo.GoString), null) : stdgo.errors_test.Errors_test.T_poser)) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>)), _target : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errT) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>))), _match : true, _want : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("poser" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) } : T__struct_3),
({ _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.errors_test.Errors_test.T_poser(("path" : stdgo.GoString), null) : stdgo.errors_test.Errors_test.T_poser)) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>)), _target : stdgo.Go.toInterface((stdgo.Go.setRef(_errP) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>>)), _match : true, _want : stdgo.Go.toInterface(stdgo.Go.asInterface(_poserPathErr)) } : T__struct_3),
({ _err : stdgo.Go.asInterface(_poserErr), _target : stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>>)), _match : true, _want : stdgo.Go.toInterface(stdgo.Go.asInterface(_poserErr)) } : T__struct_3),
({ _err : stdgo.errors.Errors.new_(("err" : stdgo.GoString)), _target : stdgo.Go.toInterface((stdgo.Go.setRef(_timeout) : stdgo.StdGoTypes.Ref<T__interface_5>)), _match : false, _want : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_3),
({ _err : _errF, _target : stdgo.Go.toInterface((stdgo.Go.setRef(_timeout) : stdgo.StdGoTypes.Ref<T__interface_5>)), _match : true, _want : stdgo.Go.toInterface(_errF) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(("path error" : stdgo.GoString), _errF) : stdgo.errors_test.Errors_test.T_wrapped)), _target : stdgo.Go.toInterface((stdgo.Go.setRef(_timeout) : stdgo.StdGoTypes.Ref<T__interface_5>)), _match : true, _want : stdgo.Go.toInterface(_errF) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(0, 0) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errT) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>))), _match : false, _want : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, stdgo.errors.Errors.new_(("a" : stdgo.GoString)), stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("T" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errT) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>))), _match : true, _want : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("T" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("T" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT)), stdgo.errors.Errors.new_(("a" : stdgo.GoString))) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errT) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>))), _match : true, _want : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("T" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("a" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT)), stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("b" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errT) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>))), _match : true, _want : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("a" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(2, 2, stdgo.errors.Errors.new_(("a" : stdgo.GoString)), stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("a" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) : stdgo.errors_test.Errors_test.T_multiErr)), stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("b" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errT) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>))), _match : true, _want : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_errorT(("a" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT))) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(1, 1, stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(("path error" : stdgo.GoString), _errF) : stdgo.errors_test.Errors_test.T_wrapped))) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.Go.toInterface((stdgo.Go.setRef(_timeout) : stdgo.StdGoTypes.Ref<T__interface_5>)), _match : true, _want : stdgo.Go.toInterface(_errF) } : T__struct_3),
({ _err : stdgo.Go.asInterface((new stdgo.Slice<stdgo.Error>(1, 1, (null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_multiErr)), _target : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errT) : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>))), _match : false, _want : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_3)) : stdgo.Slice<T__struct_3>);
        for (_i => _tc in _testCases) {
            var _name:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%d:As(Errorf(..., %v), %v)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tc._err), _tc._target)?.__copy__();
            var _rtarget:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_tc._target)?.__copy__();
            _rtarget.elem().set(stdgo.reflect.Reflect.zero(stdgo.reflect.Reflect.typeOf(_tc._target).elem())?.__copy__());
            _t.run(_name?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                var _match:Bool = stdgo.errors.Errors.as(_tc._err, _tc._target);
                if (_match != (_tc._match)) {
                    _t.fatalf(("match: got %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_match), stdgo.Go.toInterface(_tc._match));
                };
                if (!_match) {
                    return;
                };
                {
                    var _got:stdgo.StdGoTypes.AnyInterface = _rtarget.elem().interface_();
                    if (_got != (_tc._want)) {
                        _t.fatalf(("got %#v, want %#v" : stdgo.GoString), _got, _tc._want);
                    };
                };
            });
        };
    }
function testAsValidation(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        var _testCases = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, (null : stdgo.StdGoTypes.AnyInterface), stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)), stdgo.Go.toInterface(("error" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.pointer(_s))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
        var _err:stdgo.Error = stdgo.errors.Errors.new_(("error" : stdgo.GoString));
        for (__0 => _tc in _testCases) {
            _t.run(stdgo.fmt.Fmt.sprintf(("%T(%v)" : stdgo.GoString), _tc, _tc)?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                        };
                        a();
                    });
                    if (stdgo.errors.Errors.as(_err, _tc)) {
                        _t.errorf(("As(err, %T(%v)) = true, want false" : stdgo.GoString), _tc, _tc);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                    _t.errorf(("As(err, %T(%v)) did not panic" : stdgo.GoString), _tc, _tc);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
        };
    }
function testUnwrap(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _err1:stdgo.Error = stdgo.errors.Errors.new_(("1" : stdgo.GoString));
        var _erra:stdgo.errors_test.Errors_test.T_wrapped = (new stdgo.errors_test.Errors_test.T_wrapped(("wrap 2" : stdgo.GoString), _err1) : stdgo.errors_test.Errors_test.T_wrapped);
        var _testCases = (new stdgo.Slice<T__struct_4>(5, 5, ({ _err : (null : stdgo.Error), _want : (null : stdgo.Error) } : T__struct_4), ({ _err : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(("wrapped" : stdgo.GoString), (null : stdgo.Error)) : stdgo.errors_test.Errors_test.T_wrapped)), _want : (null : stdgo.Error) } : T__struct_4), ({ _err : _err1, _want : (null : stdgo.Error) } : T__struct_4), ({ _err : stdgo.Go.asInterface(_erra), _want : _err1 } : T__struct_4), ({ _err : stdgo.Go.asInterface((new stdgo.errors_test.Errors_test.T_wrapped(("wrap 3" : stdgo.GoString), stdgo.Go.asInterface(_erra)) : stdgo.errors_test.Errors_test.T_wrapped)), _want : stdgo.Go.asInterface(_erra) } : T__struct_4)) : stdgo.Slice<T__struct_4>);
        for (__0 => _tc in _testCases) {
            {
                var _got:stdgo.Error = stdgo.errors.Errors.unwrap(_tc._err);
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_tc._want))) {
                    _t.errorf(("Unwrap(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._want));
                };
            };
        };
    }
class MyError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MyError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.MyError_asInterface) class MyError_static_extension {
    @:keep
    static public function error( _e:MyError):stdgo.GoString {
        @:recv var _e:MyError = _e?.__copy__();
        return stdgo.fmt.Fmt.sprintf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_e.when)), stdgo.Go.toInterface(_e.what))?.__copy__();
    }
}
class T_poser_asInterface {
    @:keep
    public dynamic function as(_err:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.as(_err);
    @:keep
    public dynamic function is_(_err:stdgo.Error):Bool return __self__.value.is_(_err);
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_poser>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T_poser_asInterface) class T_poser_static_extension {
    @:keep
    static public function as( _p:stdgo.StdGoTypes.Ref<T_poser>, _err:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_poser> = _p;
        {
            final __type__ = _err;
            if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_poser>>))) {
                var _x:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_poser>>) : __type__.__underlying__().value;
                _x = _p;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<T_errorT>))) {
                var _x:stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.errors_test.Errors_test.T_errorT>) : __type__.__underlying__().value;
                {
                    var __tmp__ = (new stdgo.errors_test.Errors_test.T_errorT(("poser" : stdgo.GoString)) : stdgo.errors_test.Errors_test.T_errorT);
                    _x._s = __tmp__._s;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>>))) {
                var _x:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.io.fs.Fs.PathError>>) : __type__.__underlying__().value;
                _x = _poserPathErr;
            } else {
                var _x:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function is_( _p:stdgo.StdGoTypes.Ref<T_poser>, _err:stdgo.Error):Bool {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_poser> = _p;
        return _p._f(_err);
    }
    @:keep
    static public function error( _p:stdgo.StdGoTypes.Ref<T_poser>):stdgo.GoString {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_poser> = _p;
        return _p._msg?.__copy__();
    }
}
class T_errorT_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errorT>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T_errorT_asInterface) class T_errorT_static_extension {
    @:keep
    static public function error( _e:T_errorT):stdgo.GoString {
        @:recv var _e:T_errorT = _e?.__copy__();
        return stdgo.fmt.Fmt.sprintf(("errorT(%s)" : stdgo.GoString), stdgo.Go.toInterface(_e._s))?.__copy__();
    }
}
class T_wrapped_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_wrapped>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T_wrapped_asInterface) class T_wrapped_static_extension {
    @:keep
    static public function unwrap( _e:T_wrapped):stdgo.Error {
        @:recv var _e:T_wrapped = _e?.__copy__();
        return _e._err;
    }
    @:keep
    static public function error( _e:T_wrapped):stdgo.GoString {
        @:recv var _e:T_wrapped = _e?.__copy__();
        return _e._msg?.__copy__();
    }
}
class T_errorUncomparable_asInterface {
    @:keep
    public dynamic function is_(_target:stdgo.Error):Bool return __self__.value.is_(_target);
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errorUncomparable>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T_errorUncomparable_asInterface) class T_errorUncomparable_static_extension {
    @:keep
    static public function is_( _:T_errorUncomparable, _target:stdgo.Error):Bool {
        @:recv var _:T_errorUncomparable = _?.__copy__();
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_target) : T_errorUncomparable)) : T_errorUncomparable), ok : true };
        } catch(_) {
            { value : ({} : stdgo.errors_test.Errors_test.T_errorUncomparable), ok : false };
        }, __0 = __tmp__.value, _ok = __tmp__.ok;
        return _ok;
    }
    @:keep
    static public function error( _:T_errorUncomparable):stdgo.GoString {
        @:recv var _:T_errorUncomparable = _?.__copy__();
        return ("uncomparable error" : stdgo.GoString);
    }
}
class T_multiErr_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Slice<stdgo.Error> return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_multiErr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.errors_test.Errors_test.T_multiErr_asInterface) class T_multiErr_static_extension {
    @:keep
    static public function unwrap( _m:T_multiErr):stdgo.Slice<stdgo.Error> {
        @:recv var _m:T_multiErr = _m;
        return (_m : stdgo.Slice<stdgo.Error>);
    }
    @:keep
    static public function error( _m:T_multiErr):stdgo.GoString {
        @:recv var _m:T_multiErr = _m;
        return ("multiError" : stdgo.GoString);
    }
}
