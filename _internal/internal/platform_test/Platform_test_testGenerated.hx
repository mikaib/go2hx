package _internal.internal.platform_test;
function testGenerated(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoRun.mustHaveGoRun(stdgo.Go.asInterface(_t));
        var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("go" : stdgo.GoString), ("run" : stdgo.GoString), ("cmd/dist" : stdgo.GoString), ("list" : stdgo.GoString), ("-json" : stdgo.GoString), ("-broken" : stdgo.GoString));
        _cmd.env = (_cmd.environ_().__append__((("GOROOT=" : stdgo.GoString) + stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))?.__copy__() : stdgo.GoString)?.__copy__()));
        var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
                }, _ee = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((_ee.stderr.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_ee.stderr));
                };
            };
            _t.fatalf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err));
        };
        {};
        var _entries:stdgo.Slice<_internal.internal.platform_test.Platform_test_T_testGenerated___localname___listEntry_1146.T_testGenerated___localname___listEntry_1146> = (null : stdgo.Slice<_internal.internal.platform_test.Platform_test_T_testGenerated___localname___listEntry_1146.T_testGenerated___localname___listEntry_1146>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_out, stdgo.Go.toInterface((stdgo.Go.setRef(_entries) : stdgo.Ref<stdgo.Slice<_internal.internal.platform_test.Platform_test_T_testGenerated___localname___listEntry_1146.T_testGenerated___localname___listEntry_1146>>))) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _tmplOut = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _tmpl = ({
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("zosarch" : stdgo.GoString)).parse(("// Code generated by go test internal/platform -fix. DO NOT EDIT.\n\n// To change the information in this file, edit the cgoEnabled and/or firstClass\n// maps in cmd/dist/build.go, then run \'go generate internal/platform\'.\n\npackage platform\n\n// List is the list of all valid GOOS/GOARCH combinations,\n// including known-broken ports.\nvar List = []OSArch{\n{{range .}}\t{ {{ printf \"%q\" .GOOS }}, {{ printf \"%q\" .GOARCH }} },\n{{end}}\n}\n\nvar distInfo = map[OSArch]osArchInfo {\n{{range .}}\t{ {{ printf \"%q\" .GOOS }}, {{ printf \"%q\" .GOARCH }} }:\n{ {{if .CgoSupported}}CgoSupported: true, {{end}}{{if .FirstClass}}FirstClass: true, {{end}}{{if .Broken}} Broken: true, {{end}} },\n{{end}}\n}\n" : stdgo.GoString));
            stdgo._internal.text.template.Template_must.must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        _err = _tmpl.execute(stdgo.Go.asInterface(_tmplOut), stdgo.Go.toInterface(_entries));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("gofmt" : stdgo.GoString));
        _cmd.stdin = stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_tmplOut.bytes()));
        var __tmp__ = _cmd.output(), _want:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.logf(("stdin:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_tmplOut.bytes()));
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
                }, _ee = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((_ee.stderr.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _t.logf(("stderr:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_ee.stderr));
                };
            };
            _t.fatalf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(("zosarch.go" : stdgo.GoString)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err == null) && stdgo._internal.bytes.Bytes_equal.equal(_got, _want) : Bool)) {
            return;
        };
        if (!_internal.internal.platform_test.Platform_test__flagFix._flagFix.value) {
            if (_err != null) {
                _t.log(stdgo.Go.toInterface(_err));
            } else {
                _t.logf(("diff:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.diff.Diff_diff.diff(("zosarch.go" : stdgo.GoString), _got, ("want" : stdgo.GoString), _want)));
            };
            _t.fatalf(("zosarch.go is missing or out of date; to regenerate, run\ngo generate internal/platform" : stdgo.GoString));
        };
        {
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(("zosarch.go" : stdgo.GoString), _want, (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
