package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function onesCount16(_x:stdgo.GoUInt16):stdgo.GoInt {
        return ((stdgo.Go.str(0,
1,
1,
2,
1,
2,
2,
3,
1,
2,
2,
3,
2,
3,
3,
4,
1,
2,
2,
3,
2,
3,
3,
4,
2,
3,
3,
4,
3,
4,
4,
5,
1,
2,
2,
3,
2,
3,
3,
4,
2,
3,
3,
4,
3,
4,
4,
5,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
1,
2,
2,
3,
2,
3,
3,
4,
2,
3,
3,
4,
3,
4,
4,
5,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
3,
4,
4,
5,
4,
5,
5,
6,
4,
5,
5,
6,
5,
6,
6,
"\x07",
1,
2,
2,
3,
2,
3,
3,
4,
2,
3,
3,
4,
3,
4,
4,
5,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
3,
4,
4,
5,
4,
5,
5,
6,
4,
5,
5,
6,
5,
6,
6,
"\x07",
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
3,
4,
4,
5,
4,
5,
5,
6,
4,
5,
5,
6,
5,
6,
6,
"\x07",
3,
4,
4,
5,
4,
5,
5,
6,
4,
5,
5,
6,
5,
6,
6,
"\x07",
4,
5,
5,
6,
5,
6,
6,
"\x07",
5,
6,
6,
"\x07",
6,
"\x07\x07\x08")[((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoInt)] + stdgo.Go.str(0,
1,
1,
2,
1,
2,
2,
3,
1,
2,
2,
3,
2,
3,
3,
4,
1,
2,
2,
3,
2,
3,
3,
4,
2,
3,
3,
4,
3,
4,
4,
5,
1,
2,
2,
3,
2,
3,
3,
4,
2,
3,
3,
4,
3,
4,
4,
5,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
1,
2,
2,
3,
2,
3,
3,
4,
2,
3,
3,
4,
3,
4,
4,
5,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
3,
4,
4,
5,
4,
5,
5,
6,
4,
5,
5,
6,
5,
6,
6,
"\x07",
1,
2,
2,
3,
2,
3,
3,
4,
2,
3,
3,
4,
3,
4,
4,
5,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
3,
4,
4,
5,
4,
5,
5,
6,
4,
5,
5,
6,
5,
6,
6,
"\x07",
2,
3,
3,
4,
3,
4,
4,
5,
3,
4,
4,
5,
4,
5,
5,
6,
3,
4,
4,
5,
4,
5,
5,
6,
4,
5,
5,
6,
5,
6,
6,
"\x07",
3,
4,
4,
5,
4,
5,
5,
6,
4,
5,
5,
6,
5,
6,
6,
"\x07",
4,
5,
5,
6,
5,
6,
6,
"\x07",
5,
6,
6,
"\x07",
6,
"\x07\x07\x08")[((_x & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt)] : stdgo.GoUInt8) : stdgo.GoInt);
    }
