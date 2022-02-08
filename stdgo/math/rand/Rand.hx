package stdgo.math.rand;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef Source = StructType & {
    public function int63():GoInt64;
    public function seed(_seed:GoInt64):Void;
};
typedef Source64 = StructType & {
    > Source,
    public function uint64():GoUInt64;
};
@:structInit class Rand {
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = try {
                { value : ((_r.value._src.__underlying__().value : Pointer<T_lockedSource>)), ok : true };
            } catch(_) {
                { value : new Pointer<T_lockedSource>().nil(), ok : false };
            }, _lk = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _lk.value._read(_p, Go.pointer(_r.value._readVal), Go.pointer(_r.value._readPos));
            };
        };
        return _read(_p, _r.value._src, Go.pointer(_r.value._readVal), Go.pointer(_r.value._readPos));
    }
    public function shuffle(_n:GoInt, _swap:(_i:GoInt, _j:GoInt) -> Void):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((0 : GoInt))) {
            throw Go.toInterface(((("invalid argument to Shuffle" : GoString))));
        };
        var _i:GoInt = _n - ((1 : GoInt));
        Go.cfor(_i > ((2147483646 : GoInt)), _i--, {
            var _j:GoInt = ((_r.value.int63n((((_i + ((1 : GoInt))) : GoInt64))) : GoInt));
            _swap(_i, _j);
        });
        Go.cfor(_i > ((0 : GoInt)), _i--, {
            var _j:GoInt = ((_r.value._int31n((((_i + ((1 : GoInt))) : GoInt32))) : GoInt));
            _swap(_i, _j);
        });
    }
    public function perm(_n:GoInt):Slice<GoInt> {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _m:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoInt))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _j:GoInt = _r.value.intn(_i + ((1 : GoInt)));
                _m[_i] = _m[_j];
                _m[_j] = _i;
            });
        };
        return _m;
    }
    public function float32():GoFloat32 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            @:label("again") var _f:GoFloat32 = ((_r.value.float64() : GoFloat32));
            if (_f == ((1 : GoFloat32))) {
                @:goto "again";
            };
            return _f;
        });
    }
    public function float64():GoFloat64 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            @:label("again") var _f:GoFloat64 = ((_r.value.int63() : GoFloat64)) / ((9.223372036854776e+18 : GoFloat64));
            if (_f == ((1 : GoFloat64))) {
                @:goto "again";
            };
            return _f;
        });
    }
    public function intn(_n:GoInt):GoInt {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n <= ((0 : GoInt))) {
            throw Go.toInterface(((("invalid argument to Intn" : GoString))));
        };
        if (_n <= ((2147483647 : GoInt))) {
            return ((_r.value.int31n(((_n : GoInt32))) : GoInt));
        };
        return ((_r.value.int63n(((_n : GoInt64))) : GoInt));
    }
    public function _int31n(_n:GoInt32):GoInt32 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _v:GoUInt32 = _r.value.uint32();
        var _prod:GoUInt64 = ((_v : GoUInt64)) * ((_n : GoUInt64));
        var _low:GoUInt32 = ((_prod : GoUInt32));
        if (_low < ((_n : GoUInt32))) {
            var _thresh:GoUInt32 = ((-_n : GoUInt32)) % ((_n : GoUInt32));
            while (_low < _thresh) {
                _v = _r.value.uint32();
                _prod = ((_v : GoUInt64)) * ((_n : GoUInt64));
                _low = ((_prod : GoUInt32));
            };
        };
        return (((_prod >> ((32 : GoUnTypedInt))) : GoInt32));
    }
    public function int31n(_n:GoInt32):GoInt32 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n <= ((0 : GoInt32))) {
            throw Go.toInterface(((("invalid argument to Int31n" : GoString))));
        };
        if ((_n & (_n - ((1 : GoInt32)))) == ((0 : GoInt32))) {
            return _r.value.int31() & (_n - ((1 : GoInt32)));
        };
        var _max:GoInt32 = (((((2147483647 : GoUInt32)) - ((("2147483648" : GoUInt32)) % ((_n : GoUInt32)))) : GoInt32));
        var _v:GoInt32 = _r.value.int31();
        while (_v > _max) {
            _v = _r.value.int31();
        };
        return _v % _n;
    }
    public function int63n(_n:GoInt64):GoInt64 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n <= ((0 : GoInt64))) {
            throw Go.toInterface(((("invalid argument to Int63n" : GoString))));
        };
        if ((_n & (_n - ((1 : GoInt64)))) == ((0 : GoInt64))) {
            return _r.value.int63() & (_n - ((1 : GoInt64)));
        };
        var _max:GoInt64 = ((((("9223372036854775807" : GoUInt64)) - ((("9223372036854775808" : GoUInt64)) % ((_n : GoUInt64)))) : GoInt64));
        var _v:GoInt64 = _r.value.int63();
        while (_v > _max) {
            _v = _r.value.int63();
        };
        return _v % _n;
    }
    public function int():GoInt {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _u:GoUInt = ((_r.value.int63() : GoUInt));
        return ((((_u << ((1 : GoUnTypedInt))) >> ((1 : GoUnTypedInt))) : GoInt));
    }
    public function int31():GoInt32 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (((_r.value.int63() >> ((32 : GoUnTypedInt))) : GoInt32));
    }
    public function uint64():GoUInt64 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (Go.toInterface(_r.value._s64) != Go.toInterface(null)) {
            return _r.value._s64.uint64();
        };
        return (((_r.value.int63() : GoUInt64)) >> ((31 : GoUnTypedInt))) | (((_r.value.int63() : GoUInt64)) << ((32 : GoUnTypedInt)));
    }
    public function uint32():GoUInt32 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (((_r.value.int63() >> ((31 : GoUnTypedInt))) : GoUInt32));
    }
    public function int63():GoInt64 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value._src.int63();
    }
    public function seed(_seed:GoInt64):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = try {
                { value : ((_r.value._src.__underlying__().value : Pointer<T_lockedSource>)), ok : true };
            } catch(_) {
                { value : new Pointer<T_lockedSource>().nil(), ok : false };
            }, _lk = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _lk.value._seedPos(_seed, Go.pointer(_r.value._readPos));
                return;
            };
        };
        _r.value._src.seed(_seed);
        _r.value._readPos = ((0 : GoInt8));
    }
    public function normFloat64():GoFloat64 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (true) {
            var _j:GoInt32 = ((_r.value.uint32() : GoInt32));
            var _i:GoInt32 = _j & ((127 : GoInt32));
            var _x:GoFloat64 = ((_j : GoFloat64)) * ((_wn[_i] : GoFloat64));
            if (_absInt32(_j) < _kn[_i]) {
                return _x;
            };
            if (_i == ((0 : GoInt32))) {
                while (true) {
                    _x = -stdgo.math.Math.log(_r.value.float64()) * ((0.29047645161474317 : GoFloat64));
                    var _y:GoFloat64 = -stdgo.math.Math.log(_r.value.float64());
                    if ((_y + _y) >= (_x * _x)) {
                        break;
                    };
                };
                if (_j > ((0 : GoInt32))) {
                    return ((3.442619855899 : GoFloat64)) + _x;
                };
                return ((-3.442619855899 : GoFloat64)) - _x;
            };
            if ((_fn[_i] + (((_r.value.float64() : GoFloat32)) * (_fn[_i - ((1 : GoInt32))] - _fn[_i]))) < ((stdgo.math.Math.exp((((-0.5 : GoFloat64)) * _x) * _x) : GoFloat32))) {
                return _x;
            };
        };
    }
    public function expFloat64():GoFloat64 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (true) {
            var _j:GoUInt32 = _r.value.uint32();
            var _i:GoUInt32 = _j & ((255 : GoUInt32));
            var _x:GoFloat64 = ((_j : GoFloat64)) * ((_we[_i] : GoFloat64));
            if (_j < _ke[_i]) {
                return _x;
            };
            if (_i == ((0 : GoUInt32))) {
                return ((7.69711747013105 : GoFloat64)) - stdgo.math.Math.log(_r.value.float64());
            };
            if ((_fe[_i] + (((_r.value.float64() : GoFloat32)) * (_fe[_i - ((1 : GoUInt32))] - _fe[_i]))) < ((stdgo.math.Math.exp(-_x) : GoFloat32))) {
                return _x;
            };
        };
    }
    public var _src : Source = ((null : Source));
    public var _s64 : Source64 = ((null : Source64));
    public var _readVal : GoInt64 = ((0 : GoInt64));
    public var _readPos : GoInt8 = ((0 : GoInt8));
    public function new(?_src:Source, ?_s64:Source64, ?_readVal:GoInt64, ?_readPos:GoInt8) {
        if (_src != null) this._src = _src;
        if (_s64 != null) this._s64 = _s64;
        if (_readVal != null) this._readVal = _readVal;
        if (_readPos != null) this._readPos = _readPos;
    }
    public function toString() {
        return "{" + Go.string(_src) + " " + Go.string(_s64) + " " + Go.string(_readVal) + " " + Go.string(_readPos) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Rand(_src, _s64, _readVal, _readPos);
    }
    public function __set__(__tmp__) {
        this._src = __tmp__._src;
        this._s64 = __tmp__._s64;
        this._readVal = __tmp__._readVal;
        this._readPos = __tmp__._readPos;
        return this;
    }
}
@:structInit class T_lockedSource {
    public function _read(_p:Slice<GoByte>, _readVal:Pointer<GoInt64>, _readPos:Pointer<GoInt8>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _r.value._lk.lock();
        {
            var __tmp__ = Rand._read(_p, _r.value._src.value, _readVal, _readPos);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r.value._lk.unlock();
        return { _0 : _n, _1 : _err };
    }
    public function _seedPos(_seed:GoInt64, _readPos:Pointer<GoInt8>):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._lk.lock();
        _r.value._src.value.seed(_seed);
        _readPos.value = ((0 : GoInt8));
        _r.value._lk.unlock();
    }
    public function seed(_seed:GoInt64):Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._lk.lock();
        _r.value._src.value.seed(_seed);
        _r.value._lk.unlock();
    }
    public function uint64():GoUInt64 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoUInt64 = ((0 : GoUInt64));
        _r.value._lk.lock();
        _n = _r.value._src.value.uint64();
        _r.value._lk.unlock();
        return _n;
    }
    public function int63():GoInt64 {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt64 = ((0 : GoInt64));
        _r.value._lk.lock();
        _n = _r.value._src.value.int63();
        _r.value._lk.unlock();
        return _n;
    }
    public var _lk : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _src : Pointer<T_rngSource> = new Pointer<T_rngSource>().nil();
    public function new(?_lk:stdgo.sync.Sync.Mutex, ?_src:Pointer<T_rngSource>) {
        if (_lk != null) this._lk = _lk;
        if (_src != null) this._src = _src;
    }
    public function toString() {
        return "{" + Go.string(_lk) + " " + Go.string(_src) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_lockedSource(_lk, _src);
    }
    public function __set__(__tmp__) {
        this._lk = __tmp__._lk;
        this._src = __tmp__._src;
        return this;
    }
}
@:structInit class T_rngSource {
    public function uint64():GoUInt64 {
        var _rng = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _rng.value._tap--;
        if (_rng.value._tap < ((0 : GoInt))) {
            _rng.value._tap = _rng.value._tap + (((607 : GoInt)));
        };
        _rng.value._feed--;
        if (_rng.value._feed < ((0 : GoInt))) {
            _rng.value._feed = _rng.value._feed + (((607 : GoInt)));
        };
        var _x:GoInt64 = _rng.value._vec[_rng.value._feed] + _rng.value._vec[_rng.value._tap];
        _rng.value._vec[_rng.value._feed] = _x;
        return ((_x : GoUInt64));
    }
    public function int63():GoInt64 {
        var _rng = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (((_rng.value.uint64() & (("9223372036854775807" : GoUInt64))) : GoInt64));
    }
    public function seed(_seed:GoInt64):Void {
        var _rng = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _rng.value._tap = ((0 : GoInt));
        _rng.value._feed = ((334 : GoInt));
        _seed = _seed % ((2147483647 : GoInt64));
        if (_seed < ((0 : GoInt64))) {
            _seed = _seed + (((2147483647 : GoInt64)));
        };
        if (_seed == ((0 : GoInt64))) {
            _seed = ((89482311 : GoInt64));
        };
        var _x:GoInt32 = ((_seed : GoInt32));
        {
            var _i:GoInt = ((-20 : GoInt));
            Go.cfor(_i < ((607 : GoInt)), _i++, {
                _x = _seedrand(_x);
                if (_i >= ((0 : GoInt))) {
                    var _u:GoInt64 = ((0 : GoInt64));
                    _u = ((_x : GoInt64)) << ((40 : GoUnTypedInt));
                    _x = _seedrand(_x);
                    _u = _u ^ (((_x : GoInt64)) << ((20 : GoUnTypedInt)));
                    _x = _seedrand(_x);
                    _u = _u ^ (((_x : GoInt64)));
                    _u = _u ^ (_rngCooked[_i]);
                    _rng.value._vec[_i] = _u;
                };
            });
        };
    }
    public var _tap : GoInt = ((0 : GoInt));
    public var _feed : GoInt = ((0 : GoInt));
    public var _vec : GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0 ... 607) ((0 : GoInt64))]);
    public function new(?_tap:GoInt, ?_feed:GoInt, ?_vec:GoArray<GoInt64>) {
        if (_tap != null) this._tap = _tap;
        if (_feed != null) this._feed = _feed;
        if (_vec != null) this._vec = _vec;
    }
    public function toString() {
        return "{" + Go.string(_tap) + " " + Go.string(_feed) + " " + Go.string(_vec) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_rngSource(_tap, _feed, _vec);
    }
    public function __set__(__tmp__) {
        this._tap = __tmp__._tap;
        this._feed = __tmp__._feed;
        this._vec = __tmp__._vec;
        return this;
    }
}
@:structInit class Zipf {
    public function uint64():GoUInt64 {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_z == null) {
            throw Go.toInterface(((("rand: nil Zipf" : GoString))));
        };
        var _k:GoFloat64 = ((0 : GoFloat64));
        while (true) {
            var _r:GoFloat64 = _z.value._r.value.float64();
            var _ur:GoFloat64 = _z.value._hxm + (_r * _z.value._hx0minusHxm);
            var _x:GoFloat64 = _z.value._hinv(_ur);
            _k = stdgo.math.Math.floor(_x + ((0.5 : GoFloat64)));
            if ((_k - _x) <= _z.value._s) {
                break;
            };
            if (_ur >= (_z.value._h(_k + ((0.5 : GoFloat64))) - stdgo.math.Math.exp(-stdgo.math.Math.log(_k + _z.value._v) * _z.value._q))) {
                break;
            };
        };
        return ((_k : GoUInt64));
    }
    public function _hinv(_x:GoFloat64):GoFloat64 {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.math.Math.exp(_z.value._oneminusQinv * stdgo.math.Math.log(_z.value._oneminusQ * _x)) - _z.value._v;
    }
    public function _h(_x:GoFloat64):GoFloat64 {
        var _z = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.math.Math.exp(_z.value._oneminusQ * stdgo.math.Math.log(_z.value._v + _x)) * _z.value._oneminusQinv;
    }
    public var _r : Pointer<Rand> = new Pointer<Rand>().nil();
    public var _imax : GoFloat64 = ((0 : GoFloat64));
    public var _v : GoFloat64 = ((0 : GoFloat64));
    public var _q : GoFloat64 = ((0 : GoFloat64));
    public var _s : GoFloat64 = ((0 : GoFloat64));
    public var _oneminusQ : GoFloat64 = ((0 : GoFloat64));
    public var _oneminusQinv : GoFloat64 = ((0 : GoFloat64));
    public var _hxm : GoFloat64 = ((0 : GoFloat64));
    public var _hx0minusHxm : GoFloat64 = ((0 : GoFloat64));
    public function new(?_r:Pointer<Rand>, ?_imax:GoFloat64, ?_v:GoFloat64, ?_q:GoFloat64, ?_s:GoFloat64, ?_oneminusQ:GoFloat64, ?_oneminusQinv:GoFloat64, ?_hxm:GoFloat64, ?_hx0minusHxm:GoFloat64) {
        if (_r != null) this._r = _r;
        if (_imax != null) this._imax = _imax;
        if (_v != null) this._v = _v;
        if (_q != null) this._q = _q;
        if (_s != null) this._s = _s;
        if (_oneminusQ != null) this._oneminusQ = _oneminusQ;
        if (_oneminusQinv != null) this._oneminusQinv = _oneminusQinv;
        if (_hxm != null) this._hxm = _hxm;
        if (_hx0minusHxm != null) this._hx0minusHxm = _hx0minusHxm;
    }
    public function toString() {
        return "{" + Go.string(_r) + " " + Go.string(_imax) + " " + Go.string(_v) + " " + Go.string(_q) + " " + Go.string(_s) + " " + Go.string(_oneminusQ) + " " + Go.string(_oneminusQinv) + " " + Go.string(_hxm) + " " + Go.string(_hx0minusHxm) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Zipf(_r, _imax, _v, _q, _s, _oneminusQ, _oneminusQinv, _hxm, _hx0minusHxm);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._imax = __tmp__._imax;
        this._v = __tmp__._v;
        this._q = __tmp__._q;
        this._s = __tmp__._s;
        this._oneminusQ = __tmp__._oneminusQ;
        this._oneminusQinv = __tmp__._oneminusQinv;
        this._hxm = __tmp__._hxm;
        this._hx0minusHxm = __tmp__._hx0minusHxm;
        return this;
    }
}
var _kn : GoArray<GoUInt32> = new GoArray<GoUInt32>(
((1991057938 : GoUInt32)),
((0 : GoUInt32)),
((1611602771 : GoUInt32)),
((1826899878 : GoUInt32)),
((1918584482 : GoUInt32)),
((1969227037 : GoUInt32)),
((2001281515 : GoUInt32)),
((2023368125 : GoUInt32)),
((2039498179 : GoUInt32)),
((2051788381 : GoUInt32)),
((2061460127 : GoUInt32)),
((2069267110 : GoUInt32)),
((2075699398 : GoUInt32)),
((2081089314 : GoUInt32)),
((2085670119 : GoUInt32)),
((2089610331 : GoUInt32)),
((2093034710 : GoUInt32)),
((2096037586 : GoUInt32)),
((2098691595 : GoUInt32)),
((2101053571 : GoUInt32)),
((2103168620 : GoUInt32)),
((2105072996 : GoUInt32)),
((2106796166 : GoUInt32)),
((2108362327 : GoUInt32)),
((2109791536 : GoUInt32)),
((2111100552 : GoUInt32)),
((2112303493 : GoUInt32)),
((2113412330 : GoUInt32)),
((2114437283 : GoUInt32)),
((2115387130 : GoUInt32)),
((2116269447 : GoUInt32)),
((2117090813 : GoUInt32)),
((2117856962 : GoUInt32)),
((2118572919 : GoUInt32)),
((2119243101 : GoUInt32)),
((2119871411 : GoUInt32)),
((2120461303 : GoUInt32)),
((2121015852 : GoUInt32)),
((2121537798 : GoUInt32)),
((2122029592 : GoUInt32)),
((2122493434 : GoUInt32)),
((2122931299 : GoUInt32)),
((2123344971 : GoUInt32)),
((2123736059 : GoUInt32)),
((2124106020 : GoUInt32)),
((2124456175 : GoUInt32)),
((2124787725 : GoUInt32)),
((2125101763 : GoUInt32)),
((2125399283 : GoUInt32)),
((2125681194 : GoUInt32)),
((2125948325 : GoUInt32)),
((2126201433 : GoUInt32)),
((2126441213 : GoUInt32)),
((2126668298 : GoUInt32)),
((2126883268 : GoUInt32)),
((2127086657 : GoUInt32)),
((2127278949 : GoUInt32)),
((2127460589 : GoUInt32)),
((2127631985 : GoUInt32)),
((2127793506 : GoUInt32)),
((2127945490 : GoUInt32)),
((2128088244 : GoUInt32)),
((2128222044 : GoUInt32)),
((2128347141 : GoUInt32)),
((2128463758 : GoUInt32)),
((2128572095 : GoUInt32)),
((2128672327 : GoUInt32)),
((2128764606 : GoUInt32)),
((2128849065 : GoUInt32)),
((2128925811 : GoUInt32)),
((2128994934 : GoUInt32)),
((2129056501 : GoUInt32)),
((2129110560 : GoUInt32)),
((2129157136 : GoUInt32)),
((2129196237 : GoUInt32)),
((2129227847 : GoUInt32)),
((2129251929 : GoUInt32)),
((2129268426 : GoUInt32)),
((2129277255 : GoUInt32)),
((2129278312 : GoUInt32)),
((2129271467 : GoUInt32)),
((2129256561 : GoUInt32)),
((2129233410 : GoUInt32)),
((2129201800 : GoUInt32)),
((2129161480 : GoUInt32)),
((2129112170 : GoUInt32)),
((2129053545 : GoUInt32)),
((2128985244 : GoUInt32)),
((2128906855 : GoUInt32)),
((2128817916 : GoUInt32)),
((2128717911 : GoUInt32)),
((2128606255 : GoUInt32)),
((2128482298 : GoUInt32)),
((2128345305 : GoUInt32)),
((2128194452 : GoUInt32)),
((2128028813 : GoUInt32)),
((2127847342 : GoUInt32)),
((2127648860 : GoUInt32)),
((2127432031 : GoUInt32)),
((2127195339 : GoUInt32)),
((2126937058 : GoUInt32)),
((2126655214 : GoUInt32)),
((2126347546 : GoUInt32)),
((2126011445 : GoUInt32)),
((2125643893 : GoUInt32)),
((2125241376 : GoUInt32)),
((2124799783 : GoUInt32)),
((2124314271 : GoUInt32)),
((2123779094 : GoUInt32)),
((2123187386 : GoUInt32)),
((2122530867 : GoUInt32)),
((2121799464 : GoUInt32)),
((2120980787 : GoUInt32)),
((2120059418 : GoUInt32)),
((2119015917 : GoUInt32)),
((2117825402 : GoUInt32)),
((2116455471 : GoUInt32)),
((2114863093 : GoUInt32)),
((2112989789 : GoUInt32)),
((2110753906 : GoUInt32)),
((2108037662 : GoUInt32)),
((2104664315 : GoUInt32)),
((2100355223 : GoUInt32)),
((2094642347 : GoUInt32)),
((2086670106 : GoUInt32)),
((2074676188 : GoUInt32)),
((2054300022 : GoUInt32)),
((2010539237 : GoUInt32))).copy();
var _we : GoArray<GoFloat32> = new GoArray<GoFloat32>(
((2.0249555e-09 : GoFloat32)),
((1.486674e-11 : GoFloat32)),
((2.4409617e-11 : GoFloat32)),
((3.1968806e-11 : GoFloat32)),
((3.844677e-11 : GoFloat32)),
((4.4228204e-11 : GoFloat32)),
((4.9516443e-11 : GoFloat32)),
((5.443359e-11 : GoFloat32)),
((5.905944e-11 : GoFloat32)),
((6.344942e-11 : GoFloat32)),
((6.7643814e-11 : GoFloat32)),
((7.1672945e-11 : GoFloat32)),
((7.556032e-11 : GoFloat32)),
((7.932458e-11 : GoFloat32)),
((8.298079e-11 : GoFloat32)),
((8.654132e-11 : GoFloat32)),
((9.0016515e-11 : GoFloat32)),
((9.3415074e-11 : GoFloat32)),
((9.674443e-11 : GoFloat32)),
((1.0001099e-10 : GoFloat32)),
((1.03220314e-10 : GoFloat32)),
((1.06377254e-10 : GoFloat32)),
((1.09486115e-10 : GoFloat32)),
((1.1255068e-10 : GoFloat32)),
((1.1557435e-10 : GoFloat32)),
((1.1856015e-10 : GoFloat32)),
((1.2151083e-10 : GoFloat32)),
((1.2442886e-10 : GoFloat32)),
((1.2731648e-10 : GoFloat32)),
((1.3017575e-10 : GoFloat32)),
((1.3300853e-10 : GoFloat32)),
((1.3581657e-10 : GoFloat32)),
((1.3860142e-10 : GoFloat32)),
((1.4136457e-10 : GoFloat32)),
((1.4410738e-10 : GoFloat32)),
((1.4683108e-10 : GoFloat32)),
((1.4953687e-10 : GoFloat32)),
((1.5222583e-10 : GoFloat32)),
((1.54899e-10 : GoFloat32)),
((1.5755733e-10 : GoFloat32)),
((1.6020171e-10 : GoFloat32)),
((1.6283301e-10 : GoFloat32)),
((1.6545203e-10 : GoFloat32)),
((1.6805951e-10 : GoFloat32)),
((1.7065617e-10 : GoFloat32)),
((1.732427e-10 : GoFloat32)),
((1.7581973e-10 : GoFloat32)),
((1.7838787e-10 : GoFloat32)),
((1.8094774e-10 : GoFloat32)),
((1.8349985e-10 : GoFloat32)),
((1.8604476e-10 : GoFloat32)),
((1.8858298e-10 : GoFloat32)),
((1.9111498e-10 : GoFloat32)),
((1.9364126e-10 : GoFloat32)),
((1.9616223e-10 : GoFloat32)),
((1.9867835e-10 : GoFloat32)),
((2.0119004e-10 : GoFloat32)),
((2.0369768e-10 : GoFloat32)),
((2.0620168e-10 : GoFloat32)),
((2.087024e-10 : GoFloat32)),
((2.1120022e-10 : GoFloat32)),
((2.136955e-10 : GoFloat32)),
((2.1618855e-10 : GoFloat32)),
((2.1867974e-10 : GoFloat32)),
((2.2116936e-10 : GoFloat32)),
((2.2365775e-10 : GoFloat32)),
((2.261452e-10 : GoFloat32)),
((2.2863202e-10 : GoFloat32)),
((2.311185e-10 : GoFloat32)),
((2.3360494e-10 : GoFloat32)),
((2.360916e-10 : GoFloat32)),
((2.3857874e-10 : GoFloat32)),
((2.4106667e-10 : GoFloat32)),
((2.4355562e-10 : GoFloat32)),
((2.4604588e-10 : GoFloat32)),
((2.485377e-10 : GoFloat32)),
((2.5103128e-10 : GoFloat32)),
((2.5352695e-10 : GoFloat32)),
((2.560249e-10 : GoFloat32)),
((2.585254e-10 : GoFloat32)),
((2.6102867e-10 : GoFloat32)),
((2.6353494e-10 : GoFloat32)),
((2.6604446e-10 : GoFloat32)),
((2.6855745e-10 : GoFloat32)),
((2.7107416e-10 : GoFloat32)),
((2.7359479e-10 : GoFloat32)),
((2.761196e-10 : GoFloat32)),
((2.7864877e-10 : GoFloat32)),
((2.8118255e-10 : GoFloat32)),
((2.8372119e-10 : GoFloat32)),
((2.8626485e-10 : GoFloat32)),
((2.888138e-10 : GoFloat32)),
((2.9136826e-10 : GoFloat32)),
((2.939284e-10 : GoFloat32)),
((2.9649452e-10 : GoFloat32)),
((2.9906677e-10 : GoFloat32)),
((3.016454e-10 : GoFloat32)),
((3.0423064e-10 : GoFloat32)),
((3.0682268e-10 : GoFloat32)),
((3.0942177e-10 : GoFloat32)),
((3.1202813e-10 : GoFloat32)),
((3.1464195e-10 : GoFloat32)),
((3.1726352e-10 : GoFloat32)),
((3.19893e-10 : GoFloat32)),
((3.2253064e-10 : GoFloat32)),
((3.251767e-10 : GoFloat32)),
((3.2783135e-10 : GoFloat32)),
((3.3049485e-10 : GoFloat32)),
((3.3316744e-10 : GoFloat32)),
((3.3584938e-10 : GoFloat32)),
((3.3854083e-10 : GoFloat32)),
((3.4124212e-10 : GoFloat32)),
((3.4395342e-10 : GoFloat32)),
((3.46675e-10 : GoFloat32)),
((3.4940711e-10 : GoFloat32)),
((3.5215003e-10 : GoFloat32)),
((3.5490397e-10 : GoFloat32)),
((3.5766917e-10 : GoFloat32)),
((3.6044595e-10 : GoFloat32)),
((3.6323455e-10 : GoFloat32)),
((3.660352e-10 : GoFloat32)),
((3.6884823e-10 : GoFloat32)),
((3.7167386e-10 : GoFloat32)),
((3.745124e-10 : GoFloat32)),
((3.773641e-10 : GoFloat32)),
((3.802293e-10 : GoFloat32)),
((3.8310827e-10 : GoFloat32)),
((3.860013e-10 : GoFloat32)),
((3.8890866e-10 : GoFloat32)),
((3.918307e-10 : GoFloat32)),
((3.9476775e-10 : GoFloat32)),
((3.9772008e-10 : GoFloat32)),
((4.0068804e-10 : GoFloat32)),
((4.0367196e-10 : GoFloat32)),
((4.0667217e-10 : GoFloat32)),
((4.09689e-10 : GoFloat32)),
((4.1272286e-10 : GoFloat32)),
((4.1577405e-10 : GoFloat32)),
((4.1884296e-10 : GoFloat32)),
((4.2192994e-10 : GoFloat32)),
((4.250354e-10 : GoFloat32)),
((4.281597e-10 : GoFloat32)),
((4.313033e-10 : GoFloat32)),
((4.3446652e-10 : GoFloat32)),
((4.3764986e-10 : GoFloat32)),
((4.408537e-10 : GoFloat32)),
((4.4407847e-10 : GoFloat32)),
((4.4732465e-10 : GoFloat32)),
((4.5059267e-10 : GoFloat32)),
((4.5388301e-10 : GoFloat32)),
((4.571962e-10 : GoFloat32)),
((4.6053267e-10 : GoFloat32)),
((4.6389292e-10 : GoFloat32)),
((4.6727755e-10 : GoFloat32)),
((4.70687e-10 : GoFloat32)),
((4.741219e-10 : GoFloat32)),
((4.7758275e-10 : GoFloat32)),
((4.810702e-10 : GoFloat32)),
((4.845848e-10 : GoFloat32)),
((4.8812715e-10 : GoFloat32)),
((4.9169796e-10 : GoFloat32)),
((4.9529775e-10 : GoFloat32)),
((4.989273e-10 : GoFloat32)),
((5.0258725e-10 : GoFloat32)),
((5.0627835e-10 : GoFloat32)),
((5.100013e-10 : GoFloat32)),
((5.1375687e-10 : GoFloat32)),
((5.1754584e-10 : GoFloat32)),
((5.21369e-10 : GoFloat32)),
((5.2522725e-10 : GoFloat32)),
((5.2912136e-10 : GoFloat32)),
((5.330522e-10 : GoFloat32)),
((5.370208e-10 : GoFloat32)),
((5.4102806e-10 : GoFloat32)),
((5.45075e-10 : GoFloat32)),
((5.491625e-10 : GoFloat32)),
((5.532918e-10 : GoFloat32)),
((5.5746385e-10 : GoFloat32)),
((5.616799e-10 : GoFloat32)),
((5.6594107e-10 : GoFloat32)),
((5.7024857e-10 : GoFloat32)),
((5.746037e-10 : GoFloat32)),
((5.7900773e-10 : GoFloat32)),
((5.834621e-10 : GoFloat32)),
((5.8796823e-10 : GoFloat32)),
((5.925276e-10 : GoFloat32)),
((5.971417e-10 : GoFloat32)),
((6.018122e-10 : GoFloat32)),
((6.065408e-10 : GoFloat32)),
((6.113292e-10 : GoFloat32)),
((6.1617933e-10 : GoFloat32)),
((6.2109295e-10 : GoFloat32)),
((6.260722e-10 : GoFloat32)),
((6.3111916e-10 : GoFloat32)),
((6.3623595e-10 : GoFloat32)),
((6.4142497e-10 : GoFloat32)),
((6.4668854e-10 : GoFloat32)),
((6.5202926e-10 : GoFloat32)),
((6.5744976e-10 : GoFloat32)),
((6.6295286e-10 : GoFloat32)),
((6.6854156e-10 : GoFloat32)),
((6.742188e-10 : GoFloat32)),
((6.79988e-10 : GoFloat32)),
((6.858526e-10 : GoFloat32)),
((6.9181616e-10 : GoFloat32)),
((6.978826e-10 : GoFloat32)),
((7.04056e-10 : GoFloat32)),
((7.103407e-10 : GoFloat32)),
((7.167412e-10 : GoFloat32)),
((7.2326256e-10 : GoFloat32)),
((7.2990985e-10 : GoFloat32)),
((7.366886e-10 : GoFloat32)),
((7.4360473e-10 : GoFloat32)),
((7.5066453e-10 : GoFloat32)),
((7.5787476e-10 : GoFloat32)),
((7.6524265e-10 : GoFloat32)),
((7.7277595e-10 : GoFloat32)),
((7.80483e-10 : GoFloat32)),
((7.883728e-10 : GoFloat32)),
((7.9645507e-10 : GoFloat32)),
((8.047402e-10 : GoFloat32)),
((8.1323964e-10 : GoFloat32)),
((8.219657e-10 : GoFloat32)),
((8.309319e-10 : GoFloat32)),
((8.401528e-10 : GoFloat32)),
((8.496445e-10 : GoFloat32)),
((8.594247e-10 : GoFloat32)),
((8.6951274e-10 : GoFloat32)),
((8.799301e-10 : GoFloat32)),
((8.9070046e-10 : GoFloat32)),
((9.018503e-10 : GoFloat32)),
((9.134092e-10 : GoFloat32)),
((9.254101e-10 : GoFloat32)),
((9.378904e-10 : GoFloat32)),
((9.508923e-10 : GoFloat32)),
((9.644638e-10 : GoFloat32)),
((9.786603e-10 : GoFloat32)),
((9.935448e-10 : GoFloat32)),
((1.0091913e-09 : GoFloat32)),
((1.025686e-09 : GoFloat32)),
((1.0431306e-09 : GoFloat32)),
((1.0616465e-09 : GoFloat32)),
((1.08138e-09 : GoFloat32)),
((1.1025096e-09 : GoFloat32)),
((1.1252564e-09 : GoFloat32)),
((1.1498986e-09 : GoFloat32)),
((1.1767932e-09 : GoFloat32)),
((1.206409e-09 : GoFloat32)),
((1.2393786e-09 : GoFloat32)),
((1.276585e-09 : GoFloat32)),
((1.3193139e-09 : GoFloat32)),
((1.3695435e-09 : GoFloat32)),
((1.4305498e-09 : GoFloat32)),
((1.508365e-09 : GoFloat32)),
((1.6160854e-09 : GoFloat32)),
((1.7921248e-09 : GoFloat32))).copy();
var _globalRand : Pointer<Rand> = new_(Go.pointer((({ _src : ((newSource(((1 : GoInt64))).__underlying__().value : Pointer<T_rngSource>)), _lk : new stdgo.sync.Sync.Mutex() } : T_lockedSource))).value);
var _0 : Pointer<T_rngSource> = ((_globalRand.value._src.__underlying__().value : Pointer<T_lockedSource>)).value._src;
var _wn : GoArray<GoFloat32> = new GoArray<GoFloat32>(
((1.7290405e-09 : GoFloat32)),
((1.2680929e-10 : GoFloat32)),
((1.6897518e-10 : GoFloat32)),
((1.9862688e-10 : GoFloat32)),
((2.2232431e-10 : GoFloat32)),
((2.4244937e-10 : GoFloat32)),
((2.601613e-10 : GoFloat32)),
((2.7611988e-10 : GoFloat32)),
((2.9073963e-10 : GoFloat32)),
((3.042997e-10 : GoFloat32)),
((3.1699796e-10 : GoFloat32)),
((3.289802e-10 : GoFloat32)),
((3.4035738e-10 : GoFloat32)),
((3.5121603e-10 : GoFloat32)),
((3.616251e-10 : GoFloat32)),
((3.7164058e-10 : GoFloat32)),
((3.8130857e-10 : GoFloat32)),
((3.9066758e-10 : GoFloat32)),
((3.9975012e-10 : GoFloat32)),
((4.08584e-10 : GoFloat32)),
((4.1719309e-10 : GoFloat32)),
((4.2559822e-10 : GoFloat32)),
((4.338176e-10 : GoFloat32)),
((4.418672e-10 : GoFloat32)),
((4.497613e-10 : GoFloat32)),
((4.5751258e-10 : GoFloat32)),
((4.651324e-10 : GoFloat32)),
((4.7263105e-10 : GoFloat32)),
((4.8001775e-10 : GoFloat32)),
((4.87301e-10 : GoFloat32)),
((4.944885e-10 : GoFloat32)),
((5.015873e-10 : GoFloat32)),
((5.0860405e-10 : GoFloat32)),
((5.155446e-10 : GoFloat32)),
((5.2241467e-10 : GoFloat32)),
((5.2921934e-10 : GoFloat32)),
((5.359635e-10 : GoFloat32)),
((5.426517e-10 : GoFloat32)),
((5.4928817e-10 : GoFloat32)),
((5.5587696e-10 : GoFloat32)),
((5.624219e-10 : GoFloat32)),
((5.6892646e-10 : GoFloat32)),
((5.753941e-10 : GoFloat32)),
((5.818282e-10 : GoFloat32)),
((5.882317e-10 : GoFloat32)),
((5.946077e-10 : GoFloat32)),
((6.00959e-10 : GoFloat32)),
((6.072884e-10 : GoFloat32)),
((6.135985e-10 : GoFloat32)),
((6.19892e-10 : GoFloat32)),
((6.2617134e-10 : GoFloat32)),
((6.3243905e-10 : GoFloat32)),
((6.386974e-10 : GoFloat32)),
((6.449488e-10 : GoFloat32)),
((6.511956e-10 : GoFloat32)),
((6.5744005e-10 : GoFloat32)),
((6.6368433e-10 : GoFloat32)),
((6.699307e-10 : GoFloat32)),
((6.7618144e-10 : GoFloat32)),
((6.824387e-10 : GoFloat32)),
((6.8870465e-10 : GoFloat32)),
((6.949815e-10 : GoFloat32)),
((7.012715e-10 : GoFloat32)),
((7.075768e-10 : GoFloat32)),
((7.1389966e-10 : GoFloat32)),
((7.202424e-10 : GoFloat32)),
((7.266073e-10 : GoFloat32)),
((7.329966e-10 : GoFloat32)),
((7.394128e-10 : GoFloat32)),
((7.4585826e-10 : GoFloat32)),
((7.5233547e-10 : GoFloat32)),
((7.58847e-10 : GoFloat32)),
((7.653954e-10 : GoFloat32)),
((7.719835e-10 : GoFloat32)),
((7.7861395e-10 : GoFloat32)),
((7.852897e-10 : GoFloat32)),
((7.920138e-10 : GoFloat32)),
((7.987892e-10 : GoFloat32)),
((8.0561924e-10 : GoFloat32)),
((8.125073e-10 : GoFloat32)),
((8.194569e-10 : GoFloat32)),
((8.2647167e-10 : GoFloat32)),
((8.3355556e-10 : GoFloat32)),
((8.407127e-10 : GoFloat32)),
((8.479473e-10 : GoFloat32)),
((8.55264e-10 : GoFloat32)),
((8.6266755e-10 : GoFloat32)),
((8.7016316e-10 : GoFloat32)),
((8.777562e-10 : GoFloat32)),
((8.8545243e-10 : GoFloat32)),
((8.932582e-10 : GoFloat32)),
((9.0117996e-10 : GoFloat32)),
((9.09225e-10 : GoFloat32)),
((9.174008e-10 : GoFloat32)),
((9.2571584e-10 : GoFloat32)),
((9.341788e-10 : GoFloat32)),
((9.427997e-10 : GoFloat32)),
((9.515889e-10 : GoFloat32)),
((9.605579e-10 : GoFloat32)),
((9.697193e-10 : GoFloat32)),
((9.790869e-10 : GoFloat32)),
((9.88676e-10 : GoFloat32)),
((9.985036e-10 : GoFloat32)),
((1.0085882e-09 : GoFloat32)),
((1.0189509e-09 : GoFloat32)),
((1.0296151e-09 : GoFloat32)),
((1.0406069e-09 : GoFloat32)),
((1.0519566e-09 : GoFloat32)),
((1.063698e-09 : GoFloat32)),
((1.0758702e-09 : GoFloat32)),
((1.0885183e-09 : GoFloat32)),
((1.1016947e-09 : GoFloat32)),
((1.1154611e-09 : GoFloat32)),
((1.1298902e-09 : GoFloat32)),
((1.1450696e-09 : GoFloat32)),
((1.1611052e-09 : GoFloat32)),
((1.1781276e-09 : GoFloat32)),
((1.1962995e-09 : GoFloat32)),
((1.2158287e-09 : GoFloat32)),
((1.2369856e-09 : GoFloat32)),
((1.2601323e-09 : GoFloat32)),
((1.2857697e-09 : GoFloat32)),
((1.3146202e-09 : GoFloat32)),
((1.347784e-09 : GoFloat32)),
((1.3870636e-09 : GoFloat32)),
((1.4357403e-09 : GoFloat32)),
((1.5008659e-09 : GoFloat32)),
((1.6030948e-09 : GoFloat32))).copy();
var _fe : GoArray<GoFloat32> = new GoArray<GoFloat32>(
((1 : GoFloat32)),
((0.9381437 : GoFloat32)),
((0.90046996 : GoFloat32)),
((0.87170434 : GoFloat32)),
((0.8477855 : GoFloat32)),
((0.8269933 : GoFloat32)),
((0.8084217 : GoFloat32)),
((0.7915276 : GoFloat32)),
((0.77595687 : GoFloat32)),
((0.7614634 : GoFloat32)),
((0.7478686 : GoFloat32)),
((0.7350381 : GoFloat32)),
((0.72286767 : GoFloat32)),
((0.71127474 : GoFloat32)),
((0.70019263 : GoFloat32)),
((0.6895665 : GoFloat32)),
((0.67935055 : GoFloat32)),
((0.6695063 : GoFloat32)),
((0.66000086 : GoFloat32)),
((0.65080583 : GoFloat32)),
((0.6418967 : GoFloat32)),
((0.63325197 : GoFloat32)),
((0.6248527 : GoFloat32)),
((0.6166822 : GoFloat32)),
((0.60872537 : GoFloat32)),
((0.60096896 : GoFloat32)),
((0.5934009 : GoFloat32)),
((0.58601034 : GoFloat32)),
((0.5787874 : GoFloat32)),
((0.57172304 : GoFloat32)),
((0.5648092 : GoFloat32)),
((0.5580383 : GoFloat32)),
((0.5514034 : GoFloat32)),
((0.5448982 : GoFloat32)),
((0.5385169 : GoFloat32)),
((0.53225386 : GoFloat32)),
((0.5261042 : GoFloat32)),
((0.52006316 : GoFloat32)),
((0.5141264 : GoFloat32)),
((0.50828975 : GoFloat32)),
((0.5025495 : GoFloat32)),
((0.496902 : GoFloat32)),
((0.49134386 : GoFloat32)),
((0.485872 : GoFloat32)),
((0.48048335 : GoFloat32)),
((0.4751752 : GoFloat32)),
((0.46994483 : GoFloat32)),
((0.46478975 : GoFloat32)),
((0.45970762 : GoFloat32)),
((0.45469615 : GoFloat32)),
((0.44975325 : GoFloat32)),
((0.44487688 : GoFloat32)),
((0.44006512 : GoFloat32)),
((0.43531612 : GoFloat32)),
((0.43062815 : GoFloat32)),
((0.42599955 : GoFloat32)),
((0.42142874 : GoFloat32)),
((0.4169142 : GoFloat32)),
((0.41245446 : GoFloat32)),
((0.40804818 : GoFloat32)),
((0.403694 : GoFloat32)),
((0.3993907 : GoFloat32)),
((0.39513698 : GoFloat32)),
((0.39093173 : GoFloat32)),
((0.38677382 : GoFloat32)),
((0.38266218 : GoFloat32)),
((0.37859577 : GoFloat32)),
((0.37457356 : GoFloat32)),
((0.37059465 : GoFloat32)),
((0.3666581 : GoFloat32)),
((0.362763 : GoFloat32)),
((0.35890847 : GoFloat32)),
((0.35509375 : GoFloat32)),
((0.351318 : GoFloat32)),
((0.3475805 : GoFloat32)),
((0.34388044 : GoFloat32)),
((0.34021714 : GoFloat32)),
((0.3365899 : GoFloat32)),
((0.33299807 : GoFloat32)),
((0.32944095 : GoFloat32)),
((0.32591796 : GoFloat32)),
((0.3224285 : GoFloat32)),
((0.3189719 : GoFloat32)),
((0.31554767 : GoFloat32)),
((0.31215525 : GoFloat32)),
((0.30879408 : GoFloat32)),
((0.3054636 : GoFloat32)),
((0.3021634 : GoFloat32)),
((0.29889292 : GoFloat32)),
((0.2956517 : GoFloat32)),
((0.29243928 : GoFloat32)),
((0.28925523 : GoFloat32)),
((0.28609908 : GoFloat32)),
((0.28297043 : GoFloat32)),
((0.27986884 : GoFloat32)),
((0.27679393 : GoFloat32)),
((0.2737453 : GoFloat32)),
((0.2707226 : GoFloat32)),
((0.2677254 : GoFloat32)),
((0.26475343 : GoFloat32)),
((0.26180625 : GoFloat32)),
((0.25888354 : GoFloat32)),
((0.25598502 : GoFloat32)),
((0.2531103 : GoFloat32)),
((0.25025907 : GoFloat32)),
((0.24743107 : GoFloat32)),
((0.24462597 : GoFloat32)),
((0.24184346 : GoFloat32)),
((0.23908329 : GoFloat32)),
((0.23634516 : GoFloat32)),
((0.23362878 : GoFloat32)),
((0.23093392 : GoFloat32)),
((0.2282603 : GoFloat32)),
((0.22560766 : GoFloat32)),
((0.22297576 : GoFloat32)),
((0.22036438 : GoFloat32)),
((0.21777324 : GoFloat32)),
((0.21520215 : GoFloat32)),
((0.21265087 : GoFloat32)),
((0.21011916 : GoFloat32)),
((0.20760682 : GoFloat32)),
((0.20511365 : GoFloat32)),
((0.20263945 : GoFloat32)),
((0.20018397 : GoFloat32)),
((0.19774707 : GoFloat32)),
((0.19532852 : GoFloat32)),
((0.19292815 : GoFloat32)),
((0.19054577 : GoFloat32)),
((0.1881812 : GoFloat32)),
((0.18583426 : GoFloat32)),
((0.18350479 : GoFloat32)),
((0.1811926 : GoFloat32)),
((0.17889754 : GoFloat32)),
((0.17661946 : GoFloat32)),
((0.17435817 : GoFloat32)),
((0.17211354 : GoFloat32)),
((0.1698854 : GoFloat32)),
((0.16767362 : GoFloat32)),
((0.16547804 : GoFloat32)),
((0.16329853 : GoFloat32)),
((0.16113494 : GoFloat32)),
((0.15898713 : GoFloat32)),
((0.15685499 : GoFloat32)),
((0.15473837 : GoFloat32)),
((0.15263714 : GoFloat32)),
((0.15055119 : GoFloat32)),
((0.14848037 : GoFloat32)),
((0.14642459 : GoFloat32)),
((0.14438373 : GoFloat32)),
((0.14235765 : GoFloat32)),
((0.14034624 : GoFloat32)),
((0.13834943 : GoFloat32)),
((0.13636707 : GoFloat32)),
((0.13439907 : GoFloat32)),
((0.13244532 : GoFloat32)),
((0.13050574 : GoFloat32)),
((0.1285802 : GoFloat32)),
((0.12666863 : GoFloat32)),
((0.12477092 : GoFloat32)),
((0.12288698 : GoFloat32)),
((0.12101672 : GoFloat32)),
((0.119160056 : GoFloat32)),
((0.1173169 : GoFloat32)),
((0.115487166 : GoFloat32)),
((0.11367077 : GoFloat32)),
((0.11186763 : GoFloat32)),
((0.11007768 : GoFloat32)),
((0.10830083 : GoFloat32)),
((0.10653701 : GoFloat32)),
((0.10478614 : GoFloat32)),
((0.10304816 : GoFloat32)),
((0.101323 : GoFloat32)),
((0.09961058 : GoFloat32)),
((0.09791085 : GoFloat32)),
((0.09622374 : GoFloat32)),
((0.09454919 : GoFloat32)),
((0.09288713 : GoFloat32)),
((0.091237515 : GoFloat32)),
((0.08960028 : GoFloat32)),
((0.087975375 : GoFloat32)),
((0.08636274 : GoFloat32)),
((0.08476233 : GoFloat32)),
((0.083174095 : GoFloat32)),
((0.081597984 : GoFloat32)),
((0.08003395 : GoFloat32)),
((0.07848195 : GoFloat32)),
((0.076941945 : GoFloat32)),
((0.07541389 : GoFloat32)),
((0.07389775 : GoFloat32)),
((0.072393484 : GoFloat32)),
((0.07090106 : GoFloat32)),
((0.069420435 : GoFloat32)),
((0.06795159 : GoFloat32)),
((0.066494495 : GoFloat32)),
((0.06504912 : GoFloat32)),
((0.063615434 : GoFloat32)),
((0.062193416 : GoFloat32)),
((0.060783047 : GoFloat32)),
((0.059384305 : GoFloat32)),
((0.057997175 : GoFloat32)),
((0.05662164 : GoFloat32)),
((0.05525769 : GoFloat32)),
((0.053905312 : GoFloat32)),
((0.052564494 : GoFloat32)),
((0.051235236 : GoFloat32)),
((0.049917534 : GoFloat32)),
((0.048611384 : GoFloat32)),
((0.047316793 : GoFloat32)),
((0.046033762 : GoFloat32)),
((0.0447623 : GoFloat32)),
((0.043502413 : GoFloat32)),
((0.042254124 : GoFloat32)),
((0.041017443 : GoFloat32)),
((0.039792392 : GoFloat32)),
((0.038578995 : GoFloat32)),
((0.037377283 : GoFloat32)),
((0.036187284 : GoFloat32)),
((0.035009038 : GoFloat32)),
((0.033842582 : GoFloat32)),
((0.032687962 : GoFloat32)),
((0.031545233 : GoFloat32)),
((0.030414443 : GoFloat32)),
((0.02929566 : GoFloat32)),
((0.02818895 : GoFloat32)),
((0.027094385 : GoFloat32)),
((0.026012046 : GoFloat32)),
((0.024942026 : GoFloat32)),
((0.023884421 : GoFloat32)),
((0.022839336 : GoFloat32)),
((0.021806888 : GoFloat32)),
((0.020787204 : GoFloat32)),
((0.019780423 : GoFloat32)),
((0.0187867 : GoFloat32)),
((0.0178062 : GoFloat32)),
((0.016839107 : GoFloat32)),
((0.015885621 : GoFloat32)),
((0.014945968 : GoFloat32)),
((0.014020392 : GoFloat32)),
((0.013109165 : GoFloat32)),
((0.012212592 : GoFloat32)),
((0.011331013 : GoFloat32)),
((0.01046481 : GoFloat32)),
((0.009614414 : GoFloat32)),
((0.008780315 : GoFloat32)),
((0.007963077 : GoFloat32)),
((0.0071633533 : GoFloat32)),
((0.006381906 : GoFloat32)),
((0.0056196423 : GoFloat32)),
((0.0048776558 : GoFloat32)),
((0.004157295 : GoFloat32)),
((0.0034602648 : GoFloat32)),
((0.0027887989 : GoFloat32)),
((0.0021459677 : GoFloat32)),
((0.0015362998 : GoFloat32)),
((0.0009672693 : GoFloat32)),
((0.00045413437 : GoFloat32))).copy();
var _fn : GoArray<GoFloat32> = new GoArray<GoFloat32>(
((1 : GoFloat32)),
((0.9635997 : GoFloat32)),
((0.9362827 : GoFloat32)),
((0.9130436 : GoFloat32)),
((0.89228165 : GoFloat32)),
((0.87324303 : GoFloat32)),
((0.8555006 : GoFloat32)),
((0.8387836 : GoFloat32)),
((0.8229072 : GoFloat32)),
((0.8077383 : GoFloat32)),
((0.793177 : GoFloat32)),
((0.7791461 : GoFloat32)),
((0.7655842 : GoFloat32)),
((0.7524416 : GoFloat32)),
((0.73967725 : GoFloat32)),
((0.7272569 : GoFloat32)),
((0.7151515 : GoFloat32)),
((0.7033361 : GoFloat32)),
((0.69178915 : GoFloat32)),
((0.68049186 : GoFloat32)),
((0.6694277 : GoFloat32)),
((0.658582 : GoFloat32)),
((0.6479418 : GoFloat32)),
((0.63749546 : GoFloat32)),
((0.6272325 : GoFloat32)),
((0.6171434 : GoFloat32)),
((0.6072195 : GoFloat32)),
((0.5974532 : GoFloat32)),
((0.58783704 : GoFloat32)),
((0.5783647 : GoFloat32)),
((0.56903 : GoFloat32)),
((0.5598274 : GoFloat32)),
((0.5507518 : GoFloat32)),
((0.54179835 : GoFloat32)),
((0.5329627 : GoFloat32)),
((0.52424055 : GoFloat32)),
((0.5156282 : GoFloat32)),
((0.50712204 : GoFloat32)),
((0.49871865 : GoFloat32)),
((0.49041483 : GoFloat32)),
((0.48220766 : GoFloat32)),
((0.4740943 : GoFloat32)),
((0.46607214 : GoFloat32)),
((0.4581387 : GoFloat32)),
((0.45029163 : GoFloat32)),
((0.44252872 : GoFloat32)),
((0.43484783 : GoFloat32)),
((0.427247 : GoFloat32)),
((0.41972435 : GoFloat32)),
((0.41227803 : GoFloat32)),
((0.40490642 : GoFloat32)),
((0.39760786 : GoFloat32)),
((0.3903808 : GoFloat32)),
((0.3832238 : GoFloat32)),
((0.37613547 : GoFloat32)),
((0.36911446 : GoFloat32)),
((0.3621595 : GoFloat32)),
((0.35526937 : GoFloat32)),
((0.34844297 : GoFloat32)),
((0.34167916 : GoFloat32)),
((0.33497685 : GoFloat32)),
((0.3283351 : GoFloat32)),
((0.3217529 : GoFloat32)),
((0.3152294 : GoFloat32)),
((0.30876362 : GoFloat32)),
((0.30235484 : GoFloat32)),
((0.29600215 : GoFloat32)),
((0.28970486 : GoFloat32)),
((0.2834622 : GoFloat32)),
((0.2772735 : GoFloat32)),
((0.27113807 : GoFloat32)),
((0.2650553 : GoFloat32)),
((0.25902456 : GoFloat32)),
((0.2530453 : GoFloat32)),
((0.24711695 : GoFloat32)),
((0.241239 : GoFloat32)),
((0.23541094 : GoFloat32)),
((0.22963232 : GoFloat32)),
((0.2239027 : GoFloat32)),
((0.21822165 : GoFloat32)),
((0.21258877 : GoFloat32)),
((0.20700371 : GoFloat32)),
((0.20146611 : GoFloat32)),
((0.19597565 : GoFloat32)),
((0.19053204 : GoFloat32)),
((0.18513499 : GoFloat32)),
((0.17978427 : GoFloat32)),
((0.17447963 : GoFloat32)),
((0.1692209 : GoFloat32)),
((0.16400786 : GoFloat32)),
((0.15884037 : GoFloat32)),
((0.15371831 : GoFloat32)),
((0.14864157 : GoFloat32)),
((0.14361008 : GoFloat32)),
((0.13862377 : GoFloat32)),
((0.13368265 : GoFloat32)),
((0.12878671 : GoFloat32)),
((0.12393598 : GoFloat32)),
((0.119130544 : GoFloat32)),
((0.11437051 : GoFloat32)),
((0.10965602 : GoFloat32)),
((0.104987256 : GoFloat32)),
((0.10036444 : GoFloat32)),
((0.095787846 : GoFloat32)),
((0.0912578 : GoFloat32)),
((0.08677467 : GoFloat32)),
((0.0823389 : GoFloat32)),
((0.077950984 : GoFloat32)),
((0.073611505 : GoFloat32)),
((0.06932112 : GoFloat32)),
((0.06508058 : GoFloat32)),
((0.06089077 : GoFloat32)),
((0.056752663 : GoFloat32)),
((0.0526674 : GoFloat32)),
((0.048636295 : GoFloat32)),
((0.044660863 : GoFloat32)),
((0.040742867 : GoFloat32)),
((0.03688439 : GoFloat32)),
((0.033087887 : GoFloat32)),
((0.029356318 : GoFloat32)),
((0.025693292 : GoFloat32)),
((0.022103304 : GoFloat32)),
((0.018592102 : GoFloat32)),
((0.015167298 : GoFloat32)),
((0.011839478 : GoFloat32)),
((0.008624485 : GoFloat32)),
((0.005548995 : GoFloat32)),
((0.0026696292 : GoFloat32))).copy();
var _ke : GoArray<GoUInt32> = new GoArray<GoUInt32>(
(("3801129273" : GoUInt32)),
((0 : GoUInt32)),
(("2615860924" : GoUInt32)),
(("3279400049" : GoUInt32)),
(("3571300752" : GoUInt32)),
(("3733536696" : GoUInt32)),
(("3836274812" : GoUInt32)),
(("3906990442" : GoUInt32)),
(("3958562475" : GoUInt32)),
(("3997804264" : GoUInt32)),
(("4028649213" : GoUInt32)),
(("4053523342" : GoUInt32)),
(("4074002619" : GoUInt32)),
(("4091154507" : GoUInt32)),
(("4105727352" : GoUInt32)),
(("4118261130" : GoUInt32)),
(("4129155133" : GoUInt32)),
(("4138710916" : GoUInt32)),
(("4147160435" : GoUInt32)),
(("4154685009" : GoUInt32)),
(("4161428406" : GoUInt32)),
(("4167506077" : GoUInt32)),
(("4173011791" : GoUInt32)),
(("4178022498" : GoUInt32)),
(("4182601930" : GoUInt32)),
(("4186803325" : GoUInt32)),
(("4190671498" : GoUInt32)),
(("4194244443" : GoUInt32)),
(("4197554582" : GoUInt32)),
(("4200629752" : GoUInt32)),
(("4203493986" : GoUInt32)),
(("4206168142" : GoUInt32)),
(("4208670408" : GoUInt32)),
(("4211016720" : GoUInt32)),
(("4213221098" : GoUInt32)),
(("4215295924" : GoUInt32)),
(("4217252177" : GoUInt32)),
(("4219099625" : GoUInt32)),
(("4220846988" : GoUInt32)),
(("4222502074" : GoUInt32)),
(("4224071896" : GoUInt32)),
(("4225562770" : GoUInt32)),
(("4226980400" : GoUInt32)),
(("4228329951" : GoUInt32)),
(("4229616109" : GoUInt32)),
(("4230843138" : GoUInt32)),
(("4232014925" : GoUInt32)),
(("4233135020" : GoUInt32)),
(("4234206673" : GoUInt32)),
(("4235232866" : GoUInt32)),
(("4236216336" : GoUInt32)),
(("4237159604" : GoUInt32)),
(("4238064994" : GoUInt32)),
(("4238934652" : GoUInt32)),
(("4239770563" : GoUInt32)),
(("4240574564" : GoUInt32)),
(("4241348362" : GoUInt32)),
(("4242093539" : GoUInt32)),
(("4242811568" : GoUInt32)),
(("4243503822" : GoUInt32)),
(("4244171579" : GoUInt32)),
(("4244816032" : GoUInt32)),
(("4245438297" : GoUInt32)),
(("4246039419" : GoUInt32)),
(("4246620374" : GoUInt32)),
(("4247182079" : GoUInt32)),
(("4247725394" : GoUInt32)),
(("4248251127" : GoUInt32)),
(("4248760037" : GoUInt32)),
(("4249252839" : GoUInt32)),
(("4249730206" : GoUInt32)),
(("4250192773" : GoUInt32)),
(("4250641138" : GoUInt32)),
(("4251075867" : GoUInt32)),
(("4251497493" : GoUInt32)),
(("4251906522" : GoUInt32)),
(("4252303431" : GoUInt32)),
(("4252688672" : GoUInt32)),
(("4253062674" : GoUInt32)),
(("4253425844" : GoUInt32)),
(("4253778565" : GoUInt32)),
(("4254121205" : GoUInt32)),
(("4254454110" : GoUInt32)),
(("4254777611" : GoUInt32)),
(("4255092022" : GoUInt32)),
(("4255397640" : GoUInt32)),
(("4255694750" : GoUInt32)),
(("4255983622" : GoUInt32)),
(("4256264513" : GoUInt32)),
(("4256537670" : GoUInt32)),
(("4256803325" : GoUInt32)),
(("4257061702" : GoUInt32)),
(("4257313014" : GoUInt32)),
(("4257557464" : GoUInt32)),
(("4257795244" : GoUInt32)),
(("4258026541" : GoUInt32)),
(("4258251531" : GoUInt32)),
(("4258470383" : GoUInt32)),
(("4258683258" : GoUInt32)),
(("4258890309" : GoUInt32)),
(("4259091685" : GoUInt32)),
(("4259287526" : GoUInt32)),
(("4259477966" : GoUInt32)),
(("4259663135" : GoUInt32)),
(("4259843154" : GoUInt32)),
(("4260018142" : GoUInt32)),
(("4260188212" : GoUInt32)),
(("4260353470" : GoUInt32)),
(("4260514019" : GoUInt32)),
(("4260669958" : GoUInt32)),
(("4260821380" : GoUInt32)),
(("4260968374" : GoUInt32)),
(("4261111028" : GoUInt32)),
(("4261249421" : GoUInt32)),
(("4261383632" : GoUInt32)),
(("4261513736" : GoUInt32)),
(("4261639802" : GoUInt32)),
(("4261761900" : GoUInt32)),
(("4261880092" : GoUInt32)),
(("4261994441" : GoUInt32)),
(("4262105003" : GoUInt32)),
(("4262211835" : GoUInt32)),
(("4262314988" : GoUInt32)),
(("4262414513" : GoUInt32)),
(("4262510454" : GoUInt32)),
(("4262602857" : GoUInt32)),
(("4262691764" : GoUInt32)),
(("4262777212" : GoUInt32)),
(("4262859239" : GoUInt32)),
(("4262937878" : GoUInt32)),
(("4263013162" : GoUInt32)),
(("4263085118" : GoUInt32)),
(("4263153776" : GoUInt32)),
(("4263219158" : GoUInt32)),
(("4263281289" : GoUInt32)),
(("4263340187" : GoUInt32)),
(("4263395872" : GoUInt32)),
(("4263448358" : GoUInt32)),
(("4263497660" : GoUInt32)),
(("4263543789" : GoUInt32)),
(("4263586755" : GoUInt32)),
(("4263626565" : GoUInt32)),
(("4263663224" : GoUInt32)),
(("4263696735" : GoUInt32)),
(("4263727099" : GoUInt32)),
(("4263754314" : GoUInt32)),
(("4263778377" : GoUInt32)),
(("4263799282" : GoUInt32)),
(("4263817020" : GoUInt32)),
(("4263831582" : GoUInt32)),
(("4263842955" : GoUInt32)),
(("4263851124" : GoUInt32)),
(("4263856071" : GoUInt32)),
(("4263857776" : GoUInt32)),
(("4263856218" : GoUInt32)),
(("4263851370" : GoUInt32)),
(("4263843206" : GoUInt32)),
(("4263831695" : GoUInt32)),
(("4263816804" : GoUInt32)),
(("4263798497" : GoUInt32)),
(("4263776735" : GoUInt32)),
(("4263751476" : GoUInt32)),
(("4263722676" : GoUInt32)),
(("4263690284" : GoUInt32)),
(("4263654251" : GoUInt32)),
(("4263614520" : GoUInt32)),
(("4263571032" : GoUInt32)),
(("4263523724" : GoUInt32)),
(("4263472530" : GoUInt32)),
(("4263417377" : GoUInt32)),
(("4263358192" : GoUInt32)),
(("4263294892" : GoUInt32)),
(("4263227394" : GoUInt32)),
(("4263155608" : GoUInt32)),
(("4263079437" : GoUInt32)),
(("4262998781" : GoUInt32)),
(("4262913534" : GoUInt32)),
(("4262823581" : GoUInt32)),
(("4262728804" : GoUInt32)),
(("4262629075" : GoUInt32)),
(("4262524261" : GoUInt32)),
(("4262414220" : GoUInt32)),
(("4262298801" : GoUInt32)),
(("4262177846" : GoUInt32)),
(("4262051187" : GoUInt32)),
(("4261918645" : GoUInt32)),
(("4261780032" : GoUInt32)),
(("4261635148" : GoUInt32)),
(("4261483780" : GoUInt32)),
(("4261325704" : GoUInt32)),
(("4261160681" : GoUInt32)),
(("4260988457" : GoUInt32)),
(("4260808763" : GoUInt32)),
(("4260621313" : GoUInt32)),
(("4260425802" : GoUInt32)),
(("4260221905" : GoUInt32)),
(("4260009277" : GoUInt32)),
(("4259787550" : GoUInt32)),
(("4259556329" : GoUInt32)),
(("4259315195" : GoUInt32)),
(("4259063697" : GoUInt32)),
(("4258801357" : GoUInt32)),
(("4258527656" : GoUInt32)),
(("4258242044" : GoUInt32)),
(("4257943926" : GoUInt32)),
(("4257632664" : GoUInt32)),
(("4257307571" : GoUInt32)),
(("4256967906" : GoUInt32)),
(("4256612870" : GoUInt32)),
(("4256241598" : GoUInt32)),
(("4255853155" : GoUInt32)),
(("4255446525" : GoUInt32)),
(("4255020608" : GoUInt32)),
(("4254574202" : GoUInt32)),
(("4254106002" : GoUInt32)),
(("4253614578" : GoUInt32)),
(("4253098370" : GoUInt32)),
(("4252555662" : GoUInt32)),
(("4251984571" : GoUInt32)),
(("4251383021" : GoUInt32)),
(("4250748722" : GoUInt32)),
(("4250079132" : GoUInt32)),
(("4249371435" : GoUInt32)),
(("4248622490" : GoUInt32)),
(("4247828790" : GoUInt32)),
(("4246986404" : GoUInt32)),
(("4246090910" : GoUInt32)),
(("4245137315" : GoUInt32)),
(("4244119963" : GoUInt32)),
(("4243032411" : GoUInt32)),
(("4241867296" : GoUInt32)),
(("4240616155" : GoUInt32)),
(("4239269214" : GoUInt32)),
(("4237815118" : GoUInt32)),
(("4236240596" : GoUInt32)),
(("4234530035" : GoUInt32)),
(("4232664930" : GoUInt32)),
(("4230623176" : GoUInt32)),
(("4228378137" : GoUInt32)),
(("4225897409" : GoUInt32)),
(("4223141146" : GoUInt32)),
(("4220059768" : GoUInt32)),
(("4216590757" : GoUInt32)),
(("4212654085" : GoUInt32)),
(("4208145538" : GoUInt32)),
(("4202926710" : GoUInt32)),
(("4196809522" : GoUInt32)),
(("4189531420" : GoUInt32)),
(("4180713890" : GoUInt32)),
(("4169789475" : GoUInt32)),
(("4155865042" : GoUInt32)),
(("4137444620" : GoUInt32)),
(("4111806704" : GoUInt32)),
(("4073393724" : GoUInt32)),
(("4008685917" : GoUInt32)),
(("3873074895" : GoUInt32))).copy();
var _rngCooked : GoArray<GoInt64> = new GoArray<GoInt64>(
(("-4181792142133755926" : GoInt64)),
(("-4576982950128230565" : GoInt64)),
(("1395769623340756751" : GoInt64)),
(("5333664234075297259" : GoInt64)),
(("-6347679516498800754" : GoInt64)),
(("9033628115061424579" : GoInt64)),
(("7143218595135194537" : GoInt64)),
(("4812947590706362721" : GoInt64)),
(("7937252194349799378" : GoInt64)),
(("5307299880338848416" : GoInt64)),
(("8209348851763925077" : GoInt64)),
(("-7107630437535961764" : GoInt64)),
(("4593015457530856296" : GoInt64)),
(("8140875735541888011" : GoInt64)),
(("-5903942795589686782" : GoInt64)),
(("-603556388664454774" : GoInt64)),
(("-7496297993371156308" : GoInt64)),
(("113108499721038619" : GoInt64)),
(("4569519971459345583" : GoInt64)),
(("-4160538177779461077" : GoInt64)),
(("-6835753265595711384" : GoInt64)),
(("-6507240692498089696" : GoInt64)),
(("6559392774825876886" : GoInt64)),
(("7650093201692370310" : GoInt64)),
(("7684323884043752161" : GoInt64)),
(("-8965504200858744418" : GoInt64)),
(("-2629915517445760644" : GoInt64)),
(("271327514973697897" : GoInt64)),
(("-6433985589514657524" : GoInt64)),
(("1065192797246149621" : GoInt64)),
(("3344507881999356393" : GoInt64)),
(("-4763574095074709175" : GoInt64)),
(("7465081662728599889" : GoInt64)),
(("1014950805555097187" : GoInt64)),
(("-4773931307508785033" : GoInt64)),
(("-5742262670416273165" : GoInt64)),
(("2418672789110888383" : GoInt64)),
(("5796562887576294778" : GoInt64)),
(("4484266064449540171" : GoInt64)),
(("3738982361971787048" : GoInt64)),
(("-4699774852342421385" : GoInt64)),
(("10530508058128498" : GoInt64)),
(("-589538253572429690" : GoInt64)),
(("-6598062107225984180" : GoInt64)),
(("8660405965245884302" : GoInt64)),
(("10162832508971942" : GoInt64)),
(("-2682657355892958417" : GoInt64)),
(("7031802312784620857" : GoInt64)),
(("6240911277345944669" : GoInt64)),
(("831864355460801054" : GoInt64)),
(("-1218937899312622917" : GoInt64)),
(("2116287251661052151" : GoInt64)),
(("2202309800992166967" : GoInt64)),
(("9161020366945053561" : GoInt64)),
(("4069299552407763864" : GoInt64)),
(("4936383537992622449" : GoInt64)),
(("457351505131524928" : GoInt64)),
(("-8881176990926596454" : GoInt64)),
(("-6375600354038175299" : GoInt64)),
(("-7155351920868399290" : GoInt64)),
(("4368649989588021065" : GoInt64)),
(("887231587095185257" : GoInt64)),
(("-3659780529968199312" : GoInt64)),
(("-2407146836602825512" : GoInt64)),
(("5616972787034086048" : GoInt64)),
(("-751562733459939242" : GoInt64)),
(("1686575021641186857" : GoInt64)),
(("-5177887698780513806" : GoInt64)),
(("-4979215821652996885" : GoInt64)),
(("-1375154703071198421" : GoInt64)),
(("5632136521049761902" : GoInt64)),
(("-8390088894796940536" : GoInt64)),
(("-193645528485698615" : GoInt64)),
(("-5979788902190688516" : GoInt64)),
(("-4907000935050298721" : GoInt64)),
(("-285522056888777828" : GoInt64)),
(("-2776431630044341707" : GoInt64)),
(("1679342092332374735" : GoInt64)),
(("6050638460742422078" : GoInt64)),
(("-2229851317345194226" : GoInt64)),
(("-1582494184340482199" : GoInt64)),
(("5881353426285907985" : GoInt64)),
(("812786550756860885" : GoInt64)),
(("4541845584483343330" : GoInt64)),
(("-6497901820577766722" : GoInt64)),
(("4980675660146853729" : GoInt64)),
(("-4012602956251539747" : GoInt64)),
(("-329088717864244987" : GoInt64)),
(("-2896929232104691526" : GoInt64)),
(("1495812843684243920" : GoInt64)),
(("-2153620458055647789" : GoInt64)),
(("7370257291860230865" : GoInt64)),
(("-2466442761497833547" : GoInt64)),
(("4706794511633873654" : GoInt64)),
(("-1398851569026877145" : GoInt64)),
(("8549875090542453214" : GoInt64)),
(("-9189721207376179652" : GoInt64)),
(("-7894453601103453165" : GoInt64)),
(("7297902601803624459" : GoInt64)),
(("1011190183918857495" : GoInt64)),
(("-6985347000036920864" : GoInt64)),
(("5147159997473910359" : GoInt64)),
(("-8326859945294252826" : GoInt64)),
(("2659470849286379941" : GoInt64)),
(("6097729358393448602" : GoInt64)),
(("-7491646050550022124" : GoInt64)),
(("-5117116194870963097" : GoInt64)),
(("-896216826133240300" : GoInt64)),
(("-745860416168701406" : GoInt64)),
(("5803876044675762232" : GoInt64)),
(("-787954255994554146" : GoInt64)),
(("-3234519180203704564" : GoInt64)),
(("-4507534739750823898" : GoInt64)),
(("-1657200065590290694" : GoInt64)),
(("505808562678895611" : GoInt64)),
(("-4153273856159712438" : GoInt64)),
(("-8381261370078904295" : GoInt64)),
(("572156825025677802" : GoInt64)),
(("1791881013492340891" : GoInt64)),
(("3393267094866038768" : GoInt64)),
(("-5444650186382539299" : GoInt64)),
(("2352769483186201278" : GoInt64)),
(("-7930912453007408350" : GoInt64)),
(("-325464993179687389" : GoInt64)),
(("-3441562999710612272" : GoInt64)),
(("-6489413242825283295" : GoInt64)),
(("5092019688680754699" : GoInt64)),
(("-227247482082248967" : GoInt64)),
(("4234737173186232084" : GoInt64)),
(("5027558287275472836" : GoInt64)),
(("4635198586344772304" : GoInt64)),
(("-536033143587636457" : GoInt64)),
(("5907508150730407386" : GoInt64)),
(("-8438615781380831356" : GoInt64)),
(("972392927514829904" : GoInt64)),
(("-3801314342046600696" : GoInt64)),
(("-4064951393885491917" : GoInt64)),
(("-174840358296132583" : GoInt64)),
(("2407211146698877100" : GoInt64)),
(("-1640089820333676239" : GoInt64)),
(("3940796514530962282" : GoInt64)),
(("-5882197405809569433" : GoInt64)),
(("3095313889586102949" : GoInt64)),
(("-1818050141166537098" : GoInt64)),
(("5832080132947175283" : GoInt64)),
(("7890064875145919662" : GoInt64)),
(("8184139210799583195" : GoInt64)),
(("-8073512175445549678" : GoInt64)),
(("-7758774793014564506" : GoInt64)),
(("-4581724029666783935" : GoInt64)),
(("3516491885471466898" : GoInt64)),
(("-8267083515063118116" : GoInt64)),
(("6657089965014657519" : GoInt64)),
(("5220884358887979358" : GoInt64)),
(("1796677326474620641" : GoInt64)),
(("5340761970648932916" : GoInt64)),
(("1147977171614181568" : GoInt64)),
(("5066037465548252321" : GoInt64)),
(("2574765911837859848" : GoInt64)),
(("1085848279845204775" : GoInt64)),
(("-5873264506986385449" : GoInt64)),
(("6116438694366558490" : GoInt64)),
(("2107701075971293812" : GoInt64)),
(("-7420077970933506541" : GoInt64)),
(("2469478054175558874" : GoInt64)),
(("-1855128755834809824" : GoInt64)),
(("-5431463669011098282" : GoInt64)),
(("-9038325065738319171" : GoInt64)),
(("-6966276280341336160" : GoInt64)),
(("7217693971077460129" : GoInt64)),
(("-8314322083775271549" : GoInt64)),
(("7196649268545224266" : GoInt64)),
(("-3585711691453906209" : GoInt64)),
(("-5267827091426810625" : GoInt64)),
(("8057528650917418961" : GoInt64)),
(("-5084103596553648165" : GoInt64)),
(("-2601445448341207749" : GoInt64)),
(("-7850010900052094367" : GoInt64)),
(("6527366231383600011" : GoInt64)),
(("3507654575162700890" : GoInt64)),
(("9202058512774729859" : GoInt64)),
(("1954818376891585542" : GoInt64)),
(("-2582991129724600103" : GoInt64)),
(("8299563319178235687" : GoInt64)),
(("-5321504681635821435" : GoInt64)),
(("7046310742295574065" : GoInt64)),
(("-2376176645520785576" : GoInt64)),
(("-7650733936335907755" : GoInt64)),
(("8850422670118399721" : GoInt64)),
(("3631909142291992901" : GoInt64)),
(("5158881091950831288" : GoInt64)),
(("-6340413719511654215" : GoInt64)),
(("4763258931815816403" : GoInt64)),
(("6280052734341785344" : GoInt64)),
(("-4979582628649810958" : GoInt64)),
(("2043464728020827976" : GoInt64)),
(("-2678071570832690343" : GoInt64)),
(("4562580375758598164" : GoInt64)),
(("5495451168795427352" : GoInt64)),
(("-7485059175264624713" : GoInt64)),
(("553004618757816492" : GoInt64)),
(("6895160632757959823" : GoInt64)),
(("-989748114590090637" : GoInt64)),
(("7139506338801360852" : GoInt64)),
(("-672480814466784139" : GoInt64)),
(("5535668688139305547" : GoInt64)),
(("2430933853350256242" : GoInt64)),
(("-3821430778991574732" : GoInt64)),
(("-1063731997747047009" : GoInt64)),
(("-3065878205254005442" : GoInt64)),
(("7632066283658143750" : GoInt64)),
(("6308328381617103346" : GoInt64)),
(("3681878764086140361" : GoInt64)),
(("3289686137190109749" : GoInt64)),
(("6587997200611086848" : GoInt64)),
(("244714774258135476" : GoInt64)),
(("-5143583659437639708" : GoInt64)),
(("8090302575944624335" : GoInt64)),
(("2945117363431356361" : GoInt64)),
(("-8359047641006034763" : GoInt64)),
(("3009039260312620700" : GoInt64)),
(("-793344576772241777" : GoInt64)),
(("401084700045993341" : GoInt64)),
(("-1968749590416080887" : GoInt64)),
(("4707864159563588614" : GoInt64)),
(("-3583123505891281857" : GoInt64)),
(("-3240864324164777915" : GoInt64)),
(("-5908273794572565703" : GoInt64)),
(("-3719524458082857382" : GoInt64)),
(("-5281400669679581926" : GoInt64)),
(("8118566580304798074" : GoInt64)),
(("3839261274019871296" : GoInt64)),
(("7062410411742090847" : GoInt64)),
(("-8481991033874568140" : GoInt64)),
(("6027994129690250817" : GoInt64)),
(("-6725542042704711878" : GoInt64)),
(("-2971981702428546974" : GoInt64)),
(("-7854441788951256975" : GoInt64)),
(("8809096399316380241" : GoInt64)),
(("6492004350391900708" : GoInt64)),
(("2462145737463489636" : GoInt64)),
(("-8818543617934476634" : GoInt64)),
(("-5070345602623085213" : GoInt64)),
(("-8961586321599299868" : GoInt64)),
(("-3758656652254704451" : GoInt64)),
(("-8630661632476012791" : GoInt64)),
(("6764129236657751224" : GoInt64)),
(("-709716318315418359" : GoInt64)),
(("-3403028373052861600" : GoInt64)),
(("-8838073512170985897" : GoInt64)),
(("-3999237033416576341" : GoInt64)),
(("-2920240395515973663" : GoInt64)),
(("-2073249475545404416" : GoInt64)),
(("368107899140673753" : GoInt64)),
(("-6108185202296464250" : GoInt64)),
(("-6307735683270494757" : GoInt64)),
(("4782583894627718279" : GoInt64)),
(("6718292300699989587" : GoInt64)),
(("8387085186914375220" : GoInt64)),
(("3387513132024756289" : GoInt64)),
(("4654329375432538231" : GoInt64)),
(("-292704475491394206" : GoInt64)),
(("-3848998599978456535" : GoInt64)),
(("7623042350483453954" : GoInt64)),
(("7725442901813263321" : GoInt64)),
(("9186225467561587250" : GoInt64)),
(("-5132344747257272453" : GoInt64)),
(("-6865740430362196008" : GoInt64)),
(("2530936820058611833" : GoInt64)),
(("1636551876240043639" : GoInt64)),
(("-3658707362519810009" : GoInt64)),
(("1452244145334316253" : GoInt64)),
(("-7161729655835084979" : GoInt64)),
(("-7943791770359481772" : GoInt64)),
(("9108481583171221009" : GoInt64)),
(("-3200093350120725999" : GoInt64)),
(("5007630032676973346" : GoInt64)),
(("2153168792952589781" : GoInt64)),
(("6720334534964750538" : GoInt64)),
(("-3181825545719981703" : GoInt64)),
(("3433922409283786309" : GoInt64)),
(("2285479922797300912" : GoInt64)),
(("3110614940896576130" : GoInt64)),
(("-2856812446131932915" : GoInt64)),
(("-3804580617188639299" : GoInt64)),
(("7163298419643543757" : GoInt64)),
(("4891138053923696990" : GoInt64)),
(("580618510277907015" : GoInt64)),
(("1684034065251686769" : GoInt64)),
(("4429514767357295841" : GoInt64)),
(("-8893025458299325803" : GoInt64)),
(("-8103734041042601133" : GoInt64)),
(("7177515271653460134" : GoInt64)),
(("4589042248470800257" : GoInt64)),
(("-1530083407795771245" : GoInt64)),
(("143607045258444228" : GoInt64)),
(("246994305896273627" : GoInt64)),
(("-8356954712051676521" : GoInt64)),
(("6473547110565816071" : GoInt64)),
(("3092379936208876896" : GoInt64)),
(("2058427839513754051" : GoInt64)),
(("-4089587328327907870" : GoInt64)),
(("8785882556301281247" : GoInt64)),
(("-3074039370013608197" : GoInt64)),
(("-637529855400303673" : GoInt64)),
(("6137678347805511274" : GoInt64)),
(("-7152924852417805802" : GoInt64)),
(("5708223427705576541" : GoInt64)),
(("-3223714144396531304" : GoInt64)),
(("4358391411789012426" : GoInt64)),
(("325123008708389849" : GoInt64)),
(("6837621693887290924" : GoInt64)),
(("4843721905315627004" : GoInt64)),
(("-3212720814705499393" : GoInt64)),
(("-3825019837890901156" : GoInt64)),
(("4602025990114250980" : GoInt64)),
(("1044646352569048800" : GoInt64)),
(("9106614159853161675" : GoInt64)),
(("-8394115921626182539" : GoInt64)),
(("-4304087667751778808" : GoInt64)),
(("2681532557646850893" : GoInt64)),
(("3681559472488511871" : GoInt64)),
(("-3915372517896561773" : GoInt64)),
(("-2889241648411946534" : GoInt64)),
(("-6564663803938238204" : GoInt64)),
(("-8060058171802589521" : GoInt64)),
(("581945337509520675" : GoInt64)),
(("3648778920718647903" : GoInt64)),
(("-4799698790548231394" : GoInt64)),
(("-7602572252857820065" : GoInt64)),
(("220828013409515943" : GoInt64)),
(("-1072987336855386047" : GoInt64)),
(("4287360518296753003" : GoInt64)),
(("-4633371852008891965" : GoInt64)),
(("5513660857261085186" : GoInt64)),
(("-2258542936462001533" : GoInt64)),
(("-8744380348503999773" : GoInt64)),
(("8746140185685648781" : GoInt64)),
(("228500091334420247" : GoInt64)),
(("1356187007457302238" : GoInt64)),
(("3019253992034194581" : GoInt64)),
(("3152601605678500003" : GoInt64)),
(("-8793219284148773595" : GoInt64)),
(("5559581553696971176" : GoInt64)),
(("4916432985369275664" : GoInt64)),
(("-8559797105120221417" : GoInt64)),
(("-5802598197927043732" : GoInt64)),
(("2868348622579915573" : GoInt64)),
(("-7224052902810357288" : GoInt64)),
(("-5894682518218493085" : GoInt64)),
(("2587672709781371173" : GoInt64)),
(("-7706116723325376475" : GoInt64)),
(("3092343956317362483" : GoInt64)),
(("-5561119517847711700" : GoInt64)),
(("972445599196498113" : GoInt64)),
(("-1558506600978816441" : GoInt64)),
(("1708913533482282562" : GoInt64)),
(("-2305554874185907314" : GoInt64)),
(("-6005743014309462908" : GoInt64)),
(("-6653329009633068701" : GoInt64)),
(("-483583197311151195" : GoInt64)),
(("2488075924621352812" : GoInt64)),
(("-4529369641467339140" : GoInt64)),
(("-4663743555056261452" : GoInt64)),
(("2997203966153298104" : GoInt64)),
(("1282559373026354493" : GoInt64)),
(("240113143146674385" : GoInt64)),
(("8665713329246516443" : GoInt64)),
(("628141331766346752" : GoInt64)),
(("-4651421219668005332" : GoInt64)),
(("-7750560848702540400" : GoInt64)),
(("7596648026010355826" : GoInt64)),
(("-3132152619100351065" : GoInt64)),
(("7834161864828164065" : GoInt64)),
(("7103445518877254909" : GoInt64)),
(("4390861237357459201" : GoInt64)),
(("-4780718172614204074" : GoInt64)),
(("-319889632007444440" : GoInt64)),
(("622261699494173647" : GoInt64)),
(("-3186110786557562560" : GoInt64)),
(("-8718967088789066690" : GoInt64)),
(("-1948156510637662747" : GoInt64)),
(("-8212195255998774408" : GoInt64)),
(("-7028621931231314745" : GoInt64)),
(("2623071828615234808" : GoInt64)),
(("-4066058308780939700" : GoInt64)),
(("-5484966924888173764" : GoInt64)),
(("-6683604512778046238" : GoInt64)),
(("-6756087640505506466" : GoInt64)),
(("5256026990536851868" : GoInt64)),
(("7841086888628396109" : GoInt64)),
(("6640857538655893162" : GoInt64)),
(("-8021284697816458310" : GoInt64)),
(("-7109857044414059830" : GoInt64)),
(("-1689021141511844405" : GoInt64)),
(("-4298087301956291063" : GoInt64)),
(("-4077748265377282003" : GoInt64)),
(("-998231156719803476" : GoInt64)),
(("2719520354384050532" : GoInt64)),
(("9132346697815513771" : GoInt64)),
(("4332154495710163773" : GoInt64)),
(("-2085582442760428892" : GoInt64)),
(("6994721091344268833" : GoInt64)),
(("-2556143461985726874" : GoInt64)),
(("-8567931991128098309" : GoInt64)),
(("59934747298466858" : GoInt64)),
(("-3098398008776739403" : GoInt64)),
(("-265597256199410390" : GoInt64)),
(("2332206071942466437" : GoInt64)),
(("-7522315324568406181" : GoInt64)),
(("3154897383618636503" : GoInt64)),
(("-7585605855467168281" : GoInt64)),
(("-6762850759087199275" : GoInt64)),
(("197309393502684135" : GoInt64)),
(("-8579694182469508493" : GoInt64)),
(("2543179307861934850" : GoInt64)),
(("4350769010207485119" : GoInt64)),
(("-4468719947444108136" : GoInt64)),
(("-7207776534213261296" : GoInt64)),
(("-1224312577878317200" : GoInt64)),
(("4287946071480840813" : GoInt64)),
(("8362686366770308971" : GoInt64)),
(("6486469209321732151" : GoInt64)),
(("-5605644191012979782" : GoInt64)),
(("-1669018511020473564" : GoInt64)),
(("4450022655153542367" : GoInt64)),
(("-7618176296641240059" : GoInt64)),
(("-3896357471549267421" : GoInt64)),
(("-4596796223304447488" : GoInt64)),
(("-6531150016257070659" : GoInt64)),
(("-8982326463137525940" : GoInt64)),
(("-4125325062227681798" : GoInt64)),
(("-1306489741394045544" : GoInt64)),
(("-8338554946557245229" : GoInt64)),
(("5329160409530630596" : GoInt64)),
(("7790979528857726136" : GoInt64)),
(("4955070238059373407" : GoInt64)),
(("-4304834761432101506" : GoInt64)),
(("-6215295852904371179" : GoInt64)),
(("3007769226071157901" : GoInt64)),
(("-6753025801236972788" : GoInt64)),
(("8928702772696731736" : GoInt64)),
(("7856187920214445904" : GoInt64)),
(("-4748497451462800923" : GoInt64)),
(("7900176660600710914" : GoInt64)),
(("-7082800908938549136" : GoInt64)),
(("-6797926979589575837" : GoInt64)),
(("-6737316883512927978" : GoInt64)),
(("4186670094382025798" : GoInt64)),
(("1883939007446035042" : GoInt64)),
(("-414705992779907823" : GoInt64)),
(("3734134241178479257" : GoInt64)),
(("4065968871360089196" : GoInt64)),
(("6953124200385847784" : GoInt64)),
(("-7917685222115876751" : GoInt64)),
(("-7585632937840318161" : GoInt64)),
(("-5567246375906782599" : GoInt64)),
(("-5256612402221608788" : GoInt64)),
(("3106378204088556331" : GoInt64)),
(("-2894472214076325998" : GoInt64)),
(("4565385105440252958" : GoInt64)),
(("1979884289539493806" : GoInt64)),
(("-6891578849933910383" : GoInt64)),
(("3783206694208922581" : GoInt64)),
(("8464961209802336085" : GoInt64)),
(("2843963751609577687" : GoInt64)),
(("3030678195484896323" : GoInt64)),
(("-4429654462759003204" : GoInt64)),
(("4459239494808162889" : GoInt64)),
(("402587895800087237" : GoInt64)),
(("8057891408711167515" : GoInt64)),
(("4541888170938985079" : GoInt64)),
(("1042662272908816815" : GoInt64)),
(("-3666068979732206850" : GoInt64)),
(("2647678726283249984" : GoInt64)),
(("2144477441549833761" : GoInt64)),
(("-3417019821499388721" : GoInt64)),
(("-2105601033380872185" : GoInt64)),
(("5916597177708541638" : GoInt64)),
(("-8760774321402454447" : GoInt64)),
(("8833658097025758785" : GoInt64)),
(("5970273481425315300" : GoInt64)),
(("563813119381731307" : GoInt64)),
(("-6455022486202078793" : GoInt64)),
(("1598828206250873866" : GoInt64)),
(("-4016978389451217698" : GoInt64)),
(("-2988328551145513985" : GoInt64)),
(("-6071154634840136312" : GoInt64)),
(("8469693267274066490" : GoInt64)),
(("125672920241807416" : GoInt64)),
(("-3912292412830714870" : GoInt64)),
(("-2559617104544284221" : GoInt64)),
(("-486523741806024092" : GoInt64)),
(("-4735332261862713930" : GoInt64)),
(("5923302823487327109" : GoInt64)),
(("-9082480245771672572" : GoInt64)),
(("-1808429243461201518" : GoInt64)),
(("7990420780896957397" : GoInt64)),
(("4317817392807076702" : GoInt64)),
(("3625184369705367340" : GoInt64)),
(("-6482649271566653105" : GoInt64)),
(("-3480272027152017464" : GoInt64)),
(("-3225473396345736649" : GoInt64)),
(("-368878695502291645" : GoInt64)),
(("-3981164001421868007" : GoInt64)),
(("-8522033136963788610" : GoInt64)),
(("7609280429197514109" : GoInt64)),
(("3020985755112334161" : GoInt64)),
(("-2572049329799262942" : GoInt64)),
(("2635195723621160615" : GoInt64)),
(("5144520864246028816" : GoInt64)),
(("-8188285521126945980" : GoInt64)),
(("1567242097116389047" : GoInt64)),
(("8172389260191636581" : GoInt64)),
(("-2885551685425483535" : GoInt64)),
(("-7060359469858316883" : GoInt64)),
(("-6480181133964513127" : GoInt64)),
(("-7317004403633452381" : GoInt64)),
(("6011544915663598137" : GoInt64)),
(("5932255307352610768" : GoInt64)),
(("2241128460406315459" : GoInt64)),
(("-8327867140638080220" : GoInt64)),
(("3094483003111372717" : GoInt64)),
(("4583857460292963101" : GoInt64)),
(("9079887171656594975" : GoInt64)),
(("-384082854924064405" : GoInt64)),
(("-3460631649611717935" : GoInt64)),
(("4225072055348026230" : GoInt64)),
(("-7385151438465742745" : GoInt64)),
(("3801620336801580414" : GoInt64)),
(("-399845416774701952" : GoInt64)),
(("-7446754431269675473" : GoInt64)),
(("7899055018877642622" : GoInt64)),
(("5421679761463003041" : GoInt64)),
(("5521102963086275121" : GoInt64)),
(("-4975092593295409910" : GoInt64)),
(("8735487530905098534" : GoInt64)),
(("-7462844945281082830" : GoInt64)),
(("-2080886987197029914" : GoInt64)),
(("-1000715163927557685" : GoInt64)),
(("-4253840471931071485" : GoInt64)),
(("-5828896094657903328" : GoInt64)),
(("6424174453260338141" : GoInt64)),
(("359248545074932887" : GoInt64)),
(("-5949720754023045210" : GoInt64)),
(("-2426265837057637212" : GoInt64)),
(("3030918217665093212" : GoInt64)),
(("-9077771202237461772" : GoInt64)),
(("-3186796180789149575" : GoInt64)),
(("740416251634527158" : GoInt64)),
(("-2142944401404840226" : GoInt64)),
(("6951781370868335478" : GoInt64)),
(("399922722363687927" : GoInt64)),
(("-8928469722407522623" : GoInt64)),
(("-1378421100515597285" : GoInt64)),
(("-8343051178220066766" : GoInt64)),
(("-3030716356046100229" : GoInt64)),
(("-8811767350470065420" : GoInt64)),
(("9026808440365124461" : GoInt64)),
(("6440783557497587732" : GoInt64)),
(("4615674634722404292" : GoInt64)),
(("539897290441580544" : GoInt64)),
(("2096238225866883852" : GoInt64)),
(("8751955639408182687" : GoInt64)),
(("-7316147128802486205" : GoInt64)),
(("7381039757301768559" : GoInt64)),
(("6157238513393239656" : GoInt64)),
(("-1473377804940618233" : GoInt64)),
(("8629571604380892756" : GoInt64)),
(("5280433031239081479" : GoInt64)),
(("7101611890139813254" : GoInt64)),
(("2479018537985767835" : GoInt64)),
(("7169176924412769570" : GoInt64)),
(("-1281305539061572506" : GoInt64)),
(("-7865612307799218120" : GoInt64)),
(("2278447439451174845" : GoInt64)),
(("3625338785743880657" : GoInt64)),
(("6477479539006708521" : GoInt64)),
(("8976185375579272206" : GoInt64)),
(("-3712000482142939688" : GoInt64)),
(("1326024180520890843" : GoInt64)),
(("7537449876596048829" : GoInt64)),
(("5464680203499696154" : GoInt64)),
(("3189671183162196045" : GoInt64)),
(("6346751753565857109" : GoInt64)),
(("-8982212049534145501" : GoInt64)),
(("-6127578587196093755" : GoInt64)),
(("-245039190118465649" : GoInt64)),
(("-6320577374581628592" : GoInt64)),
(("7208698530190629697" : GoInt64)),
(("7276901792339343736" : GoInt64)),
(("-7490986807540332668" : GoInt64)),
(("4133292154170828382" : GoInt64)),
(("2918308698224194548" : GoInt64)),
(("-7703910638917631350" : GoInt64)),
(("-3929437324238184044" : GoInt64)),
(("-4300543082831323144" : GoInt64)),
(("-6344160503358350167" : GoInt64)),
(("5896236396443472108" : GoInt64)),
(("-758328221503023383" : GoInt64)),
(("-1894351639983151068" : GoInt64)),
(("-307900319840287220" : GoInt64)),
(("-6278469401177312761" : GoInt64)),
(("-2171292963361310674" : GoInt64)),
(("8382142935188824023" : GoInt64)),
(("9103922860780351547" : GoInt64)),
(("4152330101494654406" : GoInt64))).copy();
function _absInt32(_i:GoInt32):GoUInt32 {
        if (_i < ((0 : GoInt32))) {
            return ((-_i : GoUInt32));
        };
        return ((_i : GoUInt32));
    }
/**
    // NewSource returns a new pseudo-random Source seeded with the given value.
    // Unlike the default Source used by top-level functions, this source is not
    // safe for concurrent use by multiple goroutines.
**/
function newSource(_seed:GoInt64):Source {
        var _rng:T_rngSource = new T_rngSource();
        _rng.seed(_seed);
        return Go.pointer(_rng).value;
    }
/**
    // New returns a new Rand that uses random values from src
    // to generate other random values.
**/
function new_(_src:Source):Pointer<Rand> {
        var __tmp__ = try {
            { value : ((_src.__underlying__().value : Source64)), ok : true };
        } catch(_) {
            { value : ((null : Source64)), ok : false };
        }, _s64 = __tmp__.value, _ = __tmp__.ok;
        return Go.pointer((({ _src : _src, _s64 : _s64, _readVal : 0, _readPos : 0 } : Rand)));
    }
function _read(_p:Slice<GoByte>, _src:Source, _readVal:Pointer<GoInt64>, _readPos:Pointer<GoInt8>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _pos:GoInt8 = _readPos.value;
        var _val:GoInt64 = _readVal.value;
        var __tmp__ = try {
            { value : ((_src.__underlying__().value : Pointer<T_rngSource>)), ok : true };
        } catch(_) {
            { value : new Pointer<T_rngSource>().nil(), ok : false };
        }, _rng = __tmp__.value, _ = __tmp__.ok;
        {
            _n = ((0 : GoInt));
            Go.cfor(_n < _p.length, _n++, {
                if (_pos == ((0 : GoInt8))) {
                    if (_rng != null) {
                        _val = _rng.value.int63();
                    } else {
                        _val = _src.int63();
                    };
                    _pos = ((7 : GoInt8));
                };
                _p[_n] = ((_val : GoByte));
                _val = _val >> (((8 : GoUnTypedInt)));
                _pos--;
            });
        };
        _readPos.value = _pos;
        _readVal.value = _val;
        return { _0 : _n, _1 : _err };
    }
/**
    // Seed uses the provided seed value to initialize the default Source to a
    // deterministic state. If Seed is not called, the generator behaves as
    // if seeded by Seed(1). Seed values that have the same remainder when
    // divided by 2³¹-1 generate the same pseudo-random sequence.
    // Seed, unlike the Rand.Seed method, is safe for concurrent use.
**/
function seed(_seed:GoInt64):Void {
        _globalRand.value.seed(_seed);
    }
/**
    // Int63 returns a non-negative pseudo-random 63-bit integer as an int64
    // from the default Source.
**/
function int63():GoInt64 {
        return _globalRand.value.int63();
    }
/**
    // Uint32 returns a pseudo-random 32-bit value as a uint32
    // from the default Source.
**/
function uint32():GoUInt32 {
        return _globalRand.value.uint32();
    }
/**
    // Uint64 returns a pseudo-random 64-bit value as a uint64
    // from the default Source.
**/
function uint64():GoUInt64 {
        return _globalRand.value.uint64();
    }
/**
    // Int31 returns a non-negative pseudo-random 31-bit integer as an int32
    // from the default Source.
**/
function int31():GoInt32 {
        return _globalRand.value.int31();
    }
/**
    // Int returns a non-negative pseudo-random int from the default Source.
**/
function int():GoInt {
        return _globalRand.value.int();
    }
/**
    // Int63n returns, as an int64, a non-negative pseudo-random number in the half-open interval [0,n)
    // from the default Source.
    // It panics if n <= 0.
**/
function int63n(_n:GoInt64):GoInt64 {
        return _globalRand.value.int63n(_n);
    }
/**
    // Int31n returns, as an int32, a non-negative pseudo-random number in the half-open interval [0,n)
    // from the default Source.
    // It panics if n <= 0.
**/
function int31n(_n:GoInt32):GoInt32 {
        return _globalRand.value.int31n(_n);
    }
/**
    // Intn returns, as an int, a non-negative pseudo-random number in the half-open interval [0,n)
    // from the default Source.
    // It panics if n <= 0.
**/
function intn(_n:GoInt):GoInt {
        return _globalRand.value.intn(_n);
    }
/**
    // Float64 returns, as a float64, a pseudo-random number in the half-open interval [0.0,1.0)
    // from the default Source.
**/
function float64():GoFloat64 {
        return _globalRand.value.float64();
    }
/**
    // Float32 returns, as a float32, a pseudo-random number in the half-open interval [0.0,1.0)
    // from the default Source.
**/
function float32():GoFloat32 {
        return _globalRand.value.float32();
    }
/**
    // Perm returns, as a slice of n ints, a pseudo-random permutation of the integers
    // in the half-open interval [0,n) from the default Source.
**/
function perm(_n:GoInt):Slice<GoInt> {
        return _globalRand.value.perm(_n);
    }
/**
    // Shuffle pseudo-randomizes the order of elements using the default Source.
    // n is the number of elements. Shuffle panics if n < 0.
    // swap swaps the elements with indexes i and j.
**/
function shuffle(_n:GoInt, _swap:(_i:GoInt, _j:GoInt) -> Void):Void {
        _globalRand.value.shuffle(_n, _swap);
    }
/**
    // Read generates len(p) random bytes from the default Source and
    // writes them into p. It always returns len(p) and a nil error.
    // Read, unlike the Rand.Read method, is safe for concurrent use.
**/
function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _globalRand.value.read(_p);
    }
/**
    // NormFloat64 returns a normally distributed float64 in the range
    // [-math.MaxFloat64, +math.MaxFloat64] with
    // standard normal distribution (mean = 0, stddev = 1)
    // from the default Source.
    // To produce a different normal distribution, callers can
    // adjust the output using:
    //
    //  sample = NormFloat64() * desiredStdDev + desiredMean
    //
**/
function normFloat64():GoFloat64 {
        return _globalRand.value.normFloat64();
    }
/**
    // ExpFloat64 returns an exponentially distributed float64 in the range
    // (0, +math.MaxFloat64] with an exponential distribution whose rate parameter
    // (lambda) is 1 and whose mean is 1/lambda (1) from the default Source.
    // To produce a distribution with a different rate parameter,
    // callers can adjust the output using:
    //
    //  sample = ExpFloat64() / desiredRateParameter
    //
**/
function expFloat64():GoFloat64 {
        return _globalRand.value.expFloat64();
    }
/**
    // seed rng x[n+1] = 48271 * x[n] mod (2**31 - 1)
**/
function _seedrand(_x:GoInt32):GoInt32 {
        {};
        var _hi:GoInt32 = _x / ((44488 : GoInt32));
        var _lo:GoInt32 = _x % ((44488 : GoInt32));
        _x = (((48271 : GoInt32)) * _lo) - (((3399 : GoInt32)) * _hi);
        if (_x < ((0 : GoInt32))) {
            _x = _x + (((2147483647 : GoInt32)));
        };
        return _x;
    }
/**
    // NewZipf returns a Zipf variate generator.
    // The generator generates values k ∈ [0, imax]
    // such that P(k) is proportional to (v + k) ** (-s).
    // Requirements: s > 1 and v >= 1.
**/
function newZipf(_r:Pointer<Rand>, _s:GoFloat64, _v:GoFloat64, _imax:GoUInt64):Pointer<Zipf> {
        var _z:Pointer<Zipf> = Go.pointer(new Zipf());
        if ((_s <= ((1 : GoFloat64))) || (_v < ((1 : GoFloat64)))) {
            return new Pointer<Zipf>().nil();
        };
        _z.value._r = _r;
        _z.value._imax = ((_imax : GoFloat64));
        _z.value._v = _v;
        _z.value._q = _s;
        _z.value._oneminusQ = ((1 : GoFloat64)) - _z.value._q;
        _z.value._oneminusQinv = ((1 : GoFloat64)) / _z.value._oneminusQ;
        _z.value._hxm = _z.value._h(_z.value._imax + ((0.5 : GoFloat64)));
        _z.value._hx0minusHxm = (_z.value._h(((0.5 : GoFloat64))) - stdgo.math.Math.exp(stdgo.math.Math.log(_z.value._v) * (-_z.value._q))) - _z.value._hxm;
        _z.value._s = ((1 : GoFloat64)) - _z.value._hinv(_z.value._h(((1.5 : GoFloat64))) - stdgo.math.Math.exp(-_z.value._q * stdgo.math.Math.log(_z.value._v + ((1 : GoFloat64)))));
        return _z;
    }
class Rand_extension_fields {
    public function expFloat64(__tmp__):GoFloat64 return __tmp__.expFloat64();
    public function normFloat64(__tmp__):GoFloat64 return __tmp__.normFloat64();
    public function seed(__tmp__, _seed:GoInt64):Void __tmp__.seed(_seed);
    public function int63(__tmp__):GoInt64 return __tmp__.int63();
    public function uint32(__tmp__):GoUInt32 return __tmp__.uint32();
    public function uint64(__tmp__):GoUInt64 return __tmp__.uint64();
    public function int31(__tmp__):GoInt32 return __tmp__.int31();
    public function int(__tmp__):GoInt return __tmp__.int();
    public function int63n(__tmp__, _n:GoInt64):GoInt64 return __tmp__.int63n(_n);
    public function int31n(__tmp__, _n:GoInt32):GoInt32 return __tmp__.int31n(_n);
    public function _int31n(__tmp__, _n:GoInt32):GoInt32 return __tmp__._int31n(_n);
    public function intn(__tmp__, _n:GoInt):GoInt return __tmp__.intn(_n);
    public function float64(__tmp__):GoFloat64 return __tmp__.float64();
    public function float32(__tmp__):GoFloat32 return __tmp__.float32();
    public function perm(__tmp__, _n:GoInt):Slice<GoInt> return __tmp__.perm(_n);
    public function shuffle(__tmp__, _n:GoInt, _swap:(_i:GoInt, _j:GoInt) -> Void):Void __tmp__.shuffle(_n, _swap);
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
}
class T_lockedSource_extension_fields {
    public function int63(__tmp__):GoInt64 return __tmp__.int63();
    public function uint64(__tmp__):GoUInt64 return __tmp__.uint64();
    public function seed(__tmp__, _seed:GoInt64):Void __tmp__.seed(_seed);
    public function _seedPos(__tmp__, _seed:GoInt64, _readPos:Pointer<GoInt8>):Void __tmp__._seedPos(_seed, _readPos);
    public function _read(__tmp__, _p:Slice<GoByte>, _readVal:Pointer<GoInt64>, _readPos:Pointer<GoInt8>):{ var _0 : GoInt; var _1 : Error; } return __tmp__._read(_p, _readVal, _readPos);
}
class T_rngSource_extension_fields {
    public function seed(__tmp__, _seed:GoInt64):Void __tmp__.seed(_seed);
    public function int63(__tmp__):GoInt64 return __tmp__.int63();
    public function uint64(__tmp__):GoUInt64 return __tmp__.uint64();
}
class Zipf_extension_fields {
    public function _h(__tmp__, _x:GoFloat64):GoFloat64 return __tmp__._h(_x);
    public function _hinv(__tmp__, _x:GoFloat64):GoFloat64 return __tmp__._hinv(_x);
    public function uint64(__tmp__):GoUInt64 return __tmp__.uint64();
}
