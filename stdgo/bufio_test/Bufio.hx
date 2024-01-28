package stdgo.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
79,
79,
(new stdgo._internal.testing.Testing.InternalTest(("TestReaderSimple" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReaderSimple) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReader" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestZeroReader" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testZeroReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadRune" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReadRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnreadRune" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testUnreadRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNoUnreadRuneAfterPeek" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNoUnreadRuneAfterPeek) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNoUnreadByteAfterPeek" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNoUnreadByteAfterPeek) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNoUnreadRuneAfterDiscard" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNoUnreadRuneAfterDiscard) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNoUnreadByteAfterDiscard" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNoUnreadByteAfterDiscard) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNoUnreadRuneAfterWriteTo" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNoUnreadRuneAfterWriteTo) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNoUnreadByteAfterWriteTo" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNoUnreadByteAfterWriteTo) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnreadByte" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testUnreadByte) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnreadByteMultiple" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testUnreadByteMultiple) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnreadByteOthers" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testUnreadByteOthers) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnreadRuneError" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testUnreadRuneError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnreadRuneAtEOF" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testUnreadRuneAtEOF) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadWriteRune" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReadWriteRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteInvalidRune" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriteInvalidRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadStringAllocs" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReadStringAllocs) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriter" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriter) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterAppend" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterAppend) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteErrors" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriteErrors) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNewReaderSizeIdempotent" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNewReaderSizeIdempotent) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNewWriterSizeIdempotent" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNewWriterSizeIdempotent) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteString" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriteString) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteStringStringWriter" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriteStringStringWriter) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBufferFull" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testBufferFull) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPeek" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testPeek) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPeekThenUnreadRune" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testPeekThenUnreadRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadLine" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReadLine) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLineTooLong" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testLineTooLong) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadAfterLines" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReadAfterLines) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadEmptyBuffer" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReadEmptyBuffer) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLinesAfterRead" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testLinesAfterRead) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadLineNonNilLineOrError" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReadLineNonNilLineOrError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadLineNewlines" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReadLineNewlines) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReaderWriteTo" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReaderWriteTo) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReaderWriteToErrors" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReaderWriteToErrors) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReadFrom" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReadFrom) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReadFromErrors" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReadFromErrors) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReadFromCounts" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReadFromCounts) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNegativeRead" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNegativeRead) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReaderClearError" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReaderClearError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReadFromWhileFull" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReadFromWhileFull) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReadFromUntilEOF" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReadFromUntilEOF) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReadFromErrNoProgress" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReadFromErrNoProgress) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReadFromWithBufferedData" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReadFromWithBufferedData) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadZero" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReadZero) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReaderReset" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReaderReset) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReset" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReset) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReaderDiscard" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReaderDiscard) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReaderSize" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testReaderSize) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterSize" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterSize) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPartialReadEOF" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testPartialReadEOF) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReadFromMustSetUnderlyingError" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReadFromMustSetUnderlyingError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriterReadFromMustReturnUnderlyingError" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWriterReadFromMustReturnUnderlyingError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSpace" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testSpace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanByte" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanByte) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanRune" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanRune) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanWords" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanWords) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanLongLines" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanLongLines) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanLineTooLong" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanLineTooLong) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanLineNoNewline" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanLineNoNewline) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanLineReturnButNoNewline" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanLineReturnButNoNewline) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanLineEmptyFinalLine" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanLineEmptyFinalLine) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanLineEmptyFinalLineWithCR" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanLineEmptyFinalLineWithCR) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSplitError" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testSplitError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestErrAtEOF" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testErrAtEOF) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNonEOFWithEmptyRead" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNonEOFWithEmptyRead) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBadReader" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testBadReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanWordsExcessiveWhiteSpace" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testScanWordsExcessiveWhiteSpace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEmptyTokens" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testEmptyTokens) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWithNoEmptyTokens" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testWithNoEmptyTokens) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDontLoopForever" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testDontLoopForever) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBlankLines" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testBlankLines) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEmptyLinesOK" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testEmptyLinesOK) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestHugeBuffer" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testHugeBuffer) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNegativeEOFReader" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testNegativeEOFReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLargeReader" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.testLargeReader) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(
11,
11,
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReaderCopyOptimal" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkReaderCopyOptimal) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReaderCopyUnoptimal" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkReaderCopyUnoptimal) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReaderCopyNoWriteTo" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkReaderCopyNoWriteTo) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReaderWriteToOptimal" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkReaderWriteToOptimal) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReaderReadString" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkReaderReadString) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriterCopyOptimal" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkWriterCopyOptimal) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriterCopyUnoptimal" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkWriterCopyUnoptimal) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriterCopyNoReadFrom" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkWriterCopyNoReadFrom) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReaderEmpty" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkReaderEmpty) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriterEmpty" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkWriterEmpty) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWriterFlush" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.benchmarkWriterFlush) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(6, 6, (new stdgo._internal.testing.Testing.InternalExample(("ExampleWriter" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.exampleWriter, ("Hello, world!\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleWriter_AvailableBuffer" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.exampleWriter_AvailableBuffer, ("1 2 3 4\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleScanner_Bytes" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.exampleScanner_Bytes, ("true\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleScanner_words" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.exampleScanner_words, ("15\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleScanner_custom" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.exampleScanner_custom, ("1234\n5678\nInvalid input: strconv.ParseInt: parsing \"1234567901234567890\": value out of range\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleScanner_emptyFinalToken" : stdgo.GoString), stdgo._internal.bufio_test.Bufio_test.exampleScanner_emptyFinalToken, ("\"1\" \"2\" \"3\" \"4\" \"\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("bufio" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
