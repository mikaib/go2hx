package stdgo.image.color_test;
import stdgo._internal.image.color.Color;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
10,
10,
(new stdgo._internal.testing.Testing.InternalTest(("TestSqDiff" : stdgo.GoString), stdgo._internal.image.color.Color.testSqDiff) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestYCbCrRoundtrip" : stdgo.GoString), stdgo._internal.image.color.Color.testYCbCrRoundtrip) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestYCbCrToRGBConsistency" : stdgo.GoString), stdgo._internal.image.color.Color.testYCbCrToRGBConsistency) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestYCbCrGray" : stdgo.GoString), stdgo._internal.image.color.Color.testYCbCrGray) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNYCbCrAAlpha" : stdgo.GoString), stdgo._internal.image.color.Color.testNYCbCrAAlpha) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNYCbCrAYCbCr" : stdgo.GoString), stdgo._internal.image.color.Color.testNYCbCrAYCbCr) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCMYKRoundtrip" : stdgo.GoString), stdgo._internal.image.color.Color.testCMYKRoundtrip) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCMYKToRGBConsistency" : stdgo.GoString), stdgo._internal.image.color.Color.testCMYKToRGBConsistency) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCMYKGray" : stdgo.GoString), stdgo._internal.image.color.Color.testCMYKGray) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPalette" : stdgo.GoString), stdgo._internal.image.color.Color.testPalette) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(4, 4, (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkYCbCrToRGB" : stdgo.GoString), stdgo._internal.image.color.Color.benchmarkYCbCrToRGB) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRGBToYCbCr" : stdgo.GoString), stdgo._internal.image.color.Color.benchmarkRGBToYCbCr) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkYCbCrToRGBA" : stdgo.GoString), stdgo._internal.image.color.Color.benchmarkYCbCrToRGBA) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkNYCbCrAToRGBA" : stdgo.GoString), stdgo._internal.image.color.Color.benchmarkNYCbCrAToRGBA) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("image/color" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
