package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function benchmarkRuneCountInStringTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.unicode.utf8.Utf8_runeCountInString.runeCountInString(("日本語日本語日本語日" : stdgo.GoString));
            });
        };
    }
