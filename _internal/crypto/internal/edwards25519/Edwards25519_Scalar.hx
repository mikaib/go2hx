package _internal.crypto.internal.edwards25519;
@:structInit @:using(_internal.crypto.internal.edwards25519.Edwards25519_Scalar_static_extension.Scalar_static_extension) class Scalar {
    public var _s : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement = new _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
    public function new(?_s:_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Scalar(_s);
    }
}
