package stdgo.testing.fstest_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.testing.fstest.Fstest;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(4, 4, (new stdgo.testing.Testing.InternalTest(("TestMapFS" : GoString), stdgo.testing.fstest.Fstest.testMapFS) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestMapFSChmodDot" : GoString), stdgo.testing.fstest.Fstest.testMapFSChmodDot) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestSymlink" : GoString), stdgo.testing.fstest.Fstest.testSymlink) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestDash" : GoString), stdgo.testing.fstest.Fstest.testDash) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("testing/fstest" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
