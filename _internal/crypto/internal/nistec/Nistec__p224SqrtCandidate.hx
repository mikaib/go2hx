package _internal.crypto.internal.nistec;
function _p224SqrtCandidate(_r:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):Void {
        _internal.crypto.internal.nistec.Nistec__p224GGOnce._p224GGOnce.do_(function():Void {
            _internal.crypto.internal.nistec.Nistec__p224GG._p224GG = (stdgo.Go.setRef(new stdgo.GoArray<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>(96, 96, ...[for (i in 0 ... 96) ({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)])) : stdgo.Ref<stdgo.GoArray<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>>);
            for (_i => _ in _internal.crypto.internal.nistec.Nistec__p224GG._p224GG) {
                if (_i == ((0 : stdgo.GoInt))) {
                    _internal.crypto.internal.nistec.Nistec__p224GG._p224GG[(_i : stdgo.GoInt)].setBytes((new stdgo.Slice<stdgo.GoUInt8>(28, 28, ...[
(106 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(236 : stdgo.GoUInt8),
(103 : stdgo.GoUInt8),
(133 : stdgo.GoUInt8),
(152 : stdgo.GoUInt8),
(167 : stdgo.GoUInt8),
(146 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(85 : stdgo.GoUInt8),
(178 : stdgo.GoUInt8),
(212 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(251 : stdgo.GoUInt8),
(190 : stdgo.GoUInt8),
(163 : stdgo.GoUInt8),
(216 : stdgo.GoUInt8),
(206 : stdgo.GoUInt8),
(243 : stdgo.GoUInt8),
(251 : stdgo.GoUInt8),
(54 : stdgo.GoUInt8),
(50 : stdgo.GoUInt8),
(220 : stdgo.GoUInt8),
(105 : stdgo.GoUInt8),
(27 : stdgo.GoUInt8),
(116 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    _internal.crypto.internal.nistec.Nistec__p224GG._p224GG[(_i : stdgo.GoInt)].square((stdgo.Go.setRef(_internal.crypto.internal.nistec.Nistec__p224GG._p224GG[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>));
                };
            };
        });
        var _t0:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        var _t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        _r.square(_x);
        _r.mul(_x, _r);
        _r.square(_r);
        _r.mul(_x, _r);
        _t0.square(_r);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (3 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _t0.mul(_r, _t0);
        _t1.square(_t0);
        _r.mul(_x, _t1);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (5 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        _t1.square(_t0);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (12 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        _t1.square(_t0);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (7 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _r.mul(_r, _t1);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (17 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        _t1.square(_t0);
        {
            var _s = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (48 : stdgo.GoInt) : Bool), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        {
            var _s = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_s < (31 : stdgo.GoInt) : Bool), _s++, {
                _t0.square(_t0);
            });
        };
        _r.mul(_r, _t0);
        var _v = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>).square(_r);
        _v.mul(_v, _x);
        _r.mul(_r, _x);
        var _p224MinusOne:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>).sub((stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>), (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>).one());
        {
            var _i = (95 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (1 : stdgo.GoInt) : Bool), _i--, {
                var _w = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>).set(_v);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _j++, {
                        _w.square(_w);
                    });
                };
                var _cond = (_w.equal(_p224MinusOne) : stdgo.GoInt);
                _v.select(_t0.mul(_v, (stdgo.Go.setRef(_internal.crypto.internal.nistec.Nistec__p224GG._p224GG[((96 : stdgo.GoInt) - _i : stdgo.GoInt)]) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>)), _v, _cond);
                _r.select(_t0.mul(_r, (stdgo.Go.setRef(_internal.crypto.internal.nistec.Nistec__p224GG._p224GG[(((96 : stdgo.GoInt) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>)), _r, _cond);
            });
        };
    }
