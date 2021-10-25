package stdgo.testing;

import haxe.Rest;
import stdgo.StdGoTypes;
import stdgo.reflect.Reflect.GoType;
import stdgo.testing.internal.testdeps.Testdeps.TestDeps;

@:structInit
class InternalFuzzTarget implements StructType {
	public function new() {}

	public function __underlying__():AnyInterface
		return null;
}

class BenchmarkResult {
	public var n:GoInt = 0;
	public var t:Dynamic = null;
	public var bytes:GoInt64 = 0;
	public var memAllocs:GoUInt64 = 0;
	public var memBytes:GoUInt64 = 0;
	public var extra = new GoMap<GoString, GoFloat64>(new stdgo.reflect.Reflect._Type(mapType(basic(string_kind), basic(float64_kind)))).nil();

	public function new(?n, ?t, ?bytes, ?memAllocs, ?memBytes, ?extra) {
		stdgo.internal.Macro.initLocals();
	}

	public function benchmark(f:Pointer<B>->Void):BenchmarkResult {
		return null;
	}

	public function allocedBytesPerOp():GoInt64
		return 0;

	public function allocsPerOp():GoInt64
		return 0;

	public function memString():GoString
		return "";

	public function toString():GoString
		return "";
}

@:structInit
class PB implements StructType {
	public function new() {}

	public function next():Bool
		return false;

	public function __underlying__():AnyInterface
		return null;
}

@:structInit
class B implements StructType {
	public var n:GoInt = 0;

	var skipBool:Bool = false;
	var failBool:Bool = false;
	var output:StringBuf = null;

	public function new(?n:GoInt) {
		if (n != null)
			this.n = n;
	}

	public function cleanup(f:Void->Void) {}

	public function error(args:Rest<AnyInterface>) {
		stdgo.fmt.Fmt.println(args);
		fail();
	}

	public function errorf(format:GoString, args:Rest<AnyInterface>) {
		stdgo.fmt.Fmt.printf(format, ...args);
		stdgo.fmt.Fmt.println();
		fail();
	}

	public function fail() // marks the function as failed byt continues the execution
		failBool = true;

	public function failNow() { // FailNow marks the function as having failed and stops its execution by calling runtime.Goexit
		failBool = true;
		// end current process
		throw "__fail__";
	}

	public function failed():Bool
		return failBool;

	public function fatal(args:Rest<AnyInterface>) {}

	public function fatalf(format:GoString, args:Rest<AnyInterface>) {}

	public function helper() {}

	public function log(args:Rest<AnyInterface>) {} // Log formats its arguments using default formatting, analogous to Println, and records the text in the error log. For tests, the text will be printed only if the test fails or the -test.v flag is set. For benchmarks, the text is always printed

	public function logf(format:GoString, args:Rest<AnyInterface>) {}

	public function name():GoString {
		return "";
	}

	public function reportAllocs() {}

	public function reportMetric(n:GoFloat64, uint:GoString) {}

	public function runParrallel(body:Pointer<PB>->Void) {
		return null;
	}

	public function setBytes(n:GoInt64) {}

	public function setParallelism(p:GoInt) {}

	public function setEnv(key:GoString, value:GoString) {}

	public function skip(args:Rest<AnyInterface>) {}

	public function skipNow() {}

	public function skipf(format:GoString, args:Rest<AnyInterface>) {}

	public function skipped():Bool
		return skipBool;

	public function startTimer() {}

	public function stopTimer() {}

	public function tempDir():GoString {
		return "";
	}

	public function __underlying__():AnyInterface
		return null;
}

@:structInit
class T_ implements StructType {
	var skipBool:Bool = false;
	var failBool:Bool = false;
	var output:StringBuf = null;

	public function new(output:StringBuf) {
		this.output = output;
	}

	public function cleanup(f:Void->Void) {}

	public function error(args:Rest<AnyInterface>) {
		stdgo.fmt.Fmt.println(args);
		fail();
	}

	public function errorf(format:GoString, args:Rest<AnyInterface>) {
		stdgo.fmt.Fmt.printf(format, ...args);
		stdgo.fmt.Fmt.println();
		fail();
	}

	public function fail() // marks the function as failed byt continues the execution
		failBool = true;

	public function failNow() { // FailNow marks the function as having failed and stops its execution by calling runtime.Goexit
		failBool = true;
		// end current process
		throw "__fail__";
	}

	public function failed():Bool
		return failBool;

	public function fatal(args:Rest<AnyInterface>) {}

	public function fatalf(format:GoString, args:Rest<AnyInterface>) {}

	public function helper() {} // Helper marks the calling function as a test helper function. When printing file and line information, that function will be skipped.

	public function log(args:Rest<AnyInterface>) {} // Log formats its arguments using default formatting, analogous to Println, and records the text in the error log. For tests, the text will be printed only if the test fails or the -test.v flag is set. For benchmarks, the text is always printed

	public function logf(format:GoString, args:Rest<AnyInterface>) {}

	public function parallel() {}

	public function run(name:GoString, f:Pointer<T_>->Void):Bool {
		return true;
	}

	public function setenv(key:GoString, value:GoString) {}

	public function skip(args:Rest<AnyInterface>) {}

	public function skipNow() {}

	public function skipf(format:GoString, args:Rest<AnyInterface>) {}

	public function skipped():Bool
		return skipBool;

	public function tempDir():GoString
		return "";

	public function __underlying__():AnyInterface
		return null;

	public function __copy__()
		return new T_(output);
}

@:structInit
class M implements StructType {
	var deps:TestDeps = null;
	var tests:Slice<InternalTest> = null;
	var benchmarks:Slice<InternalBenchmark> = null;
	var examples:Slice<InternalExample> = null;
	var exitCode:GoInt = 0;
	var numRun:GoInt = 0;
	var output:StringBuf;

	public var chatty:Bool = true;

	public function new(deps, tests, benchmarks, examples) {
		this.deps = deps;
		this.tests = tests;
		this.benchmarks = benchmarks;
		this.examples = examples;
		this.output = new StringBuf();
	}

	public function run():GoInt {
		numRun++;
		for (test in tests) {
			var error = false;
			final output = new StringBuf();
			var t = new T_(output);
			final stamp = haxe.Timer.stamp();
			try {
				test.f(Go.pointer(t));
			} catch (e) {
				if (e.message != "__fail__") {
					stdgo.fmt.Fmt.println(e.details());
				}
				Sys.exit(0);
				error = true;
			}
			final dstr = haxe.Timer.stamp() - stamp; // duration
			final format = "--- %s: %s (%s)\n";
			if (t.failed() || error) {
				stdgo.fmt.Fmt.printf(format, Go.toInterface("FAIL"), Go.toInterface(test.name), Go.toInterface(dstr));
			} else if (chatty) {
				if (t.skipped()) {
					stdgo.fmt.Fmt.printf(format, Go.toInterface("SKIP"), Go.toInterface(test.name), Go.toInterface(dstr));
				} else {
					stdgo.fmt.Fmt.printf(format, Go.toInterface("PASS"), Go.toInterface(test.name), Go.toInterface(dstr));
				}
			}
			stdgo.fmt.Fmt.print(output.toString());
		}
		return exitCode;
	}

	public function __underlying__():AnyInterface
		return null;

	public function __copy__()
		return new M(deps, tests, benchmarks, examples);
}

@:structInit
class InternalBenchmark implements StructType {
	public var name:GoString = "";
	public var f:Pointer<B>->Void = null;

	public function new(?name, ?f) {
		stdgo.internal.Macro.initLocals();
	}

	public function __underlying__():AnyInterface
		return null;

	public function __copy__()
		return new InternalBenchmark(name, f);
}

@:structInit
class InternalExample implements StructType {
	public var name:GoString = "";
	public var f:Void->Void = null;
	public var output:GoString = "";
	public var unordered:Bool = false;

	public function new(?name, ?f, ?output, ?unordered) {
		stdgo.internal.Macro.initLocals();
	}

	public function __underlying__():AnyInterface
		return null;

	public function __copy__()
		return new InternalExample();
}

@:structInit
class InternalTest implements StructType {
	public var name:GoString = "";
	public var f:Pointer<T_>->Void = null;

	public function new(name:GoString, f:Pointer<T_>->Void) {
		this.name = name;
		this.f = f;
	}

	public function __underlying__():AnyInterface
		return null;

	public function __copy__()
		return new InternalTest(name, f);
}

function mainStart(deps:TestDeps, tests:Slice<InternalTest>, benchmarks:Slice<InternalBenchmark>, examples:Slice<InternalExample>):Pointer<M> {
	var m = new M(deps, tests, benchmarks, examples);
	return Go.pointer(m);
}
