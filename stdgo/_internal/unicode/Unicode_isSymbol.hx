package stdgo._internal.unicode;
function isSymbol(_r:stdgo.GoInt32):Bool {
        if (((_r : stdgo.GoUInt32) <= (255u32 : stdgo.GoUInt32) : Bool)) {
            return (stdgo._internal.unicode.Unicode__properties._properties[((_r : stdgo.GoUInt8) : stdgo.GoInt)] & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        };
        return stdgo._internal.unicode.Unicode__isExcludingLatin._isExcludingLatin(stdgo._internal.unicode.Unicode_symbol.symbol, _r);
    }
