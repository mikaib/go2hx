package stdgo._internal.math.cmplx;
function isInf(_x:stdgo.GoComplex128):Bool {
        if ((stdgo._internal.math.Math_isInf.isInf(_x.real, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isInf.isInf(_x.imag, (0 : stdgo.GoInt)) : Bool)) {
            return true;
        };
        return false;
    }
