package stdgo._internal.text.template.parse;
function _lexIdentifier(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        while (true) {
            {
                var _r = (_l._next() : stdgo.GoInt32);
                if (stdgo._internal.text.template.parse.Parse__isAlphaNumeric._isAlphaNumeric(_r)) {} else {
                    _l._backup();
                    var _word = ((_l._input.__slice__(_l._start, _l._pos) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (!_l._atTerminator()) {
                        return _l._errorf(("bad character %#U" : stdgo.GoString), stdgo.Go.toInterface(_r));
                    };
                    if (((stdgo._internal.text.template.parse.Parse__key._key[_word] ?? ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) > (22 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType) : Bool)) {
                        var _item = (stdgo._internal.text.template.parse.Parse__key._key[_word] ?? ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType) : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType);
                        if (((_item == ((24 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) && !_l._options._breakOK : Bool) || (_item == ((25 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType)) && !_l._options._continueOK : Bool) : Bool)) {
                            return _l._emit((10 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                        };
                        return _l._emit(_item);
                    } else if (_word[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                        return _l._emit((9 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                    } else if (_word == (("true" : stdgo.GoString)) || _word == (("false" : stdgo.GoString))) {
                        return _l._emit((1 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                    } else {
                        return _l._emit((10 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                    };
                };
            };
        };
    }
