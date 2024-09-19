package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_ConnectionState_static_extension.ConnectionState_static_extension) class ConnectionState {
    public var version : stdgo.GoUInt16 = 0;
    public var handshakeComplete : Bool = false;
    public var didResume : Bool = false;
    public var cipherSuite : stdgo.GoUInt16 = 0;
    public var negotiatedProtocol : stdgo.GoString = "";
    public var negotiatedProtocolIsMutual : Bool = false;
    public var serverName : stdgo.GoString = "";
    public var peerCertificates : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
    public var verifiedChains : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>);
    public var signedCertificateTimestamps : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var ocspresponse : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var tlsunique : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ekm : (stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = null;
    public function new(?version:stdgo.GoUInt16, ?handshakeComplete:Bool, ?didResume:Bool, ?cipherSuite:stdgo.GoUInt16, ?negotiatedProtocol:stdgo.GoString, ?negotiatedProtocolIsMutual:Bool, ?serverName:stdgo.GoString, ?peerCertificates:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, ?verifiedChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>, ?signedCertificateTimestamps:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?ocspresponse:stdgo.Slice<stdgo.GoUInt8>, ?tlsunique:stdgo.Slice<stdgo.GoUInt8>, ?_ekm:(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }) {
        if (version != null) this.version = version;
        if (handshakeComplete != null) this.handshakeComplete = handshakeComplete;
        if (didResume != null) this.didResume = didResume;
        if (cipherSuite != null) this.cipherSuite = cipherSuite;
        if (negotiatedProtocol != null) this.negotiatedProtocol = negotiatedProtocol;
        if (negotiatedProtocolIsMutual != null) this.negotiatedProtocolIsMutual = negotiatedProtocolIsMutual;
        if (serverName != null) this.serverName = serverName;
        if (peerCertificates != null) this.peerCertificates = peerCertificates;
        if (verifiedChains != null) this.verifiedChains = verifiedChains;
        if (signedCertificateTimestamps != null) this.signedCertificateTimestamps = signedCertificateTimestamps;
        if (ocspresponse != null) this.ocspresponse = ocspresponse;
        if (tlsunique != null) this.tlsunique = tlsunique;
        if (_ekm != null) this._ekm = _ekm;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ConnectionState(
version,
handshakeComplete,
didResume,
cipherSuite,
negotiatedProtocol,
negotiatedProtocolIsMutual,
serverName,
peerCertificates,
verifiedChains,
signedCertificateTimestamps,
ocspresponse,
tlsunique,
_ekm);
    }
}
