package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _tzsetNum(_s:stdgo.GoString, _min:stdgo.GoInt, _max:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _num = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        _num = (0 : stdgo.GoInt);
        for (_i => _r in _s) {
            if (((_r < (48 : stdgo.GoInt32) : Bool) || (_r > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                if (((_i == (0 : stdgo.GoInt)) || (_num < _min : Bool) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
                };
                return { _0 : _num, _1 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _2 : true };
            };
            _num = (_num * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            _num = (_num + (((_r : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_num > _max : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
            };
        };
        if ((_num < _min : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        return { _0 : _num, _1 : stdgo.Go.str()?.__copy__(), _2 : true };
    }
