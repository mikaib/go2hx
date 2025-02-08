package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _after_3298781:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3300461:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3300222:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3298756:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3297357:stdgo.GoString = ("" : stdgo.GoString);
            var bigSwitchBreak = false;
            var _c_3299824:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _min_3298771:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3298448:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3297103:stdgo.Error = (null : stdgo.Error);
            var _r_3300219:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3299827:stdgo.GoString = ("" : stdgo.GoString);
            var _lit_3299744:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3297299:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3300458:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _re_3300057:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _err_3299833:stdgo.Error = (null : stdgo.Error);
            var _ok_3298788:Bool = false;
            var _p_3297245:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var _n_3300883:stdgo.GoInt = (0 : stdgo.GoInt);
            var _op_3297283:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _after_3298573:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3297265:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3300228:stdgo.Error = (null : stdgo.Error);
            var _max_3298776:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3297381:stdgo.GoString = ("" : stdgo.GoString);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    {
                                        var _r = ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        {
                                            final __value__ = _r;
                                            if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
                                            } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>));
                                            } else {
                                                throw stdgo.Go.toInterface(_r);
                                            };
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3297056i32;
                        } else {
                            _gotoNext = 3297237i32;
                        };
                    } else if (__value__ == (3297056i32)) {
                        {
                            _err_3297103 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_3297103 != null) {
                                _gotoNext = 3297135i32;
                            } else {
                                _gotoNext = 3297162i32;
                            };
                        };
                    } else if (__value__ == (3297135i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3297103 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3297162i32;
                    } else if (__value__ == (3297162i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalregexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3297237i32;
                    } else if (__value__ == (3297237i32)) {
                        _p_3297245._flags = _flags;
                        _p_3297245._wholeRegexp = _s?.__copy__();
                        _t_3297357 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3297365i32;
                    } else if (__value__ == (3297365i32)) {
                        if (_t_3297357 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3297377i32;
                        } else {
                            _gotoNext = 3300767i32;
                        };
                    } else if (__value__ == (3297377i32)) {
                        _repeat_3297381 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3297395i32;
                    } else if (__value__ == (3297395i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3297408i32;
                    } else if (__value__ == (3297408i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3297357[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3297521i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3297791i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3297888i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3297984i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3298099i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3298229i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3298343i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3298425i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3298726i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3299282i32;
                                } else {
                                    _gotoNext = 3297424i32;
                                };
                            };
                        } else {
                            _gotoNext = 3300742i32;
                        };
                    } else if (__value__ == (3297424i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_3297357?.__copy__());
                                _c_3297265 = @:tmpset0 __tmp__._0;
                                _t_3297357 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3297475i32;
                            } else {
                                _gotoNext = 3297505i32;
                            };
                        };
                    } else if (__value__ == (3297475i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3297505i32;
                    } else if (__value__ == (3297505i32)) {
                        @:check2 _p_3297245._literal(_c_3297265);
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3297521i32)) {
                        if ((((_p_3297245._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3297357.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3297357[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3297586i32;
                        } else {
                            _gotoNext = 3297729i32;
                        };
                    } else if (__value__ == (3297586i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3297245._parsePerlFlags(_t_3297357?.__copy__());
                                _t_3297357 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3297682i32;
                            } else {
                                _gotoNext = 3297715i32;
                            };
                        };
                    } else if (__value__ == (3297682i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3297715i32;
                    } else if (__value__ == (3297715i32)) {
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3297729i32)) {
                        _p_3297245._numCap++;
                        @:check2 _p_3297245._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_3297245._numCap;
                        _t_3297357 = (_t_3297357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3297791i32)) {
                        {
                            _err = @:check2 _p_3297245._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3297846i32;
                            } else {
                                _gotoNext = 3297876i32;
                            };
                        };
                    } else if (__value__ == (3297846i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3297876i32;
                    } else if (__value__ == (3297876i32)) {
                        _t_3297357 = (_t_3297357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3297888i32)) {
                        {
                            _err = @:check2 _p_3297245._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3297942i32;
                            } else {
                                _gotoNext = 3297972i32;
                            };
                        };
                    } else if (__value__ == (3297942i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3297972i32;
                    } else if (__value__ == (3297972i32)) {
                        _t_3297357 = (_t_3297357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3297984i32)) {
                        if ((_p_3297245._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3298021i32;
                        } else {
                            _gotoNext = 3298055i32;
                        };
                    } else if (__value__ == (3298021i32)) {
                        @:check2 _p_3297245._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3298087i32;
                    } else if (__value__ == (3298055i32)) {
                        _gotoNext = 3298055i32;
                        @:check2 _p_3297245._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3298087i32;
                    } else if (__value__ == (3298087i32)) {
                        _t_3297357 = (_t_3297357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3298099i32)) {
                        if ((_p_3297245._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3298136i32;
                        } else {
                            _gotoNext = 3298187i32;
                        };
                    } else if (__value__ == (3298136i32)) {
                        {
                            final __t__ = @:check2 _p_3297245._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3298217i32;
                    } else if (__value__ == (3298187i32)) {
                        _gotoNext = 3298187i32;
                        @:check2 _p_3297245._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3298217i32;
                    } else if (__value__ == (3298217i32)) {
                        _t_3297357 = (_t_3297357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3298229i32)) {
                        if ((_p_3297245._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3298264i32;
                        } else {
                            _gotoNext = 3298296i32;
                        };
                    } else if (__value__ == (3298264i32)) {
                        @:check2 _p_3297245._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3298331i32;
                    } else if (__value__ == (3298296i32)) {
                        _gotoNext = 3298296i32;
                        @:check2 _p_3297245._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3298331i32;
                    } else if (__value__ == (3298331i32)) {
                        _t_3297357 = (_t_3297357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3298343i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3297245._parseClass(_t_3297357?.__copy__());
                                _t_3297357 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3298396i32;
                            } else {
                                _gotoNext = 3300742i32;
                            };
                        };
                    } else if (__value__ == (3298396i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3298425i32)) {
                        _before_3298448 = _t_3297357?.__copy__();
                        _gotoNext = 3298463i32;
                    } else if (__value__ == (3298463i32)) {
                        {
                            final __value__ = _t_3297357[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3298480i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3298509i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3298538i32;
                            } else {
                                _gotoNext = 3298573i32;
                            };
                        };
                    } else if (__value__ == (3298480i32)) {
                        _op_3297283 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3298573i32;
                    } else if (__value__ == (3298509i32)) {
                        _op_3297283 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3298573i32;
                    } else if (__value__ == (3298538i32)) {
                        _op_3297283 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3298573i32;
                    } else if (__value__ == (3298573i32)) {
                        _after_3298573 = (_t_3297357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = @:check2 _p_3297245._repeat(_op_3297283, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3298448?.__copy__(), _after_3298573?.__copy__(), _lastRepeat_3297299?.__copy__());
                                _after_3298573 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3298665i32;
                            } else {
                                _gotoNext = 3298695i32;
                            };
                        };
                    } else if (__value__ == (3298665i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3298695i32;
                    } else if (__value__ == (3298695i32)) {
                        _repeat_3297381 = _before_3298448?.__copy__();
                        _t_3297357 = _after_3298573?.__copy__();
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3298726i32)) {
                        _op_3297283 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_3298756 = _t_3297357?.__copy__();
                        {
                            var __tmp__ = @:check2 _p_3297245._parseRepeat(_t_3297357?.__copy__());
                            _min_3298771 = @:tmpset0 __tmp__._0;
                            _max_3298776 = @:tmpset0 __tmp__._1;
                            _after_3298781 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_3298788 = @:tmpset0 __tmp__._3;
                        };
                        if (!_ok_3298788) {
                            _gotoNext = 3298821i32;
                        } else {
                            _gotoNext = 3298929i32;
                        };
                    } else if (__value__ == (3298821i32)) {
                        @:check2 _p_3297245._literal((123 : stdgo.GoInt32));
                        _t_3297357 = (_t_3297357.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3298929i32)) {
                        if (((((_min_3298771 < (0 : stdgo.GoInt) : Bool) || (_min_3298771 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3298776 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3298776 >= (0 : stdgo.GoInt) : Bool) && (_min_3298771 > _max_3298776 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3298993i32;
                        } else {
                            _gotoNext = 3299143i32;
                        };
                    } else if (__value__ == (3298993i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_3298756.__slice__(0, ((_before_3298756.length) - (_after_3298781.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3299143i32;
                    } else if (__value__ == (3299143i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3297245._repeat(_op_3297283, _min_3298771, _max_3298776, _before_3298756?.__copy__(), _after_3298781?.__copy__(), _lastRepeat_3297299?.__copy__());
                                _after_3298781 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3299221i32;
                            } else {
                                _gotoNext = 3299251i32;
                            };
                        };
                    } else if (__value__ == (3299221i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3299251i32;
                    } else if (__value__ == (3299251i32)) {
                        _repeat_3297381 = _before_3298756?.__copy__();
                        _t_3297357 = _after_3298781?.__copy__();
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3299282i32)) {
                        if ((((_p_3297245._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_3297357.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3299333i32;
                        } else {
                            _gotoNext = 3300057i32;
                        };
                    } else if (__value__ == (3299333i32)) {
                        _gotoNext = 3299339i32;
                    } else if (__value__ == (3299339i32)) {
                        {
                            final __value__ = _t_3297357[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3299357i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3299430i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3299506i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3299584i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3299679i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3299975i32;
                            } else {
                                _gotoNext = 3300057i32;
                            };
                        };
                    } else if (__value__ == (3299357i32)) {
                        @:check2 _p_3297245._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3297357 = (_t_3297357.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3297408i32;
                    } else if (__value__ == (3299430i32)) {
                        @:check2 _p_3297245._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3297357 = (_t_3297357.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3297408i32;
                    } else if (__value__ == (3299506i32)) {
                        @:check2 _p_3297245._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3297357 = (_t_3297357.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3297408i32;
                    } else if (__value__ == (3299584i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_3297357.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3300057i32;
                    } else if (__value__ == (3299679i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3297357.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3299744 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_3297357 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3299802i32;
                    } else if (__value__ == (3299802i32)) {
                        if (_lit_3299744 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3299816i32;
                        } else {
                            _gotoNext = 3299955i32;
                        };
                    } else if (__value__ == (3299816i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_3299744?.__copy__());
                            _c_3299824 = @:tmpset0 __tmp__._0;
                            _rest_3299827 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3299833 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3299833 != null) {
                            _gotoNext = 3299874i32;
                        } else {
                            _gotoNext = 3299913i32;
                        };
                    } else if (__value__ == (3299874i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3299833 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3299913i32;
                    } else if (__value__ == (3299913i32)) {
                        @:check2 _p_3297245._literal(_c_3299824);
                        _lit_3299744 = _rest_3299827?.__copy__();
                        _gotoNext = 3299802i32;
                    } else if (__value__ == (3299955i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3297408i32;
                    } else if (__value__ == (3299975i32)) {
                        @:check2 _p_3297245._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_3297357 = (_t_3297357.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3297408i32;
                    } else if (__value__ == (3300057i32)) {
                        _re_3300057 = @:check2 _p_3297245._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_3300057 ?? throw "null pointer dereference").flags = _p_3297245._flags;
                        if ((((_t_3297357.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3297357[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3297357[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3300213i32;
                        } else {
                            _gotoNext = 3300455i32;
                        };
                    } else if (__value__ == (3300213i32)) {
                        {
                            var __tmp__ = @:check2 _p_3297245._parseUnicodeClass(_t_3297357?.__copy__(), ((@:checkr _re_3300057 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3300219 = @:tmpset0 __tmp__._0;
                            _rest_3300222 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_3300228 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_3300228 != null) {
                            _gotoNext = 3300290i32;
                        } else {
                            _gotoNext = 3300323i32;
                        };
                    } else if (__value__ == (3300290i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3300228 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3300323i32;
                    } else if (__value__ == (3300323i32)) {
                        if (_r_3300219 != null) {
                            _gotoNext = 3300335i32;
                        } else {
                            _gotoNext = 3300455i32;
                        };
                    } else if (__value__ == (3300335i32)) {
                        (@:checkr _re_3300057 ?? throw "null pointer dereference").rune = _r_3300219;
                        _t_3297357 = _rest_3300222?.__copy__();
                        @:check2 _p_3297245._push(_re_3300057);
                        bigSwitchBreak = true;
                        _gotoNext = 3297408i32;
                    } else if (__value__ == (3300455i32)) {
                        {
                            {
                                var __tmp__ = @:check2 _p_3297245._parsePerlClassEscape(_t_3297357?.__copy__(), ((@:checkr _re_3300057 ?? throw "null pointer dereference").rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3300458 = @:tmpset0 __tmp__._0;
                                _rest_3300461 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_3300458 != null) {
                                _gotoNext = 3300519i32;
                            } else {
                                _gotoNext = 3300593i32;
                            };
                        };
                    } else if (__value__ == (3300519i32)) {
                        (@:checkr _re_3300057 ?? throw "null pointer dereference").rune = _r_3300458;
                        _t_3297357 = _rest_3300461?.__copy__();
                        @:check2 _p_3297245._push(_re_3300057);
                        bigSwitchBreak = true;
                        _gotoNext = 3297408i32;
                    } else if (__value__ == (3300593i32)) {
                        @:check2 _p_3297245._reuse(_re_3300057);
                        {
                            {
                                var __tmp__ = @:check2 _p_3297245._parseEscape(_t_3297357?.__copy__());
                                _c_3297265 = @:tmpset0 __tmp__._0;
                                _t_3297357 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3300693i32;
                            } else {
                                _gotoNext = 3300723i32;
                            };
                        };
                    } else if (__value__ == (3300693i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3300723i32;
                    } else if (__value__ == (3300723i32)) {
                        @:check2 _p_3297245._literal(_c_3297265);
                        _gotoNext = 3300742i32;
                    } else if (__value__ == (3300742i32)) {
                        _lastRepeat_3297299 = _repeat_3297381?.__copy__();
                        _gotoNext = 3297365i32;
                    } else if (__value__ == (3300767i32)) {
                        @:check2 _p_3297245._concat();
                        if (@:check2 _p_3297245._swapVerticalBar()) {
                            _gotoNext = 3300802i32;
                        } else {
                            _gotoNext = 3300867i32;
                        };
                    } else if (__value__ == (3300802i32)) {
                        _p_3297245._stack = (_p_3297245._stack.__slice__(0, ((_p_3297245._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3300867i32;
                    } else if (__value__ == (3300867i32)) {
                        @:check2 _p_3297245._alternate();
                        _n_3300883 = (_p_3297245._stack.length);
                        if (_n_3300883 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3300912i32;
                        } else {
                            _gotoNext = 3300959i32;
                        };
                    } else if (__value__ == (3300912i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>)) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3300959i32;
                    } else if (__value__ == (3300959i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3297245._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        };
    }
