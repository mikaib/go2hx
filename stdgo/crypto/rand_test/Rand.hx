package stdgo.crypto.rand_test;
import stdgo._internal.crypto.rand.Rand;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
10,
10,
(new stdgo._internal.testing.Testing.InternalTest(("TestRead" : stdgo.GoString), stdgo._internal.crypto.rand.Rand.testRead) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadEmpty" : stdgo.GoString), stdgo._internal.crypto.rand.Rand.testReadEmpty) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPrimeSmall" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.testPrimeSmall) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPrimeBitsLt2" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.testPrimeBitsLt2) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPrimeNondeterministic" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.testPrimeNondeterministic) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestInt" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.testInt) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIntReads" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.testIntReads) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIntMask" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.testIntMask) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIntEmptyMaxPanics" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.testIntEmptyMaxPanics) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIntNegativeMaxPanics" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.testIntNegativeMaxPanics) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(1, 1, (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPrime" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.benchmarkPrime) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(1, 1, (new stdgo._internal.testing.Testing.InternalExample(("ExampleRead" : stdgo.GoString), stdgo._internal.crypto.rand_test.Rand_test.exampleRead, ("false\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("crypto/rand" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
