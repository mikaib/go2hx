package _internal.os_dot_test;
import stdgo._internal.os.Os;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.os_dot_test.Os_dot_test__tests._tests, _internal.os_dot_test.Os_dot_test__benchmarks._benchmarks, _internal.os_dot_test.Os_dot_test__fuzzTargets._fuzzTargets, _internal.os_dot_test.Os_dot_test__examples._examples);
        _internal.os_test.Os_test_testMain.testMain(_m);
        Sys.exit((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_m))).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.GoInt));
    }
@:keep var __init_go2hx__ = {
        try {
            _internal.os_test.Os_test__isExistTests._isExistTests = (_internal.os_test.Os_test__isExistTests._isExistTests.__append__(({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)), _is : true, _isnot : false } : _internal.os_test.Os_test_T_isExistTest.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((39 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)), _is : true, _isnot : false } : _internal.os_test.Os_test_T_isExistTest.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_LinkError.LinkError)) : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>)), _is : true, _isnot : false } : _internal.os_test.Os_test_T_isExistTest.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((39 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_LinkError.LinkError)) : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>)), _is : true, _isnot : false } : _internal.os_test.Os_test_T_isExistTest.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_SyscallError.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>)), _is : true, _isnot : false } : _internal.os_test.Os_test_T_isExistTest.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((39 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_SyscallError.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>)), _is : true, _isnot : false } : _internal.os_test.Os_test_T_isExistTest.T_isExistTest)));
            _internal.os_test.Os_test__isPermissionTests._isPermissionTests = (_internal.os_test.Os_test__isPermissionTests._isPermissionTests.__append__(({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)), _want : true } : _internal.os_test.Os_test_T_isPermissionTest.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((1 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)), _want : true } : _internal.os_test.Os_test_T_isPermissionTest.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)), _want : false } : _internal.os_test.Os_test_T_isPermissionTest.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_LinkError.LinkError)) : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>)), _want : true } : _internal.os_test.Os_test_T_isPermissionTest.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((1 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_LinkError.LinkError)) : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>)), _want : true } : _internal.os_test.Os_test_T_isPermissionTest.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_LinkError.LinkError)) : stdgo.Ref<stdgo._internal.os.Os_LinkError.LinkError>)), _want : false } : _internal.os_test.Os_test_T_isPermissionTest.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_SyscallError.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>)), _want : true } : _internal.os_test.Os_test_T_isPermissionTest.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((1 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_SyscallError.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>)), _want : true } : _internal.os_test.Os_test_T_isPermissionTest.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall_Errno.Errno)) } : stdgo._internal.os.Os_SyscallError.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>)), _want : false } : _internal.os_test.Os_test_T_isPermissionTest.T_isPermissionTest)));
            {
                var _e = (stdgo._internal.os.Os_getenv.getenv(("OSTEST_OUTPUT_EXECPATH" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (_e != (stdgo.Go.str())) {
                    var _dir = ("/" : stdgo.GoString);
                    if (false) {
                        var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            throw stdgo.Go.toInterface(_err);
                        };
                        _dir = stdgo._internal.path.filepath.Filepath_volumeName.volumeName(_cwd?.__copy__())?.__copy__();
                    };
                    stdgo._internal.os.Os_chdir.chdir(_dir?.__copy__());
                    {
                        var __tmp__ = stdgo._internal.os.Os_executable.executable(), _ep:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(("ERROR: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        } else {
                            stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(_ep));
                        };
                    };
                    Sys.exit((0 : stdgo.GoInt));
                };
            };
            _internal.os_test.Os_test__isReadonlyError._isReadonlyError = function(_err:stdgo.Error):Bool {
                return stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.Go.asInterface((30 : stdgo._internal.syscall.Syscall_Errno.Errno))));
            };
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("os" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
