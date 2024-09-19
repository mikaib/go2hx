package _internal.os.exec_dot_test;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>(32, 32, ...[
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestDedupEnv" : stdgo.GoString), stdgo._internal.os.exec.Exec_testDedupEnv.testDedupEnv) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestPrefixSuffixSaver" : stdgo.GoString), stdgo._internal.os.exec.Exec_testPrefixSuffixSaver.testPrefixSuffixSaver) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestLookPathNotFound" : stdgo.GoString), stdgo._internal.os.exec.Exec_testLookPathNotFound.testLookPathNotFound) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestLookPath" : stdgo.GoString), _internal.os.exec_test.Exec_test_testLookPath.testLookPath) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestEcho" : stdgo.GoString), _internal.os.exec_test.Exec_test_testEcho.testEcho) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestCommandRelativeName" : stdgo.GoString), _internal.os.exec_test.Exec_test_testCommandRelativeName.testCommandRelativeName) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestCatStdin" : stdgo.GoString), _internal.os.exec_test.Exec_test_testCatStdin.testCatStdin) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestEchoFileRace" : stdgo.GoString), _internal.os.exec_test.Exec_test_testEchoFileRace.testEchoFileRace) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestCatGoodAndBadFile" : stdgo.GoString), _internal.os.exec_test.Exec_test_testCatGoodAndBadFile.testCatGoodAndBadFile) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestNoExistExecutable" : stdgo.GoString), _internal.os.exec_test.Exec_test_testNoExistExecutable.testNoExistExecutable) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestExitStatus" : stdgo.GoString), _internal.os.exec_test.Exec_test_testExitStatus.testExitStatus) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestExitCode" : stdgo.GoString), _internal.os.exec_test.Exec_test_testExitCode.testExitCode) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestPipes" : stdgo.GoString), _internal.os.exec_test.Exec_test_testPipes.testPipes) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestStdinClose" : stdgo.GoString), _internal.os.exec_test.Exec_test_testStdinClose.testStdinClose) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestStdinCloseRace" : stdgo.GoString), _internal.os.exec_test.Exec_test_testStdinCloseRace.testStdinCloseRace) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestPipeLookPathLeak" : stdgo.GoString), _internal.os.exec_test.Exec_test_testPipeLookPathLeak.testPipeLookPathLeak) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestExtraFiles" : stdgo.GoString), _internal.os.exec_test.Exec_test_testExtraFiles.testExtraFiles) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestExtraFilesRace" : stdgo.GoString), _internal.os.exec_test.Exec_test_testExtraFilesRace.testExtraFilesRace) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestIgnorePipeErrorOnSuccess" : stdgo.GoString), _internal.os.exec_test.Exec_test_testIgnorePipeErrorOnSuccess.testIgnorePipeErrorOnSuccess) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestClosePipeOnCopyError" : stdgo.GoString), _internal.os.exec_test.Exec_test_testClosePipeOnCopyError.testClosePipeOnCopyError) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestOutputStderrCapture" : stdgo.GoString), _internal.os.exec_test.Exec_test_testOutputStderrCapture.testOutputStderrCapture) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestContext" : stdgo.GoString), _internal.os.exec_test.Exec_test_testContext.testContext) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestContextCancel" : stdgo.GoString), _internal.os.exec_test.Exec_test_testContextCancel.testContextCancel) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestDedupEnvEcho" : stdgo.GoString), _internal.os.exec_test.Exec_test_testDedupEnvEcho.testDedupEnvEcho) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestEnvNULCharacter" : stdgo.GoString), _internal.os.exec_test.Exec_test_testEnvNULCharacter.testEnvNULCharacter) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestString" : stdgo.GoString), _internal.os.exec_test.Exec_test_testString.testString) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestStringPathNotResolved" : stdgo.GoString), _internal.os.exec_test.Exec_test_testStringPathNotResolved.testStringPathNotResolved) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestNoPath" : stdgo.GoString), _internal.os.exec_test.Exec_test_testNoPath.testNoPath) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestDoubleStartLeavesPipesOpen" : stdgo.GoString), _internal.os.exec_test.Exec_test_testDoubleStartLeavesPipesOpen.testDoubleStartLeavesPipesOpen) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestWaitInterrupt" : stdgo.GoString), _internal.os.exec_test.Exec_test_testWaitInterrupt.testWaitInterrupt) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestCancelErrors" : stdgo.GoString), _internal.os.exec_test.Exec_test_testCancelErrors.testCancelErrors) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestConcurrentExec" : stdgo.GoString), _internal.os.exec_test.Exec_test_testConcurrentExec.testConcurrentExec) : stdgo._internal.testing.Testing_InternalTest.InternalTest)].concat([for (i in 32 ... (32 > 32 ? 32 : 32 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing_InternalTest.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>);
