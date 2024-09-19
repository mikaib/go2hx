package stdgo._internal.encoding.json;
var _tokenStreamCases : stdgo.Slice<stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase> = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase>(18, 18, ...[
({ _json : ("10" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((10 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : (" [10] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface((10 : stdgo.GoFloat64)), stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : (" [false,10,\"b\"] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(5, 5, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(false), stdgo.Go.toInterface((10 : stdgo.GoFloat64)), stdgo.Go.toInterface(("b" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ("{ \"a\": 1 }" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoFloat64)), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ("{\"a\": 1, \"b\":\"3\"}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(6, 6, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoFloat64)), stdgo.Go.toInterface(("b" : stdgo.GoString)), stdgo.Go.toInterface(("3" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : (" [{\"a\": 1},{\"a\": 2}] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(10, 10, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoFloat64)), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((2 : stdgo.GoFloat64)), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ("{\"obj\": {\"a\": 1}}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(7, 7, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("obj" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoFloat64)), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ("{\"obj\": [{\"a\": 1}]}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(9, 9, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("obj" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoFloat64)), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ("{ \"a\": 1 }" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface((1 : stdgo.GoFloat64))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : (" [ { \"a\" : 1 } ] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
        x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoFloat64)));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : (" [{\"a\": 1},{\"a\": 2}] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
        x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoFloat64)));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis)), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
        x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((2 : stdgo.GoFloat64)));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ("{ \"obj\" : [ { \"a\" : 1 } ] }" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(6, 6, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("obj" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
        x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoFloat64)));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ("{\"obj\": {\"a\": 1}}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("obj" : stdgo.GoString)), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
        x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoFloat64)));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ("{\"obj\": [{\"a\": 1}]}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(("obj" : stdgo.GoString)), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
        x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoFloat64)));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>))]) : stdgo.Slice<stdgo.AnyInterface>))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : (" [{\"a\": 1} {\"a\": 2}] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
        x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoFloat64)));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis)), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("expected comma after array element" : stdgo.GoString), (11i64 : stdgo.GoInt64)) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ((("{ \"" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (513 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("\" 1 }" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (513 : stdgo.GoInt))), stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("expected colon after object key" : stdgo.GoString), (518i64 : stdgo.GoInt64)) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)))) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : ("{ \"\\a\" }" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("invalid character \'a\' in string escape code" : stdgo.GoString), (3i64 : stdgo.GoInt64)) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase),
({ _json : (" \\a" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("invalid character \'\\\\\' looking for beginning of value" : stdgo.GoString), (1i64 : stdgo.GoInt64)) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)))]) : stdgo.Slice<stdgo.AnyInterface>) } : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase>);
