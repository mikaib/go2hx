package _internal.crypto.internal.nistec.fiat;
function _p256ToBytes(_out1:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _arg1:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>):Void {
        var _x1 = (_arg1[(3 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2 = (_arg1[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x3 = (_arg1[(1 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x4 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x5 = (((_x4 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x6 = ((_x4 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x7 = (((_x6 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x8 = ((_x6 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x9 = (((_x8 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x10 = ((_x8 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x11 = (((_x10 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x12 = ((_x10 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x13 = (((_x12 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x14 = ((_x12 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x15 = (((_x14 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x16 = ((_x14 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x17 = (((_x16 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x18 = ((_x16 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        var _x19 = (((_x3 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x20 = ((_x3 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x21 = (((_x20 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x22 = ((_x20 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x23 = (((_x22 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x24 = ((_x22 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x25 = (((_x24 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x26 = ((_x24 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x27 = (((_x26 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x28 = ((_x26 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x29 = (((_x28 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x30 = ((_x28 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x31 = (((_x30 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x32 = ((_x30 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        var _x33 = (((_x2 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x34 = ((_x2 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x35 = (((_x34 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x36 = ((_x34 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x37 = (((_x36 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x38 = ((_x36 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x39 = (((_x38 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x40 = ((_x38 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x41 = (((_x40 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x42 = ((_x40 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x43 = (((_x42 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x44 = ((_x42 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x45 = (((_x44 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x46 = ((_x44 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        var _x47 = (((_x1 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x48 = ((_x1 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x49 = (((_x48 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x50 = ((_x48 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x51 = (((_x50 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x52 = ((_x50 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x53 = (((_x52 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x54 = ((_x52 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x55 = (((_x54 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x56 = ((_x54 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x57 = (((_x56 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x58 = ((_x56 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x59 = (((_x58 : stdgo.GoUInt8) & (255 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _x60 = ((_x58 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _out1[(0 : stdgo.GoInt)] = _x5;
        _out1[(1 : stdgo.GoInt)] = _x7;
        _out1[(2 : stdgo.GoInt)] = _x9;
        _out1[(3 : stdgo.GoInt)] = _x11;
        _out1[(4 : stdgo.GoInt)] = _x13;
        _out1[(5 : stdgo.GoInt)] = _x15;
        _out1[(6 : stdgo.GoInt)] = _x17;
        _out1[(7 : stdgo.GoInt)] = _x18;
        _out1[(8 : stdgo.GoInt)] = _x19;
        _out1[(9 : stdgo.GoInt)] = _x21;
        _out1[(10 : stdgo.GoInt)] = _x23;
        _out1[(11 : stdgo.GoInt)] = _x25;
        _out1[(12 : stdgo.GoInt)] = _x27;
        _out1[(13 : stdgo.GoInt)] = _x29;
        _out1[(14 : stdgo.GoInt)] = _x31;
        _out1[(15 : stdgo.GoInt)] = _x32;
        _out1[(16 : stdgo.GoInt)] = _x33;
        _out1[(17 : stdgo.GoInt)] = _x35;
        _out1[(18 : stdgo.GoInt)] = _x37;
        _out1[(19 : stdgo.GoInt)] = _x39;
        _out1[(20 : stdgo.GoInt)] = _x41;
        _out1[(21 : stdgo.GoInt)] = _x43;
        _out1[(22 : stdgo.GoInt)] = _x45;
        _out1[(23 : stdgo.GoInt)] = _x46;
        _out1[(24 : stdgo.GoInt)] = _x47;
        _out1[(25 : stdgo.GoInt)] = _x49;
        _out1[(26 : stdgo.GoInt)] = _x51;
        _out1[(27 : stdgo.GoInt)] = _x53;
        _out1[(28 : stdgo.GoInt)] = _x55;
        _out1[(29 : stdgo.GoInt)] = _x57;
        _out1[(30 : stdgo.GoInt)] = _x59;
        _out1[(31 : stdgo.GoInt)] = _x60;
    }
