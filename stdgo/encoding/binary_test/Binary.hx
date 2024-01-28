package stdgo.encoding.binary_test;
import stdgo._internal.encoding.binary.Binary;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
30,
30,
(new stdgo._internal.testing.Testing.InternalTest(("TestLittleEndianRead" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testLittleEndianRead) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLittleEndianWrite" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testLittleEndianWrite) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLittleEndianPtrWrite" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testLittleEndianPtrWrite) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBigEndianRead" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testBigEndianRead) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBigEndianWrite" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testBigEndianWrite) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBigEndianPtrWrite" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testBigEndianPtrWrite) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadSlice" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testReadSlice) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteSlice" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testWriteSlice) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadBool" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testReadBool) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadBoolSlice" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testReadBoolSlice) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSliceRoundTrip" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testSliceRoundTrip) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteT" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testWriteT) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBlankFields" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testBlankFields) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSizeStructCache" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testSizeStructCache) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSizeInvalid" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testSizeInvalid) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnexportedRead" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testUnexportedRead) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadErrorMsg" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testReadErrorMsg) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadTruncated" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testReadTruncated) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestByteOrder" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testByteOrder) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEarlyBoundsChecks" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testEarlyBoundsChecks) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadInvalidDestination" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testReadInvalidDestination) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNoFixedSize" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testNoFixedSize) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNativeEndian" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testNativeEndian) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestConstants" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testConstants) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestVarint" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testVarint) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUvarint" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testUvarint) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBufferTooSmall" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testBufferTooSmall) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBufferTooBigWithOverflow" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testBufferTooBigWithOverflow) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOverflow" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testOverflow) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNonCanonicalZero" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.testNonCanonicalZero) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(
26,
26,
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReadSlice1000Int32s" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Int32s) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReadStruct" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkReadStruct) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriteStruct" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkWriteStruct) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReadInts" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkReadInts) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriteInts" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkWriteInts) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriteSlice1000Int32s" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Int32s) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPutUint16" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkPutUint16) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAppendUint16" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkAppendUint16) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPutUint32" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkPutUint32) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAppendUint32" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkAppendUint32) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPutUint64" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkPutUint64) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAppendUint64" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkAppendUint64) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianPutUint16" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint16) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianAppendUint16" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint16) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianPutUint32" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint32) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianAppendUint32" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint32) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianPutUint64" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint64) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianAppendUint64" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint64) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReadFloats" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkReadFloats) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriteFloats" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkWriteFloats) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReadSlice1000Float32s" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Float32s) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriteSlice1000Float32s" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Float32s) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReadSlice1000Uint8s" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Uint8s) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriteSlice1000Uint8s" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Uint8s) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPutUvarint32" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkPutUvarint32) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPutUvarint64" : stdgo.GoString), stdgo._internal.encoding.binary.Binary.benchmarkPutUvarint64) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(
10,
10,
(new stdgo._internal.testing.Testing.InternalExample(("ExampleWrite" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.exampleWrite, ("18 2d 44 54 fb 21 09 40\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleWrite_multi" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.exampleWrite_multi, ("beefcafe\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRead" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.exampleRead, ("3.141592653589793\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRead_multi" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.exampleRead_multi, ("3.141592653589793\n255\n01 02 03\n61374\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleByteOrder_put" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.exampleByteOrder_put, ("e8 03 d0 07\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleByteOrder_get" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.exampleByteOrder_get, ("0x03e8 0x07d0\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExamplePutUvarint" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.examplePutUvarint, ("01\n02\n7f\n8001\nff01\n8002\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExamplePutVarint" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.examplePutVarint, ("8101\n7f\n03\n01\n00\n02\n04\n7e\n8001\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleUvarint" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.exampleUvarint, ("1\n2\n127\n128\n255\n256\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleVarint" : stdgo.GoString), stdgo._internal.encoding.binary_test.Binary_test.exampleVarint, ("-65\n-64\n-2\n-1\n0\n1\n2\n63\n64\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("encoding/binary" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
