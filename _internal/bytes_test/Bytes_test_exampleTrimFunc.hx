package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleTrimFunc():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes_trimFunc.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isLetter.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes_trimFunc.trimFunc((("\"go-gopher!\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isLetter.isLetter) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes_trimFunc.trimFunc((("go-gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isPunct.isPunct) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((stdgo._internal.bytes.Bytes_trimFunc.trimFunc((("1234go-gopher!567" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isNumber.isNumber) : stdgo.GoString)));
    }
