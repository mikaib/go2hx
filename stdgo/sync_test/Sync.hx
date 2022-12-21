package stdgo.sync_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCondSignal"), stdgo.sync_test.Sync_test.testCondSignal) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCondSignalGenerations"),
		stdgo.sync_test.Sync_test.testCondSignalGenerations) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCondBroadcast"), stdgo.sync_test.Sync_test.testCondBroadcast) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRace"), stdgo.sync_test.Sync_test.testRace) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCondSignalStealing"),
		stdgo.sync_test.Sync_test.testCondSignalStealing) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCondCopy"), stdgo.sync_test.Sync_test.testCondCopy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMapMatchesRWMutex"),
		stdgo.sync_test.Sync_test.testMapMatchesRWMutex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMapMatchesDeepCopy"),
		stdgo.sync_test.Sync_test.testMapMatchesDeepCopy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestConcurrentRange"),
		stdgo.sync_test.Sync_test.testConcurrentRange) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIssue40999"), stdgo.sync_test.Sync_test.testIssue40999) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMapRangeNestedCall"),
		stdgo.sync_test.Sync_test.testMapRangeNestedCall) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSemaphore"), stdgo.sync_test.Sync_test.testSemaphore) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMutex"), stdgo.sync_test.Sync_test.testMutex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMutexMisuse"), stdgo.sync_test.Sync_test.testMutexMisuse) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMutexFairness"), stdgo.sync_test.Sync_test.testMutexFairness) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestOnce"), stdgo.sync_test.Sync_test.testOnce) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestOncePanic"), stdgo.sync_test.Sync_test.testOncePanic) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPool"), stdgo.sync_test.Sync_test.testPool) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPoolNew"), stdgo.sync_test.Sync_test.testPoolNew) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPoolGC"), stdgo.sync_test.Sync_test.testPoolGC) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPoolRelease"), stdgo.sync_test.Sync_test.testPoolRelease) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPoolStress"), stdgo.sync_test.Sync_test.testPoolStress) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPoolDequeue"), stdgo.sync_test.Sync_test.testPoolDequeue) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPoolChain"), stdgo.sync_test.Sync_test.testPoolChain) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestParallelReaders"),
		stdgo.sync_test.Sync_test.testParallelReaders) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRWMutex"), stdgo.sync_test.Sync_test.testRWMutex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRLocker"), stdgo.sync_test.Sync_test.testRLocker) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestWaitGroup"), stdgo.sync_test.Sync_test.testWaitGroup) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestWaitGroupMisuse"),
		stdgo.sync_test.Sync_test.testWaitGroupMisuse) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestWaitGroupRace"), stdgo.sync_test.Sync_test.testWaitGroupRace) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestWaitGroupAlign"),
		stdgo.sync_test.Sync_test.testWaitGroupAlign) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCond1"),
		stdgo.sync_test.Sync_test.benchmarkCond1) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCond2"),
		stdgo.sync_test.Sync_test.benchmarkCond2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCond4"),
		stdgo.sync_test.Sync_test.benchmarkCond4) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCond8"),
		stdgo.sync_test.Sync_test.benchmarkCond8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCond16"),
		stdgo.sync_test.Sync_test.benchmarkCond16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCond32"),
		stdgo.sync_test.Sync_test.benchmarkCond32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLoadMostlyHits"),
		stdgo.sync_test.Sync_test.benchmarkLoadMostlyHits) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLoadMostlyMisses"),
		stdgo.sync_test.Sync_test.benchmarkLoadMostlyMisses) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLoadOrStoreBalanced"),
		stdgo.sync_test.Sync_test.benchmarkLoadOrStoreBalanced) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLoadOrStoreUnique"),
		stdgo.sync_test.Sync_test.benchmarkLoadOrStoreUnique) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLoadOrStoreCollision"),
		stdgo.sync_test.Sync_test.benchmarkLoadOrStoreCollision) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLoadAndDeleteBalanced"),
		stdgo.sync_test.Sync_test.benchmarkLoadAndDeleteBalanced) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLoadAndDeleteUnique"),
		stdgo.sync_test.Sync_test.benchmarkLoadAndDeleteUnique) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLoadAndDeleteCollision"),
		stdgo.sync_test.Sync_test.benchmarkLoadAndDeleteCollision) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRange"),
		stdgo.sync_test.Sync_test.benchmarkRange) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAdversarialAlloc"),
		stdgo.sync_test.Sync_test.benchmarkAdversarialAlloc) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAdversarialDelete"),
		stdgo.sync_test.Sync_test.benchmarkAdversarialDelete) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDeleteCollision"),
		stdgo.sync_test.Sync_test.benchmarkDeleteCollision) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkUncontendedSemaphore"),
		stdgo.sync_test.Sync_test.benchmarkUncontendedSemaphore) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkContendedSemaphore"),
		stdgo.sync_test.Sync_test.benchmarkContendedSemaphore) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMutexUncontended"),
		stdgo.sync_test.Sync_test.benchmarkMutexUncontended) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMutex"),
		stdgo.sync_test.Sync_test.benchmarkMutex) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMutexSlack"),
		stdgo.sync_test.Sync_test.benchmarkMutexSlack) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMutexWork"),
		stdgo.sync_test.Sync_test.benchmarkMutexWork) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMutexWorkSlack"),
		stdgo.sync_test.Sync_test.benchmarkMutexWorkSlack) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMutexNoSpin"),
		stdgo.sync_test.Sync_test.benchmarkMutexNoSpin) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkMutexSpin"),
		stdgo.sync_test.Sync_test.benchmarkMutexSpin) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkOnce"), stdgo.sync_test.Sync_test.benchmarkOnce) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPool"), stdgo.sync_test.Sync_test.benchmarkPool) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPoolOverflow"),
		stdgo.sync_test.Sync_test.benchmarkPoolOverflow) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPoolStarvation"),
		stdgo.sync_test.Sync_test.benchmarkPoolStarvation) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPoolSTW"),
		stdgo.sync_test.Sync_test.benchmarkPoolSTW) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPoolExpensiveNew"),
		stdgo.sync_test.Sync_test.benchmarkPoolExpensiveNew) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSemaUncontended"),
		stdgo.sync_test.Sync_test.benchmarkSemaUncontended) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSemaSyntNonblock"),
		stdgo.sync_test.Sync_test.benchmarkSemaSyntNonblock) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSemaSyntBlock"),
		stdgo.sync_test.Sync_test.benchmarkSemaSyntBlock) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSemaWorkNonblock"),
		stdgo.sync_test.Sync_test.benchmarkSemaWorkNonblock) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSemaWorkBlock"),
		stdgo.sync_test.Sync_test.benchmarkSemaWorkBlock) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRWMutexUncontended"),
		stdgo.sync_test.Sync_test.benchmarkRWMutexUncontended) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRWMutexWrite100"),
		stdgo.sync_test.Sync_test.benchmarkRWMutexWrite100) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRWMutexWrite10"),
		stdgo.sync_test.Sync_test.benchmarkRWMutexWrite10) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRWMutexWorkWrite100"),
		stdgo.sync_test.Sync_test.benchmarkRWMutexWorkWrite100) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRWMutexWorkWrite10"),
		stdgo.sync_test.Sync_test.benchmarkRWMutexWorkWrite10) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWaitGroupUncontended"),
		stdgo.sync_test.Sync_test.benchmarkWaitGroupUncontended) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWaitGroupAddDone"),
		stdgo.sync_test.Sync_test.benchmarkWaitGroupAddDone) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWaitGroupAddDoneWork"),
		stdgo.sync_test.Sync_test.benchmarkWaitGroupAddDoneWork) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWaitGroupWait"),
		stdgo.sync_test.Sync_test.benchmarkWaitGroupWait) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWaitGroupWaitWork"),
		stdgo.sync_test.Sync_test.benchmarkWaitGroupWaitWork) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWaitGroupActuallyWait"),
		stdgo.sync_test.Sync_test.benchmarkWaitGroupActuallyWait) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("ExamplePool"), stdgo.sync_test.Sync_test.examplePool,
		Go.str("2006-01-02T15:04:05Z path=/search?q=flowers\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleOnce"), stdgo.sync_test.Sync_test.exampleOnce, Go.str("Only once\n"),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("sync");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
