package stdgo._internal.crypto.rsa;
@:structInit class PKCS1v15DecryptOptions {
    public var sessionKeyLen : stdgo.GoInt = 0;
    public function new(?sessionKeyLen:stdgo.GoInt) {
        if (sessionKeyLen != null) this.sessionKeyLen = sessionKeyLen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PKCS1v15DecryptOptions(sessionKeyLen);
    }
}
