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
function testIssue43941(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _steps:stdgo.GoInt = (7 : stdgo.GoInt);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _internal.runtime_test.Runtime_test__step._step(_t, stdgo.Go.pointer(_steps), (14 : stdgo.GoInt));
                        _internal.runtime_test.Runtime_test__expect._expect(_t, (4 : stdgo.GoInt), ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        }));
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> {
                                        var a = function():Void {
                                            var __deferstack__:Array<Void -> Void> = [];
                                            try {
                                                __deferstack__.unshift(() -> {
                                                    var a = function():Void {
                                                        var __deferstack__:Array<Void -> Void> = [];
                                                        try {
                                                            _internal.runtime_test.Runtime_test__expect._expect(_t, (3 : stdgo.GoInt), ({
                                                                final r = stdgo.Go.recover_exception;
                                                                stdgo.Go.recover_exception = null;
                                                                r;
                                                            }));
                                                            {
                                                                for (defer in __deferstack__) {
                                                                    defer();
                                                                };
                                                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                                                return;
                                                            };
                                                        } catch(__exception__) {
                                                            var exe:Dynamic = __exception__.native;
                                                            if ((exe is haxe.ValueException)) exe = exe.value;
                                                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                                                if (__exception__.message == "__return__") throw "__return__";
                                                                exe = stdgo.Go.toInterface(__exception__.message);
                                                            };
                                                            stdgo.Go.recover_exception = exe;
                                                            for (defer in __deferstack__) {
                                                                defer();
                                                            };
                                                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                                            return;
                                                        };
                                                    };
                                                    a();
                                                });
                                                {
                                                    var _a0 = (3 : stdgo.GoInt);
                                                    __deferstack__.unshift(() -> throw stdgo.Go.toInterface(_a0));
                                                };
                                                throw stdgo.Go.toInterface((2 : stdgo.GoInt));
                                                {
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                                    return;
                                                };
                                            } catch(__exception__) {
                                                var exe:Dynamic = __exception__.native;
                                                if ((exe is haxe.ValueException)) exe = exe.value;
                                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                                    if (__exception__.message == "__return__") throw "__return__";
                                                    exe = stdgo.Go.toInterface(__exception__.message);
                                                };
                                                stdgo.Go.recover_exception = exe;
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                                return;
                                            };
                                        };
                                        a();
                                    });
                                    __deferstack__.unshift(() -> {
                                        var a = function():Void {
                                            var __deferstack__:Array<Void -> Void> = [];
                                            try {
                                                _internal.runtime_test.Runtime_test__expect._expect(_t, (1 : stdgo.GoInt), ({
                                                    final r = stdgo.Go.recover_exception;
                                                    stdgo.Go.recover_exception = null;
                                                    r;
                                                }));
                                                {
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                                    return;
                                                };
                                            } catch(__exception__) {
                                                var exe:Dynamic = __exception__.native;
                                                if ((exe is haxe.ValueException)) exe = exe.value;
                                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                                    if (__exception__.message == "__return__") throw "__return__";
                                                    exe = stdgo.Go.toInterface(__exception__.message);
                                                };
                                                stdgo.Go.recover_exception = exe;
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                                return;
                                            };
                                        };
                                        a();
                                    });
                                    {
                                        var _a0 = (1 : stdgo.GoInt);
                                        __deferstack__.unshift(() -> throw stdgo.Go.toInterface(_a0));
                                    };
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        };
                        __deferstack__.unshift(() -> {
                            var a = function():Void {};
                            a();
                        });
                        __deferstack__.unshift(() -> {
                            var a = function():Void {};
                            a();
                        });
                        {
                            var _a0 = _t;
                            var _a1 = stdgo.Go.pointer(_steps);
                            var _a2 = (10 : stdgo.GoInt);
                            __deferstack__.unshift(() -> _internal.runtime_test.Runtime_test__step._step(_a0, _a1, _a2));
                        };
                        {
                            var _a0 = _t;
                            var _a1 = stdgo.Go.pointer(_steps);
                            var _a2 = (9 : stdgo.GoInt);
                            __deferstack__.unshift(() -> _internal.runtime_test.Runtime_test__step._step(_a0, _a1, _a2));
                        };
                        _internal.runtime_test.Runtime_test__step._step(_t, stdgo.Go.pointer(_steps), (8 : stdgo.GoInt));
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            };
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _a0 = _t;
                            var _a1 = stdgo.Go.pointer(_steps);
                            var _a2 = (13 : stdgo.GoInt);
                            __deferstack__.unshift(() -> _internal.runtime_test.Runtime_test__step._step(_a0, _a1, _a2));
                        };
                        {
                            var _a0 = _t;
                            var _a1 = stdgo.Go.pointer(_steps);
                            var _a2 = (12 : stdgo.GoInt);
                            __deferstack__.unshift(() -> _internal.runtime_test.Runtime_test__step._step(_a0, _a1, _a2));
                        };
                        {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    {
                                        var _a0 = _t;
                                        var _a1 = stdgo.Go.pointer(_steps);
                                        var _a2 = (11 : stdgo.GoInt);
                                        __deferstack__.unshift(() -> _internal.runtime_test.Runtime_test__step._step(_a0, _a1, _a2));
                                    };
                                    throw stdgo.Go.toInterface((4 : stdgo.GoInt));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        };
                        __deferstack__.unshift(() -> {
                            var a = function():Void {};
                            a();
                        });
                        {
                            var _a0 = (-1 : stdgo.GoInt);
                            __deferstack__.unshift(() -> throw stdgo.Go.toInterface(_a0));
                        };
                        {
                            var _a0 = _t;
                            var _a1 = stdgo.Go.pointer(_steps);
                            var _a2 = (-1 : stdgo.GoInt);
                            __deferstack__.unshift(() -> _internal.runtime_test.Runtime_test__step._step(_a0, _a1, _a2));
                        };
                        {
                            var _a0 = _t;
                            var _a1 = stdgo.Go.pointer(_steps);
                            var _a2 = (-1 : stdgo.GoInt);
                            __deferstack__.unshift(() -> _internal.runtime_test.Runtime_test__step._step(_a0, _a1, _a2));
                        };
                        __deferstack__.unshift(() -> {
                            var a = function():Void {};
                            a();
                        });
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
