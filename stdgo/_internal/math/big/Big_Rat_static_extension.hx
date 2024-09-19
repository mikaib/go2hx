package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.Rat_asInterface) class Rat_static_extension {
    @:keep
    static public function unmarshalText( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        {
            var __tmp__ = _z.setString((_text : stdgo.GoString)?.__copy__()), __14:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("math/big: cannot unmarshal %q into a *big.Rat" : stdgo.GoString), stdgo.Go.toInterface(_text));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalText( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if (_x.isInt()) {
            return _x._a.marshalText();
        };
        return { _0 : _x._marshal(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function gobDecode( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.math.big.Big_Rat.Rat() : stdgo._internal.math.big.Big_Rat.Rat);
                (_z : stdgo._internal.math.big.Big_Rat.Rat)._a = __tmp__._a;
                (_z : stdgo._internal.math.big.Big_Rat.Rat)._b = __tmp__._b;
            };
            return (null : stdgo.Error);
        };
        if (((_buf.length) < (5 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Rat.GobDecode: buffer too small" : stdgo.GoString));
        };
        var _b = (_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) != ((1 : stdgo.GoUInt8))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Rat.GobDecode: encoding version %d not supported" : stdgo.GoString), stdgo.Go.toInterface((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)));
        };
        {};
        var _ln = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_buf.__slice__((1 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        if (((_ln : stdgo.GoUInt64) > (2147483642i64 : stdgo.GoUInt64) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Rat.GobDecode: invalid length" : stdgo.GoString));
        };
        var _i = ((5 : stdgo.GoInt) + (_ln : stdgo.GoInt) : stdgo.GoInt);
        if (((_buf.length) < _i : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("Rat.GobDecode: buffer too small" : stdgo.GoString));
        };
        _z._a._neg = (_b & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        _z._a._abs = _z._a._abs._setBytes((_buf.__slice__((5 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
        _z._b._abs = _z._b._abs._setBytes((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
        return (null : stdgo.Error);
    }
    @:keep
    static public function gobEncode( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        if (_x == null || (_x : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((5 : stdgo.GoInt) + ((((_x._a._abs.length) + (_x._b._abs.length) : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _i = (_x._b._abs._bytes(_buf) : stdgo.GoInt);
        var _j = (_x._a._abs._bytes((_buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        var _n = (_i - _j : stdgo.GoInt);
        if (((_n : stdgo.GoUInt32) : stdgo.GoInt) != (_n)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("Rat.GobEncode: numerator too large" : stdgo.GoString)) };
        };
        stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint32((_buf.__slice__((_j - (4 : stdgo.GoInt) : stdgo.GoInt), _j) : stdgo.Slice<stdgo.GoUInt8>), (_n : stdgo.GoUInt32));
        _j = (_j - ((5 : stdgo.GoInt)) : stdgo.GoInt);
        var _b = (2 : stdgo.GoUInt8);
        if (_x._a._neg) {
            _b = (_b | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _buf[(_j : stdgo.GoInt)] = _b;
        return { _0 : (_buf.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function floatString( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _prec:stdgo.GoInt):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if (_x.isInt()) {
            _buf = _x._a.append(_buf, (10 : stdgo.GoInt));
            if ((_prec > (0 : stdgo.GoInt) : Bool)) {
                _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
                {
                    var _i = (_prec : stdgo.GoInt);
                    stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                        _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
                    });
                };
            };
            return (_buf : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._div((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat), _x._a._abs, _x._b._abs), _q:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._1;
        var _p = (stdgo._internal.math.big.Big__natOne._natOne : stdgo._internal.math.big.Big_T_nat.T_nat);
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _p = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._expNN(stdgo._internal.math.big.Big__natTen._natTen, (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._setUint64((_prec : stdgo.GoUInt64)), null, false);
        };
        _r = _r._mul(_r, _p);
        var __tmp__ = _r._div((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat), _r, _x._b._abs), _r:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._0, _r2:stdgo._internal.math.big.Big_T_nat.T_nat = __tmp__._1;
        _r2 = _r2._add(_r2, _r2);
        if ((_x._b._abs._cmp(_r2) <= (0 : stdgo.GoInt) : Bool)) {
            _r = _r._add(_r, stdgo._internal.math.big.Big__natOne._natOne);
            if ((_r._cmp(_p) >= (0 : stdgo.GoInt) : Bool)) {
                _q = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._add(_q, stdgo._internal.math.big.Big__natOne._natOne);
                _r = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._sub(_r, _p);
            };
        };
        if (_x._a._neg) {
            _buf = (_buf.__append__((45 : stdgo.GoUInt8)));
        };
        _buf = (_buf.__append__(...(_q._utoa((10 : stdgo.GoInt)) : Array<stdgo.GoUInt8>)));
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)));
            var _rs = _r._utoa((10 : stdgo.GoInt));
            {
                var _i = (_prec - (_rs.length) : stdgo.GoInt);
                stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                    _buf = (_buf.__append__((48 : stdgo.GoUInt8)));
                });
            };
            _buf = (_buf.__append__(...(_rs : Array<stdgo.GoUInt8>)));
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function ratString( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        if (_x.isInt()) {
            return (_x._a.string() : stdgo.GoString)?.__copy__();
        };
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _marshal( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        _buf = _x._a.append(_buf, (10 : stdgo.GoInt));
        _buf = (_buf.__append__((47 : stdgo.GoUInt8)));
        if ((_x._b._abs.length) != ((0 : stdgo.GoInt))) {
            _buf = _x._b.append(_buf, (10 : stdgo.GoInt));
        } else {
            _buf = (_buf.__append__((49 : stdgo.GoUInt8)));
        };
        return _buf;
    }
    @:keep
    static public function string( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        return (_x._marshal() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function setString( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : false };
        };
        {
            var _sep = (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_sep >= (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _z._a.setString((_s.__slice__(0, _sep) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt)), __14:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : false };
                    };
                };
                var _r = stdgo._internal.strings.Strings_newReader.newReader((_s.__slice__((_sep + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    {
                        var __tmp__ = _z._b._abs._scan(stdgo.Go.asInterface(_r), (0 : stdgo.GoInt), false);
                        _z._b._abs = __tmp__._0;
                        _err = __tmp__._3;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : false };
                    };
                };
                {
                    {
                        var __tmp__ = _r.readByte();
                        _err = __tmp__._1;
                    };
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        return { _0 : null, _1 : false };
                    };
                };
                if ((_z._b._abs.length) == ((0 : stdgo.GoInt))) {
                    return { _0 : null, _1 : false };
                };
                return { _0 : _z._norm(), _1 : true };
            };
        };
        var _r = stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__());
        var __tmp__ = stdgo._internal.math.big.Big__scanSign._scanSign(stdgo.Go.asInterface(_r)), _neg:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        var _base:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fcount:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _z._a._abs._scan(stdgo.Go.asInterface(_r), (0 : stdgo.GoInt), true);
            _z._a._abs = __tmp__._0;
            _base = __tmp__._1;
            _fcount = __tmp__._2;
            _err = __tmp__._3;
        };
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        var _exp:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ebase:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.math.big.Big__scanExponent._scanExponent(stdgo.Go.asInterface(_r), true, true);
            _exp = __tmp__._0;
            _ebase = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        {
            {
                var __tmp__ = _r.readByte();
                _err = __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                return { _0 : null, _1 : false };
            };
        };
        if ((_z._a._abs.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _z._norm(), _1 : true };
        };
        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _exp5 = __1, _exp2 = __0;
        if ((_fcount < (0 : stdgo.GoInt) : Bool)) {
            var _d = (_fcount : stdgo.GoInt64);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _base;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                            _exp5 = _d;
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            _exp2 = _d;
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (8 : stdgo.GoInt)))) {
                            _exp2 = (_d * (3i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (16 : stdgo.GoInt)))) {
                            _exp2 = (_d * (4i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            break;
                            break;
                        } else {
                            throw stdgo.Go.toInterface(("unexpected mantissa base" : stdgo.GoString));
                            break;
                        };
                    };
                    break;
                };
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _ebase;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                        _exp5 = (_exp5 + (_exp) : stdgo.GoInt64);
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        _exp2 = (_exp2 + (_exp) : stdgo.GoInt64);
                        break;
                        break;
                    } else {
                        throw stdgo.Go.toInterface(("unexpected exponent base" : stdgo.GoString));
                        break;
                    };
                };
                break;
            };
        };
        if (_exp5 != ((0i64 : stdgo.GoInt64))) {
            var _n = (_exp5 : stdgo.GoInt64);
            if ((_n < (0i64 : stdgo.GoInt64) : Bool)) {
                _n = -_n;
                if ((_n < (0i64 : stdgo.GoInt64) : Bool)) {
                    return { _0 : null, _1 : false };
                };
            };
            if ((_n > (1000000i64 : stdgo.GoInt64) : Bool)) {
                return { _0 : null, _1 : false };
            };
            var _pow5 = (_z._b._abs._expNN(stdgo._internal.math.big.Big__natFive._natFive, (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._setWord((_n : stdgo._internal.math.big.Big_Word.Word)), null, false) : stdgo._internal.math.big.Big_T_nat.T_nat);
            if ((_exp5 > (0i64 : stdgo.GoInt64) : Bool)) {
                _z._a._abs = _z._a._abs._mul(_z._a._abs, _pow5);
                _z._b._abs = _z._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_Word.Word));
            } else {
                _z._b._abs = _pow5;
            };
        } else {
            _z._b._abs = _z._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_Word.Word));
        };
        if (((_exp2 < (-10000000i64 : stdgo.GoInt64) : Bool) || (_exp2 > (10000000i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : null, _1 : false };
        };
        if ((_exp2 > (0i64 : stdgo.GoInt64) : Bool)) {
            _z._a._abs = _z._a._abs._shl(_z._a._abs, (_exp2 : stdgo.GoUInt));
        } else if ((_exp2 < (0i64 : stdgo.GoInt64) : Bool)) {
            _z._b._abs = _z._b._abs._shl(_z._b._abs, (-_exp2 : stdgo.GoUInt));
        };
        _z._a._neg = (_neg && ((_z._a._abs.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        return { _0 : _z._norm(), _1 : true };
    }
    @:keep
    static public function scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:stdgo.GoInt32):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        var __tmp__ = _s.token(true, stdgo._internal.math.big.Big__ratTok._ratTok), _tok:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (!stdgo._internal.strings.Strings_containsRune.containsRune(("efgEFGv" : stdgo.GoString), _ch)) {
            return stdgo._internal.errors.Errors_new_.new_(("Rat.Scan: invalid verb" : stdgo.GoString));
        };
        {
            var __tmp__ = _z.setString((_tok : stdgo.GoString)?.__copy__()), __14:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo._internal.errors.Errors_new_.new_(("Rat.Scan: invalid syntax" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function quo( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        if ((_y._a._abs.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _b = __1, _a = __0;
        _a._scaleDenom((stdgo.Go.setRef(_x._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _y._b._abs);
        _b._scaleDenom((stdgo.Go.setRef(_y._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _x._b._abs);
        _z._a._abs = _a._abs;
        _z._b._abs = _b._abs;
        _z._a._neg = _a._neg != (_b._neg);
        return _z._norm();
    }
    @:keep
    static public function mul( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        if (_x == (_y)) {
            _z._a._neg = false;
            _z._a._abs = _z._a._abs._sqr(_x._a._abs);
            if ((_x._b._abs.length) == ((0 : stdgo.GoInt))) {
                _z._b._abs = _z._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_Word.Word));
            } else {
                _z._b._abs = _z._b._abs._sqr(_x._b._abs);
            };
            return _z;
        };
        _z._a.mul((stdgo.Go.setRef(_x._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_y._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
        _z._b._abs = stdgo._internal.math.big.Big__mulDenom._mulDenom(_z._b._abs, _x._b._abs, _y._b._abs);
        return _z._norm();
    }
    @:keep
    static public function sub( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _a2 = __1, _a1 = __0;
        _a1._scaleDenom((stdgo.Go.setRef(_x._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _y._b._abs);
        _a2._scaleDenom((stdgo.Go.setRef(_y._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _x._b._abs);
        _z._a.sub((stdgo.Go.setRef(_a1) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_a2) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
        _z._b._abs = stdgo._internal.math.big.Big__mulDenom._mulDenom(_z._b._abs, _x._b._abs, _y._b._abs);
        return _z._norm();
    }
    @:keep
    static public function add( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _a2 = __1, _a1 = __0;
        _a1._scaleDenom((stdgo.Go.setRef(_x._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _y._b._abs);
        _a2._scaleDenom((stdgo.Go.setRef(_y._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _x._b._abs);
        _z._a.add((stdgo.Go.setRef(_a1) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_a2) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
        _z._b._abs = stdgo._internal.math.big.Big__mulDenom._mulDenom(_z._b._abs, _x._b._abs, _y._b._abs);
        return _z._norm();
    }
    @:keep
    static public function cmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _b = __1, _a = __0;
        _a._scaleDenom((stdgo.Go.setRef(_x._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _y._b._abs);
        _b._scaleDenom((stdgo.Go.setRef(_y._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _x._b._abs);
        return _a.cmp((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
    }
    @:keep
    static public function _norm( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_z._a._abs.length == (0 : stdgo.GoInt)))) {
                    _z._a._neg = false;
                    @:fallthrough {
                        __switchIndex__ = 1;
                        __run__ = true;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_z._b._abs.length == (0 : stdgo.GoInt)))) {
                    _z._b._abs = _z._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_Word.Word));
                    break;
                    break;
                } else {
                    var _neg = (_z._a._neg : Bool);
                    _z._a._neg = false;
                    _z._b._neg = false;
                    {
                        var _f = stdgo._internal.math.big.Big_newInt.newInt((0i64 : stdgo.GoInt64))._lehmerGCD(null, null, (stdgo.Go.setRef(_z._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_z._b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
                        if (_f.cmp(stdgo._internal.math.big.Big__intOne._intOne) != ((0 : stdgo.GoInt))) {
                            {
                                var __tmp__ = _z._a._abs._div(null, _z._a._abs, _f._abs);
                                _z._a._abs = __tmp__._0;
                            };
                            {
                                var __tmp__ = _z._b._abs._div(null, _z._b._abs, _f._abs);
                                _z._b._abs = __tmp__._0;
                            };
                        };
                    };
                    _z._a._neg = _neg;
                    break;
                };
                break;
            };
        };
        return _z;
    }
    @:keep
    static public function denom( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        if ((_x._b._abs.length) == ((0 : stdgo.GoInt))) {
            return (stdgo.Go.setRef(({ _abs : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat) } : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        };
        return (stdgo.Go.setRef(_x._b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    }
    @:keep
    static public function num( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        return (stdgo.Go.setRef(_x._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    }
    @:keep
    static public function isInt( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        return ((_x._b._abs.length == (0 : stdgo.GoInt)) || (_x._b._abs._cmp(stdgo._internal.math.big.Big__natOne._natOne) == (0 : stdgo.GoInt)) : Bool);
    }
    @:keep
    static public function sign( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        return _x._a.sign();
    }
    @:keep
    static public function inv( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        if ((_x._a._abs.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        _z.set(_x);
        {
            final __tmp__0 = _z._b._abs;
            final __tmp__1 = _z._a._abs;
            _z._a._abs = __tmp__0;
            _z._b._abs = __tmp__1;
        };
        return _z;
    }
    @:keep
    static public function neg( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        _z.set(_x);
        _z._a._neg = (((_z._a._abs.length) > (0 : stdgo.GoInt) : Bool) && !_z._a._neg : Bool);
        return _z;
    }
    @:keep
    static public function abs( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        _z.set(_x);
        _z._a._neg = false;
        return _z;
    }
    @:keep
    static public function set( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        if (_z != (_x)) {
            _z._a.set((stdgo.Go.setRef(_x._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
            _z._b.set((stdgo.Go.setRef(_x._b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
        };
        if ((_z._b._abs.length) == ((0 : stdgo.GoInt))) {
            _z._b._abs = _z._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_Word.Word));
        };
        return _z;
    }
    @:keep
    static public function setUint64( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        _z._a.setUint64(_x);
        _z._b._abs = _z._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_Word.Word));
        return _z;
    }
    @:keep
    static public function setInt64( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        _z._a.setInt64(_x);
        _z._b._abs = _z._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_Word.Word));
        return _z;
    }
    @:keep
    static public function setInt( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        _z._a.set(_x);
        _z._b._abs = _z._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_Word.Word));
        return _z;
    }
    @:keep
    static public function setFrac64( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        if (_b == ((0i64 : stdgo.GoInt64))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        _z._a.setInt64(_a);
        if ((_b < (0i64 : stdgo.GoInt64) : Bool)) {
            _b = -_b;
            _z._a._neg = !_z._a._neg;
        };
        _z._b._abs = _z._b._abs._setUint64((_b : stdgo.GoUInt64));
        return _z._norm();
    }
    @:keep
    static public function setFrac( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        _z._a._neg = _a._neg != (_b._neg);
        var _babs = (_b._abs : stdgo._internal.math.big.Big_T_nat.T_nat);
        if ((_babs.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("division by zero" : stdgo.GoString));
        };
        if ((((stdgo.Go.setRef(_z._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) == _b) || stdgo._internal.math.big.Big__alias._alias(_z._a._abs, _babs) : Bool)) {
            _babs = (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._set(_babs);
        };
        _z._a._abs = _z._a._abs._set(_a._abs);
        _z._b._abs = _z._b._abs._set(_babs);
        return _z._norm();
    }
    @:keep
    static public function float64( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        var _f = (0 : stdgo.GoFloat64), _exact = false;
        var _b = (_x._b._abs : stdgo._internal.math.big.Big_T_nat.T_nat);
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            _b = stdgo._internal.math.big.Big__natOne._natOne;
        };
        {
            var __tmp__ = stdgo._internal.math.big.Big__quotToFloat64._quotToFloat64(_x._a._abs, _b);
            _f = __tmp__._0;
            _exact = __tmp__._1;
        };
        if (_x._a._neg) {
            _f = -_f;
        };
        return { _0 : _f, _1 : _exact };
    }
    @:keep
    static public function float32( _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _x;
        var _f = (0 : stdgo.GoFloat32), _exact = false;
        var _b = (_x._b._abs : stdgo._internal.math.big.Big_T_nat.T_nat);
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            _b = stdgo._internal.math.big.Big__natOne._natOne;
        };
        {
            var __tmp__ = stdgo._internal.math.big.Big__quotToFloat32._quotToFloat32(_x._a._abs, _b);
            _f = __tmp__._0;
            _exact = __tmp__._1;
        };
        if (_x._a._neg) {
            _f = -_f;
        };
        return { _0 : _f, _1 : _exact };
    }
    @:keep
    static public function setFloat64( _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _f:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = _z;
        {};
        var _bits = (stdgo._internal.math.Math_float64bits.float64bits(_f) : stdgo.GoUInt64);
        var _mantissa = (_bits & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _exp = ((((_bits >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        {
            final __value__ = _exp;
            if (__value__ == ((2047 : stdgo.GoInt))) {
                return null;
            } else if (__value__ == ((0 : stdgo.GoInt))) {
                _exp = (_exp - ((1022 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                _mantissa = (_mantissa | ((4503599627370496i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _exp = (_exp - ((1023 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _shift = ((52 : stdgo.GoInt) - _exp : stdgo.GoInt);
        while ((((_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) && (_shift > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _shift--;
        };
        _z._a.setUint64(_mantissa);
        _z._a._neg = (_f < (0 : stdgo.GoFloat64) : Bool);
        _z._b.set(stdgo._internal.math.big.Big__intOne._intOne);
        if ((_shift > (0 : stdgo.GoInt) : Bool)) {
            _z._b.lsh((stdgo.Go.setRef(_z._b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (_shift : stdgo.GoUInt));
        } else {
            _z._a.lsh((stdgo.Go.setRef(_z._a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (-_shift : stdgo.GoUInt));
        };
        return _z._norm();
    }
}
