package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testReadDir(_dir:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __ret__:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void = function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _t.parallel();
                        var __tmp__ = stdgo._internal.os.Os_open.open(_dir?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                        };
                        __deferstack__.unshift(() -> _file.close());
                        var __tmp__ = _file.readDir((-1 : stdgo.GoInt)), _s:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry> = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                        if (_err2 != null) {
                            _t.fatalf(("ReadDir %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err2));
                        };
                        for (__8 => _m in _contents) {
                            var _found = (false : Bool);
                            for (__9 => _n in _s) {
                                if (((_n.name() == ("." : stdgo.GoString)) || (_n.name() == (".." : stdgo.GoString)) : Bool)) {
                                    _t.errorf(("got %q in directory" : stdgo.GoString), stdgo.Go.toInterface(_n));
                                };
                                if (!_internal.os_test.Os_test__equal._equal(_m?.__copy__(), _n.name()?.__copy__())) {
                                    continue;
                                };
                                if (_found) {
                                    _t.error(stdgo.Go.toInterface(("present twice:" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                                };
                                _found = true;
                                var __tmp__ = stdgo._internal.os.Os_lstat.lstat(((_dir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _m?.__copy__() : stdgo.GoString)?.__copy__()), _lstat:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.fatal(stdgo.Go.toInterface(_err));
                                };
                                if (_n.isDir() != (_lstat.isDir())) {
                                    _t.errorf(("%s: IsDir=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_n.isDir()), stdgo.Go.toInterface(_lstat.isDir()));
                                };
                                if (_n.type() != (_lstat.mode().type())) {
                                    _t.errorf(("%s: IsDir=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(stdgo.Go.asInterface(_n.type())), stdgo.Go.toInterface(stdgo.Go.asInterface(_lstat.mode().type())));
                                };
                                var __tmp__ = _n.info(), _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.errorf(("%s: Info: %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_err));
                                    continue;
                                };
                                if (!stdgo._internal.os.Os_sameFile.sameFile(_info, _lstat)) {
                                    _t.errorf(("%s: Info: SameFile(info, lstat) = false" : stdgo.GoString), stdgo.Go.toInterface(_m));
                                };
                            };
                            if (!_found) {
                                _t.error(stdgo.Go.toInterface(("could not find" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                            };
                        };
                        if (_s == null) {
                            _t.error(stdgo.Go.toInterface(("ReadDir returned nil instead of empty slice" : stdgo.GoString)));
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
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return null;
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
            return null;
        };
    }
