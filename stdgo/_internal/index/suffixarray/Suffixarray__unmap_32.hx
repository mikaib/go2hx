package stdgo._internal.index.suffixarray;
function _unmap_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):Void {
        var _unmap = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _j = (_unmap.length : stdgo.GoInt);
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __2 = (false : Bool);
var _isTypeS = __2, _c1 = __1, _c0 = __0;
        {
            var _i = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _text[(_i : stdgo.GoInt)];
                    final __tmp__1 = _c0;
                    _c0 = @:binopAssign __tmp__0;
                    _c1 = @:binopAssign __tmp__1;
                };
if ((_c0 < _c1 : Bool)) {
                    _isTypeS = true;
                } else if (((_c0 > _c1 : Bool) && _isTypeS : Bool)) {
                    _isTypeS = false;
                    _j--;
                    _unmap[(_j : stdgo.GoInt)] = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                };
                _i--;
            };
        };
        _sa = (_sa.__slice__(0, _numLMS) : stdgo.Slice<stdgo.GoInt32>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_sa.length) : Bool)) {
                _sa[(_i : stdgo.GoInt)] = _unmap[(_sa[(_i : stdgo.GoInt)] : stdgo.GoInt)];
                _i++;
            };
        };
    }
