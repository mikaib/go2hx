package stdgo._internal.text.template;
function testParseGlobWithData(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parseGlob(("testdata/tmpl*.tmpl" : stdgo.GoString)), _template:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.text.template.Template__testExecute._testExecute(stdgo._internal.text.template.Template__templateFileExecTests._templateFileExecTests, _template, _t);
    }
