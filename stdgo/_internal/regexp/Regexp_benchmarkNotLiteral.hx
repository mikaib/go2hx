package stdgo._internal.regexp;
function benchmarkNotLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = ((stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (50 : stdgo.GoInt)) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile((".y" : stdgo.GoString));
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (!_re.matchString(_x?.__copy__())) {
                    _b.fatalf(("no match!" : stdgo.GoString));
                };
            });
        };
    }
