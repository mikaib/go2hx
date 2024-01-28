package stdgo.errors_test;
import stdgo._internal.errors.Errors;
import stdgo._internal.errors.Errors;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
9,
9,
(new stdgo._internal.testing.Testing.InternalTest(("TestNewEqual" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.testNewEqual) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestErrorMethod" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.testErrorMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestJoinReturnsNil" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.testJoinReturnsNil) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestJoin" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.testJoin) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestJoinErrorMethod" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.testJoinErrorMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIs" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.testIs) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAs" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.testAs) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAsValidation" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.testAsValidation) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnwrap" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.testUnwrap) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(6, 6, (new stdgo._internal.testing.Testing.InternalExample(("Example" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.example, ("1989-03-15 22:30:00 +0000 UTC: the file system has gone away\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleNew" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.exampleNew, ("emit macho dwarf: elf header corrupted\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleNew_errorf" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.exampleNew_errorf, ("user \"bimmler\" (id 17) not found\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleJoin" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.exampleJoin, ("err1\nerr2\nerr is err1\nerr is err2\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleIs" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.exampleIs, ("file does not exist\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleAs" : stdgo.GoString), stdgo._internal.errors_test.Errors_test.exampleAs, ("Failed at path: non-existing\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("errors" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
