package stdgo._internal.html.template;
@:keep @:allow(stdgo._internal.html.template.Template.T_jsCtx_asInterface) class T_jsCtx_static_extension {
    @:keep
    static public function string( _i:stdgo._internal.html.template.Template_T_jsCtx.T_jsCtx):stdgo.GoString {
        @:recv var _i:stdgo._internal.html.template.Template_T_jsCtx.T_jsCtx = _i;
        if ((_i >= ((3 : stdgo.GoInt) : stdgo._internal.html.template.Template_T_jsCtx.T_jsCtx) : Bool)) {
            return ((("jsCtx(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("jsCtxRegexpjsCtxDivOpjsCtxUnknown" : stdgo.GoString).__slice__(stdgo._internal.html.template.Template___jsCtx_index.__jsCtx_index[(_i : stdgo.GoInt)], stdgo._internal.html.template.Template___jsCtx_index.__jsCtx_index[((_i + (1 : stdgo._internal.html.template.Template_T_jsCtx.T_jsCtx) : stdgo._internal.html.template.Template_T_jsCtx.T_jsCtx) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
