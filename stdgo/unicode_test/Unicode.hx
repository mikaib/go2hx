package stdgo.unicode_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((((("TestDigit" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testDigit) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestDigitOptimization" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testDigitOptimization) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsControlLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsControlLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsLetterLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsLetterLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsUpperLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsUpperLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsLowerLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsLowerLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestNumberLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testNumberLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsPrintLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsPrintLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsGraphicLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsGraphicLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsPunctLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsPunctLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsSpaceLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsSpaceLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsSymbolLatin1" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsSymbolLatin1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsLetter" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsLetter) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsUpper" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsUpper) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTo" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testTo) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestToUpperCase" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testToUpperCase) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestToLowerCase" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testToLowerCase) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestToTitleCase" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testToTitleCase) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIsSpace" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testIsSpace) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLetterOptimizations" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testLetterOptimizations) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTurkishCase" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testTurkishCase) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSimpleFold" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testSimpleFold) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCalibrate" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testCalibrate) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLatinOffset" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testLatinOffset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSpecialCaseNoMapping" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testSpecialCaseNoMapping) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestNegativeRune" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testNegativeRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCategories" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testCategories) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestProperties" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.testProperties) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>() : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
((new stdgo.testing.Testing.InternalExample(((((("Example_is" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.example_is, ((((("For \'\\b\':\n\tis control rune\n\tis not printable rune\nFor \'5\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'Ὂ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\nFor \'g\':\n\tis graphic rune\n\tis letter rune\n\tis lower case rune\n\tis printable rune\nFor \'̀\':\n\tis graphic rune\n\tis mark rune\n\tis printable rune\nFor \'9\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'!\':\n\tis graphic rune\n\tis printable rune\n\tis punct rune\nFor \' \':\n\tis graphic rune\n\tis printable rune\n\tis space rune\nFor \'℃\':\n\tis graphic rune\n\tis printable rune\n\tis symbol rune\nFor \'ᾭ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis title case rune\nFor \'G\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSimpleFold" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleSimpleFold, ((((("U+0061 \'a\'\nU+0041 \'A\'\nU+006B \'k\'\nU+212A \'K\'\nU+004B \'K\'\nU+0031 \'1\'\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTo" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleTo, ((((("U+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\nU+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleToLower" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleToLower, ((((("U+0067 \'g\'\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleToTitle" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleToTitle, ((((("U+0047 \'G\'\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleToUpper" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleToUpper, ((((("U+0047 \'G\'\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSpecialCase" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleSpecialCase, ((((("U+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\nU+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIsDigit" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleIsDigit, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIsNumber" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleIsNumber, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIsLetter" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleIsLetter, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIsLower" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleIsLower, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIsUpper" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleIsUpper, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIsTitle" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleIsTitle, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIsSpace" : GoString))) : GoString)), stdgo.unicode_test.Unicode_test.exampleIsSpace, ((((("true\ntrue\ntrue\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m = stdgo.testing.Testing.mainStart({
            final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)));
            __self__.checkCorpus = #if !macro function(_vals:Slice<AnyInterface>, _types:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).checkCorpus(_vals, _types) #else null #end;
            __self__.coordinateFuzzing = #if !macro function(_timeout:stdgo.time.Time.Duration, _limit:GoInt64, _minimizeTimeout:stdgo.time.Time.Duration, _minimizeLimit:GoInt64, _parallel:GoInt, _seed:Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>, _types:Slice<stdgo.reflect.Reflect.Type>, _corpusDir:GoString, _cacheDir:GoString):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).coordinateFuzzing(_timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir) #else null #end;
            __self__.importPath = #if !macro function():GoString return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).importPath() #else null #end;
            __self__.matchString = #if !macro function(_pat:GoString, _str:GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).matchString(_pat, _str) #else null #end;
            __self__.readCorpus = #if !macro function(_dir:GoString, _types:Slice<stdgo.reflect.Reflect.Type>):{ var _0 : Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).readCorpus(_dir, _types) #else null #end;
            __self__.resetCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).resetCoverage() #else null #end;
            __self__.runFuzzWorker = #if !macro function(_fn:({ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).runFuzzWorker(_fn) #else null #end;
            __self__.setPanicOnExit0 = #if !macro function(_v:Bool):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).setPanicOnExit0(_v) #else null #end;
            __self__.snapshotCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).snapshotCoverage() #else null #end;
            __self__.startCPUProfile = #if !macro function(_w:stdgo.io.Io.Writer):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startCPUProfile(_w) #else null #end;
            __self__.startTestLog = #if !macro function(_w:stdgo.io.Io.Writer):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startTestLog(_w) #else null #end;
            __self__.stopCPUProfile = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopCPUProfile() #else null #end;
            __self__.stopTestLog = #if !macro function():stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopTestLog() #else null #end;
            __self__.writeProfileTo = #if !macro function(_name:GoString, _w:stdgo.io.Io.Writer, _debug:GoInt):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).writeProfileTo(_name, _w, _debug) #else null #end;
            __self__;
        }, _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((((("unicode" : GoString))) : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
