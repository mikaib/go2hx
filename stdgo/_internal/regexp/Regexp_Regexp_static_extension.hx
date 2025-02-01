package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile((_text : stdgo.GoString)?.__copy__()), _newRE:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_newRE : stdgo._internal.regexp.Regexp_Regexp.Regexp)?.__copy__();
            var x = (_re : stdgo._internal.regexp.Regexp_Regexp.Regexp);
            x._expr = __tmp__?._expr;
            x._prog = __tmp__?._prog;
            x._onepass = __tmp__?._onepass;
            x._numSubexp = __tmp__?._numSubexp;
            x._maxBitStateLen = __tmp__?._maxBitStateLen;
            x._subexpNames = __tmp__?._subexpNames;
            x._prefix = __tmp__?._prefix;
            x._prefixBytes = __tmp__?._prefixBytes;
            x._prefixRune = __tmp__?._prefixRune;
            x._prefixEnd = __tmp__?._prefixEnd;
            x._mpool = __tmp__?._mpool;
            x._matchcap = __tmp__?._matchcap;
            x._prefixComplete = __tmp__?._prefixComplete;
            x._cond = __tmp__?._cond;
            x._minInputLen = __tmp__?._minInputLen;
            x._longest = __tmp__?._longest;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return { _0 : ((@:check2r _re.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function split( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        if (((((@:checkr _re ?? throw "null pointer dereference")._expr.length) > (0 : stdgo.GoInt) : Bool) && (_s.length == (0 : stdgo.GoInt)) : Bool)) {
            return (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _matches = @:check2r _re.findAllStringIndex(_s?.__copy__(), _n);
        var _strings = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_matches.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _beg = (0 : stdgo.GoInt);
        var _end = (0 : stdgo.GoInt);
        for (__0 => _match in _matches) {
            if (((_n > (0 : stdgo.GoInt) : Bool) && ((_strings.length) >= (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
            _end = _match[(0 : stdgo.GoInt)];
            if (_match[(1 : stdgo.GoInt)] != ((0 : stdgo.GoInt))) {
                _strings = (_strings.__append__((_s.__slice__(_beg, _end) : stdgo.GoString)?.__copy__()));
            };
            _beg = _match[(1 : stdgo.GoInt)];
        };
        if (_end != ((_s.length))) {
            _strings = (_strings.__append__((_s.__slice__(_beg) : stdgo.GoString)?.__copy__()));
        };
        return _strings;
    }
    @:keep
    @:tdfield
    static public function findAllStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoString>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
            };
            var _slice = (new stdgo.Slice<stdgo.GoString>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_j => _ in _slice) {
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_s.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                };
            };
            _result = (_result.__append__(_slice));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__(_match));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
        @:check2r _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>);
            };
            var _slice = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((_match.length) / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            for (_j => _ in _slice) {
                if ((_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool)) {
                    _slice[(_j : stdgo.GoInt)] = (_b.__slice__(_match[((2 : stdgo.GoInt) * _j : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _j : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            _result = (_result.__append__(_slice));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        @:check2r _re._allMatches(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            _result = (_result.__append__((_s.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAllIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        @:check2r _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
            };
            _result = (_result.__append__((_match.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = ((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _result:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        @:check2r _re._allMatches(stdgo.Go.str()?.__copy__(), _b, _n, function(_match:stdgo.Slice<stdgo.GoInt>):Void {
            if (_result == null) {
                _result = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            _result = (_result.__append__((_b.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)));
        });
        return _result;
    }
    @:keep
    @:tdfield
    static public function findReaderSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._pad(@:check2r _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._pad(@:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function findStringSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _ret = (new stdgo.Slice<stdgo.GoString>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_s.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
            };
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findSubmatchIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._pad(@:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>)));
    }
    @:keep
    @:tdfield
    static public function _expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        while (((_template.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_template?.__copy__(), ("$" : stdgo.GoString)), _before:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                break;
            };
            _dst = (_dst.__append__(...(_before : Array<stdgo.GoUInt8>)));
            _template = _after?.__copy__();
            if (((_template != stdgo.Go.str()) && (_template[(0 : stdgo.GoInt)] == (36 : stdgo.GoUInt8)) : Bool)) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)));
                _template = (_template.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                continue;
            };
            var __tmp__ = stdgo._internal.regexp.Regexp__extract._extract(_template?.__copy__()), _name:stdgo.GoString = __tmp__._0, _num:stdgo.GoInt = __tmp__._1, _rest:stdgo.GoString = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _dst = (_dst.__append__((36 : stdgo.GoUInt8)));
                continue;
            };
            _template = _rest?.__copy__();
            if ((_num >= (0 : stdgo.GoInt) : Bool)) {
                if ((((((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) && (_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    if (_bsrc != null) {
                        _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    } else {
                        _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _num : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _num : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    };
                };
            } else {
                for (_i => _namei in (@:checkr _re ?? throw "null pointer dereference")._subexpNames) {
                    if (((_name == (_namei) && ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) < (_match.length) : Bool) : Bool) && (_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        if (_bsrc != null) {
                            _dst = (_dst.__append__(...((_bsrc.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                        } else {
                            _dst = (_dst.__append__(...((_src.__slice__(_match[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _match[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        };
                        break;
                    };
                };
            };
        };
        _dst = (_dst.__append__(...(_template : Array<stdgo.GoUInt8>)));
        return _dst;
    }
    @:keep
    @:tdfield
    static public function expandString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._expand(_dst, _template?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function expand( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._expand(_dst, (_template : stdgo.GoString)?.__copy__(), _src, stdgo.Go.str()?.__copy__(), _match);
    }
    @:keep
    @:tdfield
    static public function findSubmatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _ in _ret) {
            if (((((2 : stdgo.GoInt) * _i : stdgo.GoInt) < (_a.length) : Bool) && (_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ret[(_i : stdgo.GoInt)] = (_b.__slice__(_a[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _a[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return _ret;
    }
    @:keep
    @:tdfield
    static public function findReaderIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = @:check2r _re._doExecute(_r, (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findStringIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function findString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return stdgo.Go.str()?.__copy__();
        };
        return (_s.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function findIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _loc = (null : stdgo.Slice<stdgo.GoInt>);
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return _loc = (null : stdgo.Slice<stdgo.GoInt>);
        };
        return _loc = (_a.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
    }
    @:keep
    @:tdfield
    static public function find( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (2 : stdgo.GoInt), (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_b.__slice__(_a[(0 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)], _a[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _allMatches( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _end:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_b == null) {
            _end = (_s.length);
        } else {
            _end = (_b.length);
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt), __2 = (-1 : stdgo.GoInt);
var _prevMatchEnd = __2, _i = __1, _pos = __0;
            while (((_i < _n : Bool) && (_pos <= _end : Bool) : Bool)) {
                var _matches = @:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, _s?.__copy__(), _pos, (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap, (null : stdgo.Slice<stdgo.GoInt>));
                if ((_matches.length) == ((0 : stdgo.GoInt))) {
                    break;
                };
                var _accept = (true : Bool);
                if (_matches[(1 : stdgo.GoInt)] == (_pos)) {
                    if (_matches[(0 : stdgo.GoInt)] == (_prevMatchEnd)) {
                        _accept = false;
                    };
                    var _width:stdgo.GoInt = (0 : stdgo.GoInt);
                    if (_b == null) {
                        var _is = ({ _str : _s?.__copy__() } : stdgo._internal.regexp.Regexp_T_inputString.T_inputString);
                        {
                            var __tmp__ = @:check2 _is._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
                        };
                    } else {
                        var _ib = ({ _str : _b } : stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes);
                        {
                            var __tmp__ = @:check2 _ib._step(_pos);
                            _width = @:tmpset0 __tmp__._1;
                        };
                    };
                    if ((_width > (0 : stdgo.GoInt) : Bool)) {
                        _pos = (_pos + (_width) : stdgo.GoInt);
                    } else {
                        _pos = (_end + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                } else {
                    _pos = _matches[(1 : stdgo.GoInt)];
                };
                _prevMatchEnd = _matches[(1 : stdgo.GoInt)];
                if (_accept) {
                    _deliver(@:check2r _re._pad(_matches));
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _pad( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if (_a == null) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _n = ((((1 : stdgo.GoInt) + (@:checkr _re ?? throw "null pointer dereference")._numSubexp : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt);
        while (((_a.length) < _n : Bool)) {
            _a = (_a.__append__((-1 : stdgo.GoInt)));
        };
        return _a;
    }
    @:keep
    @:tdfield
    static public function replaceAllFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._replaceAll(_src, stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteral( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._replaceAll(_src, stdgo.Go.str()?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        });
    }
    @:keep
    @:tdfield
    static public function replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        if ((stdgo._internal.bytes.Bytes_indexByte.indexByte(_repl, (36 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool)) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw "null pointer dereference")._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _srepl = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        var _b = @:check2r _re._replaceAll(_src, stdgo.Go.str()?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            if ((_srepl.length) != ((_repl.length))) {
                _srepl = (_repl : stdgo.GoString)?.__copy__();
            };
            return @:check2r _re._expand(_dst, _srepl?.__copy__(), _src, stdgo.Go.str()?.__copy__(), _match);
        });
        return _b;
    }
    @:keep
    @:tdfield
    static public function _replaceAll( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _lastMatchEnd = (0 : stdgo.GoInt);
        var _searchPos = (0 : stdgo.GoInt);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _endPos:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_bsrc != null) {
            _endPos = (_bsrc.length);
        } else {
            _endPos = (_src.length);
        };
        if ((_nmatch > (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap : Bool)) {
            _nmatch = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").numCap;
        };
        var _dstCap:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__();
        while ((_searchPos <= _endPos : Bool)) {
            var _a = @:check2r _re._doExecute((null : stdgo._internal.io.Io_RuneReader.RuneReader), _bsrc, _src?.__copy__(), _searchPos, _nmatch, (_dstCap.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            if ((_a.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            if (_bsrc != null) {
                _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            } else {
                _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd, _a[(0 : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            };
            if (((_a[(1 : stdgo.GoInt)] > _lastMatchEnd : Bool) || (_a[(0 : stdgo.GoInt)] == (0 : stdgo.GoInt)) : Bool)) {
                _buf = _repl(_buf, _a);
            };
            _lastMatchEnd = _a[(1 : stdgo.GoInt)];
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_bsrc != null) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_bsrc.__slice__(_searchPos) : stdgo.Slice<stdgo.GoUInt8>));
                    _width = @:tmpset0 __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_src.__slice__(_searchPos) : stdgo.GoString)?.__copy__());
                    _width = @:tmpset0 __tmp__._1;
                };
            };
            if (((_searchPos + _width : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos = (_searchPos + (_width) : stdgo.GoInt);
            } else if (((_searchPos + (1 : stdgo.GoInt) : stdgo.GoInt) > _a[(1 : stdgo.GoInt)] : Bool)) {
                _searchPos++;
            } else {
                _searchPos = _a[(1 : stdgo.GoInt)];
            };
        };
        if (_bsrc != null) {
            _buf = (_buf.__append__(...((_bsrc.__slice__(_lastMatchEnd) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        } else {
            _buf = (_buf.__append__(...((_src.__slice__(_lastMatchEnd) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        return _buf;
    }
    @:keep
    @:tdfield
    static public function replaceAllStringFunc( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString -> stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _b = @:check2r _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl((_src.__slice__(_match[(0 : stdgo.GoInt)], _match[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__()) : Array<stdgo.GoUInt8>)));
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllLiteralString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return (@:check2r _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), (2 : stdgo.GoInt), function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return (_dst.__append__(...(_repl : Array<stdgo.GoUInt8>)));
        }) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _n = (2 : stdgo.GoInt);
        if (stdgo._internal.strings.Strings_contains.contains(_repl?.__copy__(), ("$" : stdgo.GoString))) {
            _n = ((2 : stdgo.GoInt) * (((@:checkr _re ?? throw "null pointer dereference")._numSubexp + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _b = @:check2r _re._replaceAll((null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _n, function(_dst:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
            return @:check2r _re._expand(_dst, _repl?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _src?.__copy__(), _match);
        });
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function match( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._doMatch((null : stdgo._internal.io.Io_RuneReader.RuneReader), _b, stdgo.Go.str()?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchString( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._doMatch((null : stdgo._internal.io.Io_RuneReader.RuneReader), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function matchReader( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._doMatch(_r, (null : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str()?.__copy__());
    }
    @:keep
    @:tdfield
    static public function literalPrefix( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (@:checkr _re ?? throw "null pointer dereference")._prefix?.__copy__(), _1 : (@:checkr _re ?? throw "null pointer dereference")._prefixComplete };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function subexpIndex( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if (_name != (stdgo.Go.str())) {
            for (_i => _s in (@:checkr _re ?? throw "null pointer dereference")._subexpNames) {
                if (_name == (_s)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function subexpNames( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._subexpNames;
    }
    @:keep
    @:tdfield
    static public function numSubexp( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._numSubexp;
    }
    @:keep
    @:tdfield
    static public function _put( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        (@:checkr _m ?? throw "null pointer dereference")._re = null;
        (@:checkr _m ?? throw "null pointer dereference")._p = null;
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._inputs._clear();
        @:check2 stdgo._internal.regexp.Regexp__matchPool._matchPool[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)].put(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)));
    }
    @:keep
    @:tdfield
    static public function _get( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 stdgo._internal.regexp.Regexp__matchPool._matchPool[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)].get() : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>)) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _m = (stdgo.Go.setRef(({} : stdgo._internal.regexp.Regexp_T_machine.T_machine)) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>);
        };
        (@:checkr _m ?? throw "null pointer dereference")._re = _re;
        (@:checkr _m ?? throw "null pointer dereference")._p = (@:checkr _re ?? throw "null pointer dereference")._prog;
        if (((@:checkr _m ?? throw "null pointer dereference")._matchcap.capacity < (@:checkr _re ?? throw "null pointer dereference")._matchcap : Bool)) {
            (@:checkr _m ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            for (__0 => _t in (@:checkr _m ?? throw "null pointer dereference")._pool) {
                (@:checkr _t ?? throw "null pointer dereference")._cap = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._matchcap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
        };
        var _n = (stdgo._internal.regexp.Regexp__matchSize._matchSize[((@:checkr _re ?? throw "null pointer dereference")._mpool : stdgo.GoInt)] : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            _n = ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst.length);
        };
        if ((((@:checkr _m ?? throw "null pointer dereference")._q0._sparse.length) < _n : Bool)) {
            (@:checkr _m ?? throw "null pointer dereference")._q0 = (new stdgo._internal.regexp.Regexp_T_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_T_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>)) : stdgo._internal.regexp.Regexp_T_queue.T_queue);
            (@:checkr _m ?? throw "null pointer dereference")._q1 = (new stdgo._internal.regexp.Regexp_T_queue.T_queue((new stdgo.Slice<stdgo.GoUInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), (new stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_T_entry.T_entry)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_entry.T_entry>)) : stdgo._internal.regexp.Regexp_T_queue.T_queue);
        };
        return _m;
    }
    @:keep
    @:tdfield
    static public function longest( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Void {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        (@:checkr _re ?? throw "null pointer dereference")._longest = true;
    }
    @:keep
    @:tdfield
    static public function copy( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _re2 = ((_re : stdgo._internal.regexp.Regexp_Regexp.Regexp)?.__copy__() : stdgo._internal.regexp.Regexp_Regexp.Regexp);
        return (stdgo.Go.setRef(_re2) : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
    }
    @:keep
    @:tdfield
    static public function string( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._expr?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _doExecute( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        if (_dstCap == null) {
            _dstCap = (stdgo._internal.regexp.Regexp__arrayNoInts._arrayNoInts.__slice__(0, (0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw "null pointer dereference")._minInputLen : Bool) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        if (((@:checkr _re ?? throw "null pointer dereference")._onepass != null && (((@:checkr _re ?? throw "null pointer dereference")._onepass : Dynamic).__nil__ == null || !((@:checkr _re ?? throw "null pointer dereference")._onepass : Dynamic).__nil__))) {
            return @:check2r _re._doOnePass(_r, _b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        if (((_r == null) && (((_b.length) + (_s.length) : stdgo.GoInt) < (@:checkr _re ?? throw "null pointer dereference")._maxBitStateLen : Bool) : Bool)) {
            return @:check2r _re._backtrack(_b, _s?.__copy__(), _pos, _ncap, _dstCap);
        };
        var _m = @:check2r _re._get();
        var __tmp__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._inputs._init(_r, _b, _s?.__copy__()), _i:stdgo._internal.regexp.Regexp_T_input.T_input = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        @:check2r _m._init(_ncap);
        if (!@:check2r _m._match(_i, _pos)) {
            @:check2r _re._put(_m);
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        _dstCap = (_dstCap.__append__(...((@:checkr _m ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
        @:check2r _re._put(_m);
        return _dstCap;
    }
    @:keep
    @:tdfield
    static public function _doMatch( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        return @:check2r _re._doExecute(_r, _b, _s?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>)) != null;
    }
    @:keep
    @:tdfield
    static public function _doOnePass( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _ir:stdgo._internal.io.Io_RuneReader.RuneReader, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _pc_3706162:stdgo.GoInt = (0 : stdgo.GoInt);
        var _flag_3706067:stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag);
        var _width1_3705964:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r1_3705929:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3705890:stdgo._internal.regexp.Regexp_T_input.T_input = (null : stdgo._internal.regexp.Regexp_T_input.T_input);
        var _matched_3705818:Bool = false;
        var _inst_3706186:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
        var _width_3705957:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3705926:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3705840:stdgo.GoInt = (0 : stdgo.GoInt);
        var _m_3705683:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassMachine.T_onePassMachine>);
        var _startCond_3705592:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3705592 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    if (_startCond_3705592 == ((255 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3705649i32;
                    } else {
                        _gotoNext = 3705683i32;
                    };
                } else if (__value__ == (3705649i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3705683i32;
                } else if (__value__ == (3705683i32)) {
                    _m_3705683 = stdgo._internal.regexp.Regexp__newOnePassMachine._newOnePassMachine();
                    if (((@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap.capacity < _ncap : Bool)) {
                        _gotoNext = 3705735i32;
                    } else {
                        _gotoNext = 3705778i32;
                    };
                } else if (__value__ == (3705735i32)) {
                    (@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap = (new stdgo.Slice<stdgo.GoInt>((_ncap : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3705818i32;
                } else if (__value__ == (3705778i32)) {
                    _gotoNext = 3705778i32;
                    (@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap = ((@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap.__slice__(0, _ncap) : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3705818i32;
                } else if (__value__ == (3705818i32)) {
                    _matched_3705818 = false;
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3705885i32;
                    } else {
                        _gotoNext = 3705890i32;
                    };
                } else if (__value__ == (3705862i32)) {
                    (@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap[(_i_3705840 : stdgo.GoInt)] = (-1 : stdgo.GoInt);
                    _i_3705840++;
                    _gotoNext = 3705886i32;
                } else if (__value__ == (3705885i32)) {
                    _i_3705840 = 0i32;
                    _gotoNext = 3705886i32;
                } else if (__value__ == (3705886i32)) {
                    if (_i_3705840 < ((@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap.length)) {
                        _gotoNext = 3705862i32;
                    } else {
                        _gotoNext = 3705890i32;
                    };
                } else if (__value__ == (3705890i32)) {
                    {
                        var __tmp__ = @:check2 (@:checkr _m_3705683 ?? throw "null pointer dereference")._inputs._init(_ir, _ib, _is?.__copy__());
                        _i_3705890 = @:tmpset0 __tmp__._0;
                    };
                    {
                        final __tmp__0 = (-1 : stdgo.GoInt32);
                        final __tmp__1 = (-1 : stdgo.GoInt32);
                        _r_3705926 = __tmp__0;
                        _r1_3705929 = __tmp__1;
                    };
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _width_3705957 = __tmp__0;
                        _width1_3705964 = __tmp__1;
                    };
                    {
                        var __tmp__ = _i_3705890._step(_pos);
                        _r_3705926 = @:tmpset0 __tmp__._0;
                        _width_3705957 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_3705926 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3706022i32;
                    } else {
                        _gotoNext = 3706063i32;
                    };
                } else if (__value__ == (3706022i32)) {
                    {
                        var __tmp__ = _i_3705890._step((_pos + _width_3705957 : stdgo.GoInt));
                        _r1_3705929 = @:tmpset0 __tmp__._0;
                        _width1_3705964 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3706063i32;
                } else if (__value__ == (3706063i32)) {
                    if (_pos == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3706094i32;
                    } else {
                        _gotoNext = 3706132i32;
                    };
                } else if (__value__ == (3706094i32)) {
                    _flag_3706067 = stdgo._internal.regexp.Regexp__newLazyFlag._newLazyFlag((-1 : stdgo.GoInt32), _r_3705926);
                    _gotoNext = 3706162i32;
                } else if (__value__ == (3706132i32)) {
                    _gotoNext = 3706132i32;
                    _flag_3706067 = _i_3705890._context(_pos);
                    var __blank__ = 0i32;
                    _gotoNext = 3706162i32;
                } else if (__value__ == (3706162i32)) {
                    _pc_3706162 = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").start;
                    _inst_3706186 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_3706162 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
                    if ((((_pos == ((0 : stdgo.GoInt)) && _flag_3706067._match(((@:checkr _inst_3706186 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : Bool) && (((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool) : Bool) && _i_3705890._canCheckPrefix() : Bool)) {
                        _gotoNext = 3706369i32;
                    } else {
                        _gotoNext = 3706607i32;
                    };
                } else if (__value__ == (3706369i32)) {
                    if (!_i_3705890._hasPrefix(_re)) {
                        _gotoNext = 3706449i32;
                    } else {
                        _gotoNext = 3706472i32;
                    };
                } else if (__value__ == (3706449i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3706472i32)) {
                    _pos = (_pos + (((@:checkr _re ?? throw "null pointer dereference")._prefix.length)) : stdgo.GoInt);
                    {
                        var __tmp__ = _i_3705890._step(_pos);
                        _r_3705926 = @:tmpset0 __tmp__._0;
                        _width_3705957 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = _i_3705890._step((_pos + _width_3705957 : stdgo.GoInt));
                        _r1_3705929 = @:tmpset0 __tmp__._0;
                        _width1_3705964 = @:tmpset0 __tmp__._1;
                    };
                    _flag_3706067 = _i_3705890._context(_pos);
                    _pc_3706162 = ((@:checkr _re ?? throw "null pointer dereference")._prefixEnd : stdgo.GoInt);
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3706607i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                    if (true) {
                        _gotoNext = 3706611i32;
                    } else {
                        _gotoNext = 3707731i32;
                    };
                } else if (__value__ == (3706611i32)) {
                    _inst_3706186 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._onepass ?? throw "null pointer dereference").inst[(_pc_3706162 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
                    _pc_3706162 = ((@:checkr _inst_3706186 ?? throw "null pointer dereference").inst.out : stdgo.GoInt);
                    _gotoNext = 3706666i32;
                } else if (__value__ == (3706666i32)) {
                    {
                        final __value__ = (@:checkr _inst_3706186 ?? throw "null pointer dereference").inst.op;
                        if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3706717i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3706854i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3706926i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3706998i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707039i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707177i32;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707267i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707306i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707341i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3707450i32;
                        } else {
                            _gotoNext = 3706685i32;
                        };
                    };
                } else if (__value__ == (3706685i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3707569i32;
                } else if (__value__ == (3706717i32)) {
                    _matched_3705818 = true;
                    if ((((@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3706784i32;
                    } else {
                        _gotoNext = 3706840i32;
                    };
                } else if (__value__ == (3706784i32)) {
                    (@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    (@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3706840i32;
                } else if (__value__ == (3706840i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3706854i32)) {
                    if (!@:check2r _inst_3706186.matchRune(_r_3705926)) {
                        _gotoNext = 3706901i32;
                    } else {
                        _gotoNext = 3707569i32;
                    };
                } else if (__value__ == (3706901i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3706926i32)) {
                    if (_r_3705926 != ((@:checkr _inst_3706186 ?? throw "null pointer dereference").inst.rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3706973i32;
                    } else {
                        _gotoNext = 3707569i32;
                    };
                } else if (__value__ == (3706973i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3706998i32)) {
                    _gotoNext = 3707569i32;
                } else if (__value__ == (3707039i32)) {
                    if (_r_3705926 == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 3707085i32;
                    } else {
                        _gotoNext = 3707569i32;
                    };
                } else if (__value__ == (3707085i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3707177i32)) {
                    _pc_3706162 = (stdgo._internal.regexp.Regexp__onePassNext._onePassNext(_inst_3706186, _r_3705926) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3707267i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3707306i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3707341i32)) {
                    if (!_flag_3706067._match(((@:checkr _inst_3706186 ?? throw "null pointer dereference").inst.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3707413i32;
                    } else {
                        _gotoNext = 3707439i32;
                    };
                } else if (__value__ == (3707413i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3707439i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3707450i32)) {
                    if ((((@:checkr _inst_3706186 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt) < ((@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap.length) : Bool)) {
                        _gotoNext = 3707513i32;
                    } else {
                        _gotoNext = 3707554i32;
                    };
                } else if (__value__ == (3707513i32)) {
                    (@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap[((@:checkr _inst_3706186 ?? throw "null pointer dereference").inst.arg : stdgo.GoInt)] = _pos;
                    _gotoNext = 3707554i32;
                } else if (__value__ == (3707554i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3707569i32)) {
                    if (_width_3705957 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3707583i32;
                    } else {
                        _gotoNext = 3707600i32;
                    };
                } else if (__value__ == (3707583i32)) {
                    _gotoNext = 3707731i32;
                } else if (__value__ == (3707600i32)) {
                    _flag_3706067 = stdgo._internal.regexp.Regexp__newLazyFlag._newLazyFlag(_r_3705926, _r1_3705929);
                    _pos = (_pos + (_width_3705957) : stdgo.GoInt);
                    {
                        final __tmp__0 = _r1_3705929;
                        final __tmp__1 = _width1_3705964;
                        _r_3705926 = __tmp__0;
                        _width_3705957 = __tmp__1;
                    };
                    if (_r_3705926 != ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3707685i32;
                    } else {
                        _gotoNext = 3706607i32;
                    };
                } else if (__value__ == (3707685i32)) {
                    {
                        var __tmp__ = _i_3705890._step((_pos + _width_3705957 : stdgo.GoInt));
                        _r1_3705929 = @:tmpset0 __tmp__._0;
                        _width1_3705964 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3706607i32;
                } else if (__value__ == (3707731i32)) {
                    _gotoNext = 3707731i32;
                    if (!_matched_3705818) {
                        _gotoNext = 3707752i32;
                    } else {
                        _gotoNext = 3707796i32;
                    };
                } else if (__value__ == (3707752i32)) {
                    stdgo._internal.regexp.Regexp__freeOnePassMachine._freeOnePassMachine(_m_3705683);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3707796i32;
                } else if (__value__ == (3707796i32)) {
                    _dstCap = (_dstCap.__append__(...((@:checkr _m_3705683 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freeOnePassMachine._freeOnePassMachine(_m_3705683);
                    return _dstCap;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _backtrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _width_3656575:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_3655867:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3655864:stdgo._internal.regexp.Regexp_T_input.T_input = (null : stdgo._internal.regexp.Regexp_T_input.T_input);
        var _b_3655844:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>);
        var _startCond_3655637:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        var _advance_3656725:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startCond_3655637 = (@:checkr _re ?? throw "null pointer dereference")._cond;
                    if (_startCond_3655637 == ((255 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3655694i32;
                    } else {
                        _gotoNext = 3655727i32;
                    };
                } else if (__value__ == (3655694i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3655727i32;
                } else if (__value__ == (3655727i32)) {
                    if ((((_startCond_3655637 & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != (0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) && (_pos != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3655779i32;
                    } else {
                        _gotoNext = 3655844i32;
                    };
                } else if (__value__ == (3655779i32)) {
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3655844i32;
                } else if (__value__ == (3655844i32)) {
                    _b_3655844 = stdgo._internal.regexp.Regexp__newBitState._newBitState();
                    {
                        var __tmp__ = @:check2 (@:checkr _b_3655844 ?? throw "null pointer dereference")._inputs._init((null : stdgo._internal.io.Io_RuneReader.RuneReader), _ib, _is?.__copy__());
                        _i_3655864 = @:tmpset0 __tmp__._0;
                        _end_3655867 = @:tmpset0 __tmp__._1;
                    };
                    @:check2r _b_3655844._reset((@:checkr _re ?? throw "null pointer dereference")._prog, _end_3655867, _ncap);
                    if ((_startCond_3655637 & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3656033i32;
                    } else {
                        _gotoNext = 3656182i32;
                    };
                } else if (__value__ == (3656033i32)) {
                    if ((((@:checkr _b_3655844 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3656055i32;
                    } else {
                        _gotoNext = 3656081i32;
                    };
                } else if (__value__ == (3656055i32)) {
                    (@:checkr _b_3655844 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3656081i32;
                } else if (__value__ == (3656081i32)) {
                    if (!@:check2r _re._tryBacktrack(_b_3655844, _i_3655864, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3656135i32;
                    } else {
                        _gotoNext = 3657069i32;
                    };
                } else if (__value__ == (3656135i32)) {
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3655844);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3657069i32;
                } else if (__value__ == (3656182i32)) {
                    _gotoNext = 3656182i32;
                    _width_3656575 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3656589i32;
                } else if (__value__ == (3656589i32)) {
                    if (((_pos <= _end_3655867 : Bool) && (_width_3656575 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3656634i32;
                    } else {
                        _gotoNext = 3657036i32;
                    };
                } else if (__value__ == (3656634i32)) {
                    if ((((@:checkr _re ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3656661i32;
                    } else {
                        _gotoNext = 3656845i32;
                    };
                } else if (__value__ == (3656661i32)) {
                    _advance_3656725 = _i_3655864._index(_re, _pos);
                    if ((_advance_3656725 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3656772i32;
                    } else {
                        _gotoNext = 3656821i32;
                    };
                } else if (__value__ == (3656772i32)) {
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3655844);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3656821i32;
                } else if (__value__ == (3656821i32)) {
                    _pos = (_pos + (_advance_3656725) : stdgo.GoInt);
                    _gotoNext = 3656845i32;
                } else if (__value__ == (3656845i32)) {
                    if ((((@:checkr _b_3655844 ?? throw "null pointer dereference")._cap.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3656863i32;
                    } else {
                        _gotoNext = 3656892i32;
                    };
                } else if (__value__ == (3656863i32)) {
                    (@:checkr _b_3655844 ?? throw "null pointer dereference")._cap[(0 : stdgo.GoInt)] = _pos;
                    _gotoNext = 3656892i32;
                } else if (__value__ == (3656892i32)) {
                    if (@:check2r _re._tryBacktrack(_b_3655844, _i_3655864, ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").start : stdgo.GoUInt32), _pos)) {
                        _gotoNext = 3656945i32;
                    } else {
                        _gotoNext = 3657007i32;
                    };
                } else if (__value__ == (3656945i32)) {
                    _gotoNext = 3657069i32;
                } else if (__value__ == (3657007i32)) {
                    {
                        var __tmp__ = _i_3655864._step(_pos);
                        _width_3656575 = @:tmpset0 __tmp__._1;
                    };
                    _pos = (_pos + (_width_3656575) : stdgo.GoInt);
                    _gotoNext = 3656589i32;
                } else if (__value__ == (3657036i32)) {
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3655844);
                    return (null : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = 0i32;
                    _gotoNext = 3657069i32;
                } else if (__value__ == (3657069i32)) {
                    _gotoNext = 3657069i32;
                    _dstCap = (_dstCap.__append__(...((@:checkr _b_3655844 ?? throw "null pointer dereference")._matchcap : Array<stdgo.GoInt>)));
                    stdgo._internal.regexp.Regexp__freeBitState._freeBitState(_b_3655844);
                    return _dstCap;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _tryBacktrack( _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>, _i:stdgo._internal.regexp.Regexp_T_input.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool {
        @:recv var _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = _re;
        var _width_3653627:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3653624:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _width_3653475:stdgo.GoInt = (0 : stdgo.GoInt);
        var _arg_3651887:Bool = false;
        var _pc_3651843:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _flag_3654481:stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag = ((0 : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag);
        var _width_3653785:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3653472:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_3653945:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _pos_3651864:stdgo.GoInt = (0 : stdgo.GoInt);
        var _width_3653948:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3653782:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _inst_3652291:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        var _l_3651792:stdgo.GoInt = (0 : stdgo.GoInt);
        var _longest_3651716:Bool = false;
        var _old_3655033:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _longest_3651716 = (@:checkr _re ?? throw "null pointer dereference")._longest;
                    @:check2r _b._push(_re, _pc, _pos, false);
                    var __blank__ = 0i32;
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3651768i32)) {
                    if ((((@:checkr _b ?? throw "null pointer dereference")._jobs.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3651788i32;
                    } else {
                        _gotoNext = 3655404i32;
                    };
                } else if (__value__ == (3651788i32)) {
                    _l_3651792 = (((@:checkr _b ?? throw "null pointer dereference")._jobs.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _pc_3651843 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_3651792 : stdgo.GoInt)]._pc;
                    _pos_3651864 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_3651792 : stdgo.GoInt)]._pos;
                    _arg_3651887 = (@:checkr _b ?? throw "null pointer dereference")._jobs[(_l_3651792 : stdgo.GoInt)]._arg;
                    (@:checkr _b ?? throw "null pointer dereference")._jobs = ((@:checkr _b ?? throw "null pointer dereference")._jobs.__slice__(0, _l_3651792) : stdgo.Slice<stdgo._internal.regexp.Regexp_T_job.T_job>);
                    _gotoNext = 3652282i32;
                } else if (__value__ == (3652220i32)) {
                    if (!@:check2r _b._shouldVisit(_pc_3651843, _pos_3651864)) {
                        _gotoNext = 3652263i32;
                    } else {
                        _gotoNext = 3652282i32;
                    };
                } else if (__value__ == (3652263i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3652282i32)) {
                    _gotoNext = 3652282i32;
                    _inst_3652291 = (stdgo.Go.setRef((@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[(_pc_3651843 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
                    _gotoNext = 3652320i32;
                } else if (__value__ == (3652320i32)) {
                    {
                        final __value__ = (@:checkr _inst_3652291 ?? throw "null pointer dereference").op;
                        if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3652371i32;
                        } else if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3652427i32;
                        } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3652988i32;
                        } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3653447i32;
                        } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3653598i32;
                        } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3653749i32;
                        } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3653917i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3654067i32;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3654450i32;
                        } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3654609i32;
                        } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3654671i32;
                        } else {
                            _gotoNext = 3652339i32;
                        };
                    };
                } else if (__value__ == (3652339i32)) {
                    throw stdgo.Go.toInterface(("bad inst" : stdgo.GoString));
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3652371i32)) {
                    throw stdgo.Go.toInterface(("unexpected InstFail" : stdgo.GoString));
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3652427i32)) {
                    if (_arg_3651887) {
                        _gotoNext = 3652800i32;
                    } else {
                        _gotoNext = 3652908i32;
                    };
                } else if (__value__ == (3652800i32)) {
                    _arg_3651887 = false;
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").arg;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3652908i32)) {
                    _gotoNext = 3652908i32;
                    @:check2r _b._push(_re, _pc_3651843, _pos_3651864, true);
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").out;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3652988i32)) {
                    _gotoNext = 3653076i32;
                } else if (__value__ == (3653076i32)) {
                    {
                        final __value__ = (@:checkr (@:checkr _re ?? throw "null pointer dereference")._prog ?? throw "null pointer dereference").inst[((@:checkr _inst_3652291 ?? throw "null pointer dereference").out : stdgo.GoInt)].op;
                        if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3653114i32;
                        } else {
                            _gotoNext = 3653371i32;
                        };
                    };
                } else if (__value__ == (3653114i32)) {
                    @:check2r _b._push(_re, (@:checkr _inst_3652291 ?? throw "null pointer dereference").arg, _pos_3651864, false);
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").arg;
                    _pos_3651864 = (@:checkr _b ?? throw "null pointer dereference")._end;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3653371i32)) {
                    @:check2r _b._push(_re, (@:checkr _inst_3652291 ?? throw "null pointer dereference").out, (@:checkr _b ?? throw "null pointer dereference")._end, false);
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").out;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3653447i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3651864);
                        _r_3653472 = @:tmpset0 __tmp__._0;
                        _width_3653475 = @:tmpset0 __tmp__._1;
                    };
                    if (!@:check2r _inst_3652291.matchRune(_r_3653472)) {
                        _gotoNext = 3653521i32;
                    } else {
                        _gotoNext = 3653544i32;
                    };
                } else if (__value__ == (3653521i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3653544i32)) {
                    _pos_3651864 = (_pos_3651864 + (_width_3653475) : stdgo.GoInt);
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").out;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3653598i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3651864);
                        _r_3653624 = @:tmpset0 __tmp__._0;
                        _width_3653627 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_3653624 != ((@:checkr _inst_3652291 ?? throw "null pointer dereference").rune[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _gotoNext = 3653672i32;
                    } else {
                        _gotoNext = 3653695i32;
                    };
                } else if (__value__ == (3653672i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3653695i32)) {
                    _pos_3651864 = (_pos_3651864 + (_width_3653627) : stdgo.GoInt);
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").out;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3653749i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3651864);
                        _r_3653782 = @:tmpset0 __tmp__._0;
                        _width_3653785 = @:tmpset0 __tmp__._1;
                    };
                    if (((_r_3653782 == (10 : stdgo.GoInt32)) || (_r_3653782 == (-1 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3653840i32;
                    } else {
                        _gotoNext = 3653863i32;
                    };
                } else if (__value__ == (3653840i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3653863i32)) {
                    _pos_3651864 = (_pos_3651864 + (_width_3653785) : stdgo.GoInt);
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").out;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3653917i32)) {
                    {
                        var __tmp__ = _i._step(_pos_3651864);
                        _r_3653945 = @:tmpset0 __tmp__._0;
                        _width_3653948 = @:tmpset0 __tmp__._1;
                    };
                    if (_r_3653945 == ((-1 : stdgo.GoInt32))) {
                        _gotoNext = 3653990i32;
                    } else {
                        _gotoNext = 3654013i32;
                    };
                } else if (__value__ == (3653990i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3654013i32)) {
                    _pos_3651864 = (_pos_3651864 + (_width_3653948) : stdgo.GoInt);
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").out;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3654067i32)) {
                    if (_arg_3651887) {
                        _gotoNext = 3654102i32;
                    } else {
                        _gotoNext = 3654202i32;
                    };
                } else if (__value__ == (3654102i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_3652291 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3651864;
                    var __blank__ = 0i32;
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3654202i32)) {
                    _gotoNext = 3654202i32;
                    if (((@:checkr _inst_3652291 ?? throw "null pointer dereference").arg < ((@:checkr _b ?? throw "null pointer dereference")._cap.length : stdgo.GoUInt32) : Bool)) {
                        _gotoNext = 3654241i32;
                    } else {
                        _gotoNext = 3654406i32;
                    };
                } else if (__value__ == (3654241i32)) {
                    @:check2r _b._push(_re, _pc_3651843, (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_3652291 ?? throw "null pointer dereference").arg : stdgo.GoInt)], true);
                    (@:checkr _b ?? throw "null pointer dereference")._cap[((@:checkr _inst_3652291 ?? throw "null pointer dereference").arg : stdgo.GoInt)] = _pos_3651864;
                    _gotoNext = 3654406i32;
                } else if (__value__ == (3654406i32)) {
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").out;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3654450i32)) {
                    _flag_3654481 = _i._context(_pos_3651864);
                    if (!_flag_3654481._match(((@:checkr _inst_3652291 ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                        _gotoNext = 3654548i32;
                    } else {
                        _gotoNext = 3654571i32;
                    };
                } else if (__value__ == (3654548i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3654571i32)) {
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").out;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3654609i32)) {
                    _pc_3651843 = (@:checkr _inst_3652291 ?? throw "null pointer dereference").out;
                    _gotoNext = 3652220i32;
                } else if (__value__ == (3654671i32)) {
                    if (((@:checkr _b ?? throw "null pointer dereference")._cap.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3654817i32;
                    } else {
                        _gotoNext = 3654983i32;
                    };
                } else if (__value__ == (3654817i32)) {
                    return true;
                    _gotoNext = 3654983i32;
                } else if (__value__ == (3654983i32)) {
                    if ((((@:checkr _b ?? throw "null pointer dereference")._cap.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3655001i32;
                    } else {
                        _gotoNext = 3655030i32;
                    };
                } else if (__value__ == (3655001i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._cap[(1 : stdgo.GoInt)] = _pos_3651864;
                    _gotoNext = 3655030i32;
                } else if (__value__ == (3655030i32)) {
                    {
                        _old_3655033 = (@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)];
                        if (((_old_3655033 == (-1 : stdgo.GoInt)) || (((_longest_3651716 && (_pos_3651864 > (0 : stdgo.GoInt) : Bool) : Bool) && (_pos_3651864 > _old_3655033 : Bool) : Bool)) : Bool)) {
                            _gotoNext = 3655102i32;
                        } else {
                            _gotoNext = 3655185i32;
                        };
                    };
                } else if (__value__ == (3655102i32)) {
                    (@:checkr _b ?? throw "null pointer dereference")._matchcap.__copyTo__((@:checkr _b ?? throw "null pointer dereference")._cap);
                    _gotoNext = 3655185i32;
                } else if (__value__ == (3655185i32)) {
                    if (!_longest_3651716) {
                        _gotoNext = 3655197i32;
                    } else {
                        _gotoNext = 3655287i32;
                    };
                } else if (__value__ == (3655197i32)) {
                    return true;
                    _gotoNext = 3655287i32;
                } else if (__value__ == (3655287i32)) {
                    if (_pos_3651864 == ((@:checkr _b ?? throw "null pointer dereference")._end)) {
                        _gotoNext = 3655303i32;
                    } else {
                        _gotoNext = 3655386i32;
                    };
                } else if (__value__ == (3655303i32)) {
                    return true;
                    _gotoNext = 3655386i32;
                } else if (__value__ == (3655386i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3651768i32;
                } else if (__value__ == (3655404i32)) {
                    return ((_longest_3651716 && (((@:checkr _b ?? throw "null pointer dereference")._matchcap.length) > (1 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._matchcap[(1 : stdgo.GoInt)] >= (0 : stdgo.GoInt) : Bool) : Bool);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
