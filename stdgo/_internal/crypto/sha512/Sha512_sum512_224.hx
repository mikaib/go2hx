package stdgo._internal.crypto.sha512;
function sum512_224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> {
        var _d = ({ _function : (14u32 : stdgo._internal.crypto.Crypto_Hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest);
        _d.reset();
        _d.write(_data);
        var _sum = _d._checkSum()?.__copy__();
        var _ap = ((_sum.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return (_ap : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
    }
