package stdgo.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.path.filepath.Filepath;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
39,
39,
(new stdgo._internal.testing.Testing.InternalTest(("TestMatch" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testMatch) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestGlob" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testGlob) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCVE202230632" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testCVE202230632) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestGlobError" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testGlobError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestGlobUNC" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testGlobUNC) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestGlobSymlink" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testGlobSymlink) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWindowsGlob" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testWindowsGlob) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNonWindowsGlobEscape" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testNonWindowsGlobEscape) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestClean" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testClean) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsLocal" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testIsLocal) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFromAndToSlash" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testFromAndToSlash) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSplitList" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testSplitList) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSplit" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testSplit) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestJoin" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testJoin) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestExt" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testExt) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWalk" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testWalk) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWalkDir" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testWalkDir) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWalkSkipDirOnFile" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testWalkSkipDirOnFile) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWalkSkipAllOnFile" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testWalkSkipAllOnFile) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWalkFileError" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testWalkFileError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWalkSymlinkRoot" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testWalkSymlinkRoot) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBase" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testBase) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDir" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testDir) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsAbs" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testIsAbs) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEvalSymlinks" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testEvalSymlinks) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEvalSymlinksIsNotExist" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testEvalSymlinksIsNotExist) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue13582" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testIssue13582) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRelativeSymlinkToAbsolute" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testRelativeSymlinkToAbsolute) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAbs" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testAbs) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAbsEmptyString" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testAbsEmptyString) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRel" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testRel) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestVolumeName" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testVolumeName) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDriveLetterInEvalSymlinks" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testDriveLetterInEvalSymlinks) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBug3486" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testBug3486) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWalkSymlink" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testWalkSymlink) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue29372" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testIssue29372) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEvalSymlinksAboveRoot" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testEvalSymlinksAboveRoot) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEvalSymlinksAboveRootChdir" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testEvalSymlinksAboveRootChdir) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue51617" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.testIssue51617) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(
10,
10,
(new stdgo._internal.testing.Testing.InternalExample(("ExampleExt" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleExt, ("No dots: \"\"\nOne dot: \".js\"\nTwo dots: \".js\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSplitList" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleSplitList, ("On Unix: [/a/b/c /usr/bin]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRel" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleRel, ("On Unix:\n\"/a/b/c\": \"b/c\" <nil>\n\"/b/c\": \"../b/c\" <nil>\n\"./b/c\": \"\" Rel: can\'t make ./b/c relative to /a\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSplit" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleSplit, ("On Unix:\ninput: \"/home/arnie/amelia.jpg\"\n\tdir: \"/home/arnie/\"\n\tfile: \"amelia.jpg\"\ninput: \"/mnt/photos/\"\n\tdir: \"/mnt/photos/\"\n\tfile: \"\"\ninput: \"rabbit.jpg\"\n\tdir: \"\"\n\tfile: \"rabbit.jpg\"\ninput: \"/usr/local//go\"\n\tdir: \"/usr/local//\"\n\tfile: \"go\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleJoin" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleJoin, ("On Unix:\na/b/c\na/b/c\na/b/c\na/b/c\n../xyz\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleMatch" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleMatch, ("On Unix:\ntrue <nil>\nfalse <nil>\ntrue <nil>\ntrue <nil>\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleBase" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleBase, ("On Unix:\nbaz.js\nbaz\nbaz\ndev.txt\ntodo.txt\n..\n.\n/\n.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleDir" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleDir, ("On Unix:\n/foo/bar\n/foo/bar\n/foo/bar/baz\n/dirty/path\n.\n..\n.\n.\n/\n.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleIsAbs" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleIsAbs, ("On Unix:\ntrue\nfalse\nfalse\nfalse\ntrue\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleWalk" : stdgo.GoString), stdgo._internal.path.filepath_test.Filepath_test.exampleWalk, ("On Unix:\nvisited file or dir: \".\"\nvisited file or dir: \"dir\"\nvisited file or dir: \"dir/to\"\nvisited file or dir: \"dir/to/walk\"\nskipping a dir without errors: skip\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("path/filepath" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
