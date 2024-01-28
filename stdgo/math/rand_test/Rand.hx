package stdgo.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
17,
17,
(new stdgo._internal.testing.Testing.InternalTest(("TestAuto" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testAuto) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDefaultRace" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testDefaultRace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestConcurrent" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testConcurrent) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStandardNormalValues" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testStandardNormalValues) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNonStandardNormalValues" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testNonStandardNormalValues) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStandardExponentialValues" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testStandardExponentialValues) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNonStandardExponentialValues" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testNonStandardExponentialValues) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNormTables" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testNormTables) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestExpTables" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testExpTables) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFloat32" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testFloat32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadUniformity" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testReadUniformity) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadEmpty" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testReadEmpty) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadByOneByte" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testReadByOneByte) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadSeedReset" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testReadSeedReset) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestShuffleSmall" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testShuffleSmall) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUniformFactorial" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testUniformFactorial) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRegress" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.testRegress) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(
16,
16,
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkInt63Threadsafe" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkInt63Threadsafe) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkInt63ThreadsafeParallel" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkInt63ThreadsafeParallel) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkInt63Unthreadsafe" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkInt63Unthreadsafe) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkIntn1000" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkIntn1000) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkInt63n1000" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkInt63n1000) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkInt31n1000" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkInt31n1000) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFloat32" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkFloat32) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFloat64" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkFloat64) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPerm3" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkPerm3) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPerm30" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkPerm30) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPerm30ViaShuffle" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkPerm30ViaShuffle) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkShuffleOverhead" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkShuffleOverhead) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRead3" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkRead3) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRead64" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkRead64) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRead1000" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkRead1000) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkConcurrent" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.benchmarkConcurrent) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(2, 2, (new stdgo._internal.testing.Testing.InternalExample(("Example_rand" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.example_rand, ("Float32     0.2635776           0.6358173           0.6718283\nFloat64     0.628605430454327   0.4504798828572669  0.9562755949377957\nExpFloat64  0.3362240648200941  1.4256072328483647  0.24354758816173044\nNormFloat64 0.17233959114940064 1.577014951434847   0.04259129641113857\nInt31       1501292890          1486668269          182840835\nInt63       3546343826724305832 5724354148158589552 5239846799706671610\nUint32      2760229429          296659907           1922395059\nIntn(10)    1                   2                   5\nInt31n(10)  4                   7                   8\nInt63n(10)  7                   6                   3\nPerm        [1 4 2 3 0]         [4 2 1 3 0]         [1 2 4 0 3]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExamplePerm" : stdgo.GoString), stdgo._internal.math.rand_test.Rand_test.examplePerm, ("1\n2\n0\n" : stdgo.GoString), true) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("math/rand" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
