package stdgo._internal.regexp;
function _matchFullLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _text:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        _refull._longest = true;
        return { _0 : _refull.matchString(_text?.__copy__()), _1 : ("[full,longest]" : stdgo.GoString) };
    }
