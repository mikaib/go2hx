package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateRequestMsg_asInterface) class T_certificateRequestMsg_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg> = _m;
        _m._raw = _data;
        if (((_data.length) < (5 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _length = ((((_data[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_data[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_data[(3 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (((_data.length : stdgo.GoUInt32) - (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (_length)) {
            return false;
        };
        var _numCertTypes = (_data[(4 : stdgo.GoInt)] : stdgo.GoInt);
        _data = (_data.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_numCertTypes == (0 : stdgo.GoInt)) || ((_data.length) <= _numCertTypes : Bool) : Bool)) {
            return false;
        };
        _m._certificateTypes = (new stdgo.Slice<stdgo.GoUInt8>((_numCertTypes : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        if (_m._certificateTypes.__copyTo__(_data) != (_numCertTypes)) {
            return false;
        };
        _data = (_data.__slice__(_numCertTypes) : stdgo.Slice<stdgo.GoUInt8>);
        if (_m._hasSignatureAlgorithm) {
            if (((_data.length) < (2 : stdgo.GoInt) : Bool)) {
                return false;
            };
            var _sigAndHashLen = (((_data[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_data[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
            _data = (_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if ((_sigAndHashLen & (1 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                return false;
            };
            if (((_data.length) < (_sigAndHashLen : stdgo.GoInt) : Bool)) {
                return false;
            };
            var _numSigAlgos = (_sigAndHashLen / (2 : stdgo.GoUInt16) : stdgo.GoUInt16);
            _m._supportedSignatureAlgorithms = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>((_numSigAlgos : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
            for (_i => _ in _m._supportedSignatureAlgorithms) {
                _m._supportedSignatureAlgorithms[(_i : stdgo.GoInt)] = (((_data[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) << (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) | (_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme);
                _data = (_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        if (((_data.length) < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _casLength = (((_data[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_data[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
        _data = (_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_data.length) < (_casLength : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _cas = (new stdgo.Slice<stdgo.GoUInt8>((_casLength : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _cas.__copyTo__(_data);
        _data = (_data.__slice__(_casLength) : stdgo.Slice<stdgo.GoUInt8>);
        _m._certificateAuthorities = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        while (((_cas.length) > (0 : stdgo.GoInt) : Bool)) {
            if (((_cas.length) < (2 : stdgo.GoInt) : Bool)) {
                return false;
            };
            var _caLen = (((_cas[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cas[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
            _cas = (_cas.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (((_cas.length) < (_caLen : stdgo.GoInt) : Bool)) {
                return false;
            };
            _m._certificateAuthorities = (_m._certificateAuthorities.__append__((_cas.__slice__(0, _caLen) : stdgo.Slice<stdgo.GoUInt8>)));
            _cas = (_cas.__slice__(_caLen) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_data.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _length = (((1 : stdgo.GoInt) + (_m._certificateTypes.length) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt);
        var _casLength = (0 : stdgo.GoInt);
        for (__65 => _ca in _m._certificateAuthorities) {
            _casLength = (_casLength + (((2 : stdgo.GoInt) + (_ca.length) : stdgo.GoInt)) : stdgo.GoInt);
        };
        _length = (_length + (_casLength) : stdgo.GoInt);
        if (_m._hasSignatureAlgorithm) {
            _length = (_length + (((2 : stdgo.GoInt) + ((2 : stdgo.GoInt) * (_m._supportedSignatureAlgorithms.length) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _x = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + _length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _x[(0 : stdgo.GoInt)] = (13 : stdgo.GoUInt8);
        _x[(1 : stdgo.GoInt)] = ((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(2 : stdgo.GoInt)] = ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(3 : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
        _x[(4 : stdgo.GoInt)] = (_m._certificateTypes.length : stdgo.GoUInt8);
        (_x.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_m._certificateTypes);
        var _y = (_x.__slice__(((5 : stdgo.GoInt) + (_m._certificateTypes.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (_m._hasSignatureAlgorithm) {
            var _n = ((_m._supportedSignatureAlgorithms.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
            _y[(0 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _y[(1 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
            _y = (_y.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            for (__66 => _sigAlgo in _m._supportedSignatureAlgorithms) {
                _y[(0 : stdgo.GoInt)] = ((_sigAlgo >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) : stdgo.GoUInt8);
                _y[(1 : stdgo.GoInt)] = (_sigAlgo : stdgo.GoUInt8);
                _y = (_y.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        _y[(0 : stdgo.GoInt)] = ((_casLength >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _y[(1 : stdgo.GoInt)] = (_casLength : stdgo.GoUInt8);
        _y = (_y.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        for (__66 => _ca in _m._certificateAuthorities) {
            _y[(0 : stdgo.GoInt)] = (((_ca.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _y[(1 : stdgo.GoInt)] = (_ca.length : stdgo.GoUInt8);
            _y = (_y.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _y.__copyTo__(_ca);
            _y = (_y.__slice__((_ca.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _m._raw = _x;
        return { _0 : _m._raw, _1 : (null : stdgo.Error) };
    }
}
