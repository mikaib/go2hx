package stdgo._internal.math.big;
function _addVWlarge(_z:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _x:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, _y:stdgo._internal.math.big.Big_Word.Word):stdgo._internal.math.big.Big_Word.Word {
        var _c = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        _c = _y;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (_z.length) : Bool) && (_i < (_x.length) : Bool) : Bool), _i++, {
                if (_c == ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
                    stdgo.Go.copySlice((_z.__slice__(_i) : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (_x.__slice__(_i) : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>));
                    return _c;
                };
                var __tmp__ = stdgo._internal.math.bits.Bits_add.add((_x[(_i : stdgo.GoInt)] : stdgo.GoUInt), (_c : stdgo.GoUInt), (0u32 : stdgo.GoUInt)), _zi:stdgo.GoUInt = __tmp__._0, _cc:stdgo.GoUInt = __tmp__._1;
                _z[(_i : stdgo.GoInt)] = (_zi : stdgo._internal.math.big.Big_Word.Word);
                _c = (_cc : stdgo._internal.math.big.Big_Word.Word);
            });
        };
        return _c;
    }
