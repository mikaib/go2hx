package stdgo._internal.math.bits;
import stdgo._internal.unsafe.Unsafe;
function leadingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt {
        return ((8 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_len8.len8(_x) : stdgo.GoInt);
    }
