package _internal.strings_dot_test;
import stdgo._internal.strings.Strings;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.strings_dot_test.Strings_dot_test__tests._tests, _internal.strings_dot_test.Strings_dot_test__benchmarks._benchmarks, _internal.strings_dot_test.Strings_dot_test__fuzzTargets._fuzzTargets, _internal.strings_dot_test.Strings_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("strings" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
