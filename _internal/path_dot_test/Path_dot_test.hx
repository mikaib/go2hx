package _internal.path_dot_test;
import stdgo._internal.path.Path;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.path_dot_test.Path_dot_test__tests._tests, _internal.path_dot_test.Path_dot_test__benchmarks._benchmarks, _internal.path_dot_test.Path_dot_test__fuzzTargets._fuzzTargets, _internal.path_dot_test.Path_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("path" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
