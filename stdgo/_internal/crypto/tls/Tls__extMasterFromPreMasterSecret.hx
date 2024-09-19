package stdgo._internal.crypto.tls;
function _extMasterFromPreMasterSecret(_version:stdgo.GoUInt16, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>, _preMasterSecret:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _masterSecret = (new stdgo.Slice<stdgo.GoUInt8>((48 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.tls.Tls__prfForVersion._prfForVersion(_version, _suite)(_masterSecret, _preMasterSecret, stdgo._internal.crypto.tls.Tls__extendedMasterSecretLabel._extendedMasterSecretLabel, _transcript);
        return _masterSecret;
    }
