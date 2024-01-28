package stdgo.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf8.Utf8;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
14,
14,
(new stdgo._internal.testing.Testing.InternalTest(("TestConstants" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testConstants) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFullRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testFullRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEncodeRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testEncodeRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAppendRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testAppendRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDecodeRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testDecodeRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDecodeSurrogateRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testDecodeSurrogateRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSequencing" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testSequencing) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRuntimeConversion" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testRuntimeConversion) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDecodeInvalidSequence" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testDecodeInvalidSequence) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNegativeRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testNegativeRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRuneCount" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testRuneCount) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRuneLen" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testRuneLen) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValid" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testValid) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValidRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.testValidRune) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(
21,
21,
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRuneCountTenASCIIChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenASCIIChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRuneCountTenJapaneseChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenJapaneseChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRuneCountInStringTenASCIIChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenASCIIChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRuneCountInStringTenJapaneseChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenJapaneseChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValidTenASCIIChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValidTenASCIIChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValid100KASCIIChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValid100KASCIIChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValidTenJapaneseChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValidTenJapaneseChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValidLongMostlyASCII" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValidLongMostlyASCII) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValidLongJapanese" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValidLongJapanese) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValidStringTenASCIIChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValidStringTenASCIIChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValidString100KASCIIChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValidString100KASCIIChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValidStringTenJapaneseChars" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValidStringTenJapaneseChars) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValidStringLongMostlyASCII" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValidStringLongMostlyASCII) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValidStringLongJapanese" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkValidStringLongJapanese) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkEncodeASCIIRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkEncodeASCIIRune) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkEncodeJapaneseRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkEncodeJapaneseRune) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAppendASCIIRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkAppendASCIIRune) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAppendJapaneseRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkAppendJapaneseRune) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDecodeASCIIRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkDecodeASCIIRune) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDecodeJapaneseRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkDecodeJapaneseRune) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFullRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.benchmarkFullRune) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(
16,
16,
(new stdgo._internal.testing.Testing.InternalExample(("ExampleDecodeLastRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleDecodeLastRune, ("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleDecodeLastRuneInString" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleDecodeLastRuneInString, ("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleDecodeRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleDecodeRune, ("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleDecodeRuneInString" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleDecodeRuneInString, ("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleEncodeRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleEncodeRune, ("[228 184 150]\n3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleEncodeRune_outOfRange" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleEncodeRune_outOfRange, ("0: [239 191 189] � 3\n1: [239 191 189] � 3\n2: [239 191 189] � 3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleFullRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleFullRune, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleFullRuneInString" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleFullRuneInString, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRuneCount" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleRuneCount, ("bytes = 13\nrunes = 9\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRuneCountInString" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleRuneCountInString, ("bytes = 13\nrunes = 9\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRuneLen" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleRuneLen, ("1\n3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRuneStart" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleRuneStart, ("true\ntrue\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleValid" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleValid, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleValidRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleValidRune, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleValidString" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleValidString, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleAppendRune" : stdgo.GoString), stdgo._internal.unicode.utf8_test.Utf8_test.exampleAppendRune, ("𐀀\ninit𐀀\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("unicode/utf8" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
