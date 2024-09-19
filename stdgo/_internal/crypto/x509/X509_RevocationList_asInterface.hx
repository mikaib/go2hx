package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
class RevocationList_asInterface {
    @:keep
    public dynamic function checkSignatureFrom(_parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Error return __self__.value.checkSignatureFrom(_parent);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
