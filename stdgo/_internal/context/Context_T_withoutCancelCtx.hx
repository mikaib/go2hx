package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_T_withoutCancelCtx_static_extension.T_withoutCancelCtx_static_extension) class T_withoutCancelCtx {
    public var _c : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public function new(?_c:stdgo._internal.context.Context_Context.Context) {
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_withoutCancelCtx(_c);
    }
}
