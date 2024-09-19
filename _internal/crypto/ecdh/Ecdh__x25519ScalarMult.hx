package _internal.crypto.ecdh;
function _x25519ScalarMult(_dst:stdgo.Slice<stdgo.GoUInt8>, _scalar:stdgo.Slice<stdgo.GoUInt8>, _point:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _e:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        stdgo.Go.copySlice((_e.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_scalar.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        _e[(0 : stdgo.GoInt)] = (_e[(0 : stdgo.GoInt)] & ((248 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _e[(31 : stdgo.GoInt)] = (_e[(31 : stdgo.GoInt)] & ((127 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _e[(31 : stdgo.GoInt)] = (_e[(31 : stdgo.GoInt)] | ((64 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        var __0:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __1:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __2:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __3:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __4:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __5:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element), __6:_internal.crypto.internal.edwards25519.field.Field_Element.Element = ({} : _internal.crypto.internal.edwards25519.field.Field_Element.Element);
var _tmp1 = __6, _tmp0 = __5, _z3 = __4, _x3 = __3, _z2 = __2, _x2 = __1, _x1 = __0;
        _x1.setBytes((_point.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        _x2.one();
        _x3.set((stdgo.Go.setRef(_x1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _z3.one();
        var _swap = (0 : stdgo.GoInt);
        {
            var _pos = (254 : stdgo.GoInt);
            stdgo.Go.cfor((_pos >= (0 : stdgo.GoInt) : Bool), _pos--, {
                var _b = (_e[(_pos / (8 : stdgo.GoInt) : stdgo.GoInt)] >> ((_pos & (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt8);
                _b = (_b & ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _swap = (_swap ^ ((_b : stdgo.GoInt)) : stdgo.GoInt);
                _x2.swap((stdgo.Go.setRef(_x3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _swap);
                _z2.swap((stdgo.Go.setRef(_z3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _swap);
                _swap = (_b : stdgo.GoInt);
                _tmp0.subtract((stdgo.Go.setRef(_x3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _tmp1.subtract((stdgo.Go.setRef(_x2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _x2.add((stdgo.Go.setRef(_x2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _z2.add((stdgo.Go.setRef(_x3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _z3.multiply((stdgo.Go.setRef(_tmp0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_x2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _z2.multiply((stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_tmp1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _tmp0.square((stdgo.Go.setRef(_tmp1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _tmp1.square((stdgo.Go.setRef(_x2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _x3.add((stdgo.Go.setRef(_z3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _z2.subtract((stdgo.Go.setRef(_z3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _x2.multiply((stdgo.Go.setRef(_tmp1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_tmp0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _tmp1.subtract((stdgo.Go.setRef(_tmp1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_tmp0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _z2.square((stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _z3.mult32((stdgo.Go.setRef(_tmp1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (121666u32 : stdgo.GoUInt32));
                _x3.square((stdgo.Go.setRef(_x3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _tmp0.add((stdgo.Go.setRef(_tmp0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _z3.multiply((stdgo.Go.setRef(_x1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
                _z2.multiply((stdgo.Go.setRef(_tmp1) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_tmp0) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
            });
        };
        _x2.swap((stdgo.Go.setRef(_x3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _swap);
        _z2.swap((stdgo.Go.setRef(_z3) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), _swap);
        _z2.invert((stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        _x2.multiply((stdgo.Go.setRef(_x2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>));
        stdgo.Go.copySlice((_dst.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _x2.bytes());
    }
