package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testRecoverBeforePanicAfterGoexit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustInternalLink.mustInternalLink(stdgo.Go.asInterface(_t), false);
        _t.parallel();
        var _output = (_internal.runtime_test.Runtime_test__runTestProg._runTestProg(_t, ("testprog" : stdgo.GoString), ("RecoverBeforePanicAfterGoexit" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want = ("fatal error: no goroutines (main called runtime.Goexit) - deadlock!" : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_output?.__copy__(), _want?.__copy__())) {
            _t.fatalf(("output does not start with %q:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
        };
    }
