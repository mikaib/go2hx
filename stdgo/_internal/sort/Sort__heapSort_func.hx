package stdgo._internal.sort;
function _heapSort_func(_data:stdgo._internal.sort.Sort_T_lessSwap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = (_a : stdgo.GoInt);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                stdgo._internal.sort.Sort__siftDown_func._siftDown_func(_data?.__copy__(), _i, _hi, _first);
            });
        };
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _data.swap(_first, (_first + _i : stdgo.GoInt));
                stdgo._internal.sort.Sort__siftDown_func._siftDown_func(_data?.__copy__(), _lo, _i, _first);
            });
        };
    }
