package stdgo.compress.bzip2_test;
import stdgo._internal.compress.bzip2.Bzip2;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(4, 4, (new stdgo._internal.testing.Testing.InternalTest(("TestReader" : stdgo.GoString), stdgo._internal.compress.bzip2.Bzip2.testReader) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestBitReader" : stdgo.GoString), stdgo._internal.compress.bzip2.Bzip2.testBitReader) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestMTF" : stdgo.GoString), stdgo._internal.compress.bzip2.Bzip2.testMTF) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestZeroRead" : stdgo.GoString), stdgo._internal.compress.bzip2.Bzip2.testZeroRead) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(3, 3, (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDecodeDigits" : stdgo.GoString), stdgo._internal.compress.bzip2.Bzip2.benchmarkDecodeDigits) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDecodeNewton" : stdgo.GoString), stdgo._internal.compress.bzip2.Bzip2.benchmarkDecodeNewton) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDecodeRand" : stdgo.GoString), stdgo._internal.compress.bzip2.Bzip2.benchmarkDecodeRand) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("compress/bzip2" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
