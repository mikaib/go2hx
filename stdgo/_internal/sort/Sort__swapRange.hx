package stdgo._internal.sort;
function _swapRange(_data:stdgo._internal.sort.Sort_Interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _data.swap((_a + _i : stdgo.GoInt), (_b + _i : stdgo.GoInt));
            });
        };
    }
