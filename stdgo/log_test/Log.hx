package stdgo.log_test;
import stdgo._internal.log.Log;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
9,
9,
(new stdgo._internal.testing.Testing.InternalTest(("TestDefault" : stdgo.GoString), stdgo._internal.log.Log.testDefault) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAll" : stdgo.GoString), stdgo._internal.log.Log.testAll) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOutput" : stdgo.GoString), stdgo._internal.log.Log.testOutput) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNonNewLogger" : stdgo.GoString), stdgo._internal.log.Log.testNonNewLogger) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOutputRace" : stdgo.GoString), stdgo._internal.log.Log.testOutputRace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFlagAndPrefixSetting" : stdgo.GoString), stdgo._internal.log.Log.testFlagAndPrefixSetting) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUTCFlag" : stdgo.GoString), stdgo._internal.log.Log.testUTCFlag) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEmptyPrintCreatesLine" : stdgo.GoString), stdgo._internal.log.Log.testEmptyPrintCreatesLine) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDiscard" : stdgo.GoString), stdgo._internal.log.Log.testDiscard) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(5, 5, (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkItoa" : stdgo.GoString), stdgo._internal.log.Log.benchmarkItoa) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPrintln" : stdgo.GoString), stdgo._internal.log.Log.benchmarkPrintln) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPrintlnNoFlags" : stdgo.GoString), stdgo._internal.log.Log.benchmarkPrintlnNoFlags) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkConcurrent" : stdgo.GoString), stdgo._internal.log.Log.benchmarkConcurrent) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDiscard" : stdgo.GoString), stdgo._internal.log.Log.benchmarkDiscard) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(2, 2, (new stdgo._internal.testing.Testing.InternalExample(("ExampleLogger" : stdgo.GoString), stdgo._internal.log_test.Log_test.exampleLogger, ("logger: example_test.go:19: Hello, log file!\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleLogger_Output" : stdgo.GoString), stdgo._internal.log_test.Log_test.exampleLogger_Output, ("INFO: example_test.go:36: Hello world\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("log" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
