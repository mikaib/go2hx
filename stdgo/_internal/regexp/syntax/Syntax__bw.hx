package stdgo._internal.regexp.syntax;
function _bw(_b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        for (__1 => _s in _args) {
            _b.writeString(_s?.__copy__());
        };
    }
