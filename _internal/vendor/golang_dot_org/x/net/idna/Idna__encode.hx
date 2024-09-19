package _internal.vendor.golang_dot_org.x.net.idna;
function _encode(_prefix:stdgo.GoString, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _output = (new stdgo.Slice<stdgo.GoUInt8>((_prefix.length : stdgo.GoInt).toBasic(), (((_prefix.length) + (1 : stdgo.GoInt) : stdgo.GoInt) + ((2 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_output, _prefix);
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (128 : stdgo.GoInt32), __2 = (72 : stdgo.GoInt32);
var _bias = __2, _n = __1, _delta = __0;
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
var _remaining = __1, _b = __0;
        for (__0 => _r in _s) {
            if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                _b++;
                _output = (_output.__append__((_r : stdgo.GoUInt8)));
            } else {
                _remaining++;
            };
        };
        var _h = (_b : stdgo.GoInt32);
        if ((_b > (0 : stdgo.GoInt32) : Bool)) {
            _output = (_output.__append__((45 : stdgo.GoUInt8)));
        };
        var _overflow = (false : Bool);
        while (_remaining != ((0 : stdgo.GoInt32))) {
            var _m = ((2147483647 : stdgo.GoInt32) : stdgo.GoInt32);
            for (__1 => _r in _s) {
                if (((_m > _r : Bool) && (_r >= _n : Bool) : Bool)) {
                    _m = _r;
                };
            };
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.idna.Idna__madd._madd(_delta, (_m - _n : stdgo.GoInt32), (_h + (1 : stdgo.GoInt32) : stdgo.GoInt32));
                _delta = __tmp__._0;
                _overflow = __tmp__._1;
            };
            if (_overflow) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : _internal.vendor.golang_dot_org.x.net.idna.Idna__punyError._punyError(_s?.__copy__()) };
            };
            _n = _m;
            for (__2 => _r in _s) {
                if ((_r < _n : Bool)) {
                    _delta++;
                    if ((_delta < (0 : stdgo.GoInt32) : Bool)) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _internal.vendor.golang_dot_org.x.net.idna.Idna__punyError._punyError(_s?.__copy__()) };
                    };
                    continue;
                };
                if ((_r > _n : Bool)) {
                    continue;
                };
                var _q = (_delta : stdgo.GoInt32);
                {
                    var _k = (36 : stdgo.GoInt32);
                    stdgo.Go.cfor(true, _k = (_k + ((36 : stdgo.GoInt32)) : stdgo.GoInt32), {
                        var _t = (_k - _bias : stdgo.GoInt32);
                        if ((_k <= _bias : Bool)) {
                            _t = (1 : stdgo.GoInt32);
                        } else if ((_k >= (_bias + (26 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                            _t = (26 : stdgo.GoInt32);
                        };
                        if ((_q < _t : Bool)) {
                            break;
                        };
                        _output = (_output.__append__(_internal.vendor.golang_dot_org.x.net.idna.Idna__encodeDigit._encodeDigit((_t + (((_q - _t : stdgo.GoInt32)) % (((36 : stdgo.GoInt32) - _t : stdgo.GoInt32)) : stdgo.GoInt32) : stdgo.GoInt32))));
                        _q = (((_q - _t : stdgo.GoInt32)) / (((36 : stdgo.GoInt32) - _t : stdgo.GoInt32)) : stdgo.GoInt32);
                    });
                };
                _output = (_output.__append__(_internal.vendor.golang_dot_org.x.net.idna.Idna__encodeDigit._encodeDigit(_q)));
                _bias = _internal.vendor.golang_dot_org.x.net.idna.Idna__adapt._adapt(_delta, (_h + (1 : stdgo.GoInt32) : stdgo.GoInt32), _h == (_b));
                _delta = (0 : stdgo.GoInt32);
                _h++;
                _remaining--;
            };
            _delta++;
            _n++;
        };
        return { _0 : (_output : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
