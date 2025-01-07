package stdgo._internal.crypto.ecdsa;
@:structInit @:using(stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey_static_extension.PublicKey_static_extension) class PublicKey {
    @:embedded
    public var curve : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = (null : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve);
    public var x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public function new(?curve:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, ?x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) {
        if (curve != null) this.curve = curve;
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var add(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_add():(stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return @:check31 (this.curve ?? throw "null pointer derefrence").add;
    public var double(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_double():(stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return @:check31 (this.curve ?? throw "null pointer derefrence").double;
    public var isOnCurve(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isOnCurve():(stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) -> Bool return @:check31 (this.curve ?? throw "null pointer derefrence").isOnCurve;
    public var params(get, never) : () -> stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>;
    @:embedded
    @:embeddededffieldsffun
    public function get_params():() -> stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> return @:check31 (this.curve ?? throw "null pointer derefrence").params;
    public var scalarBaseMult(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_scalarBaseMult():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return @:check31 (this.curve ?? throw "null pointer derefrence").scalarBaseMult;
    public var scalarMult(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    public function get_scalarMult():(stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return @:check31 (this.curve ?? throw "null pointer derefrence").scalarMult;
    public function __copy__() {
        return new PublicKey(curve, x, y);
    }
}
