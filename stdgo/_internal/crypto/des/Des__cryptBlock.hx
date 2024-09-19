package stdgo._internal.crypto.des;
function _cryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _decrypt:Bool):Void {
        var _b = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64(_src) : stdgo.GoUInt64);
        _b = stdgo._internal.crypto.des.Des__permuteInitialBlock._permuteInitialBlock(_b);
        var __0 = ((_b >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), __1 = (_b : stdgo.GoUInt32);
var _right = __1, _left = __0;
        _left = (((_left << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        if (_decrypt) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                    {
                        var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, _subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], _subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                        _left = __tmp__._0;
                        _right = __tmp__._1;
                    };
                });
            };
        } else {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                    {
                        var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, _subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                        _left = __tmp__._0;
                        _right = __tmp__._1;
                    };
                });
            };
        };
        _left = (((_left << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _preOutput = ((((_right : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_left : stdgo.GoUInt64) : stdgo.GoUInt64);
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint64(_dst, stdgo._internal.crypto.des.Des__permuteFinalBlock._permuteFinalBlock(_preOutput));
    }
