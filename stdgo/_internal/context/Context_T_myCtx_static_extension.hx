package stdgo._internal.context;
@:keep @:allow(stdgo._internal.context.Context.T_myCtx_asInterface) class T_myCtx_static_extension {
    @:embedded
    public static function value( __self__:stdgo._internal.context.Context_T_myCtx.T_myCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key);
    @:embedded
    public static function err( __self__:stdgo._internal.context.Context_T_myCtx.T_myCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:stdgo._internal.context.Context_T_myCtx.T_myCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> return __self__.done();
    @:embedded
    public static function deadline( __self__:stdgo._internal.context.Context_T_myCtx.T_myCtx):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}
