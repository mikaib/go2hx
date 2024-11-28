package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.LineTable_asInterface) class LineTable_static_extension {
    @:keep
    static public function _go12MapFiles( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>, _obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                    };
                    a();
                }));
            };
            _t._initFileMap();
            for (_file => _ in _t._fileMap) {
                _m[_file] = _obj;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _initFileMap( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._mu.lock();
            __deferstack__.unshift(() -> _t._mu.unlock());
            if (_t._fileMap != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _m = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoUInt32>();
                x.__defaultValue__ = () -> (0 : stdgo.GoUInt32);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>);
            if (_t._version == ((2 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))) {
                {
                    var _i = ((1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    while ((_i < _t._nfiletab : Bool)) {
                        var _s = (_t._string(_t._binary.uint32((_t._filetab.__slice__(((4u32 : stdgo.GoUInt32) * _i : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>))).__copy__() : stdgo.GoString);
_m[_s] = _i;
                        _i++;
                    };
                };
            } else {
                var _pos:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
                {
                    var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    while ((_i < _t._nfiletab : Bool)) {
                        var _s = (_t._stringFrom(_t._filetab, _pos).__copy__() : stdgo.GoString);
_m[_s] = _pos;
_pos = (_pos + ((((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                        _i++;
                    };
                };
            };
            _t._fileMap = _m;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _go12LineToPC( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _pc = (0 : stdgo.GoUInt64);
        try {
            __deferstack__.unshift(() -> ({
                var a = function():Void {
                    if ((true && (({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    }) != null) : Bool)) {
                        _pc = (0i64 : stdgo.GoUInt64);
                    };
                };
                a();
            }));
            _t._initFileMap();
            var __tmp__ = (_t._fileMap != null && _t._fileMap.exists(_file?.__copy__()) ? { _0 : _t._fileMap[_file?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt32), _1 : false }), _filenum:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                {
                    final __ret__:stdgo.GoUInt64 = _pc = (0i64 : stdgo.GoUInt64);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _cutab:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                while ((_i < _t._nfunctab : Bool)) {
                    var _f = (_t._funcData(_i).__copy__() : stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData);
var _entry = (_f._entryPC() : stdgo.GoUInt64);
var _filetab = (_f._pcfile() : stdgo.GoUInt32);
var _linetab = (_f._pcln() : stdgo.GoUInt32);
if (((_t._version == ((3 : stdgo._internal.debug.gosym.Gosym_T_version.T_version)) || _t._version == ((4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version)) : Bool) || (_t._version == (5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version)) : Bool)) {
                        if (_f._cuOffset() == ((-1u32 : stdgo.GoUInt32))) {
                            {
                                _i++;
                                continue;
                            };
                        };
                        _cutab = (_t._cutab.__slice__((_f._cuOffset() * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
var _pc = (_t._findFileLine(_entry, _filetab, _linetab, (_filenum : stdgo.GoInt32), (_line : stdgo.GoInt32), _cutab) : stdgo.GoUInt64);
if (_pc != ((0i64 : stdgo.GoUInt64))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _pc;
                        };
                    };
                    _i++;
                };
            };
            {
                final __ret__:stdgo.GoUInt64 = _pc = (0i64 : stdgo.GoUInt64);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _pc;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _pc;
        };
    }
    @:keep
    static public function _go12PCToFile( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _pc:stdgo.GoUInt64):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _file = ("" : stdgo.GoString);
        try {
            __deferstack__.unshift(() -> ({
                var a = function():Void {
                    if ((true && (({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    }) != null) : Bool)) {
                        _file = stdgo.Go.str()?.__copy__();
                    };
                };
                a();
            }));
            var _f = (_t._findFunc(_pc)?.__copy__() : stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData);
            if (_f.isZero()) {
                {
                    final __ret__:stdgo.GoString = _file = stdgo.Go.str()?.__copy__();
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _entry = (_f._entryPC() : stdgo.GoUInt64);
            var _filetab = (_f._pcfile() : stdgo.GoUInt32);
            var _fno = (_t._pcvalue(_filetab, _entry, _pc) : stdgo.GoInt32);
            if (_t._version == ((2 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))) {
                if ((_fno <= (0 : stdgo.GoInt32) : Bool)) {
                    {
                        final __ret__:stdgo.GoString = _file = stdgo.Go.str()?.__copy__();
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                {
                    final __ret__:stdgo.GoString = _file = _t._string(_t._binary.uint32((_t._filetab.__slice__(((4 : stdgo.GoInt32) * _fno : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if ((_fno < (0 : stdgo.GoInt32) : Bool)) {
                {
                    final __ret__:stdgo.GoString = _file = stdgo.Go.str()?.__copy__();
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _cuoff = (_f._cuOffset() : stdgo.GoUInt32);
            {
                var _fnoff = (_t._binary.uint32((_t._cutab.__slice__((((_cuoff + (_fno : stdgo.GoUInt32) : stdgo.GoUInt32)) * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                if (_fnoff != ((-1u32 : stdgo.GoUInt32))) {
                    {
                        final __ret__:stdgo.GoString = _file = _t._stringFrom(_t._filetab, _fnoff)?.__copy__();
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:stdgo.GoString = _file = stdgo.Go.str()?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _file;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _file;
        };
    }
    @:keep
    static public function _go12PCToLine( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _pc:stdgo.GoUInt64):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        var _line = (0 : stdgo.GoInt);
        try {
            __deferstack__.unshift(() -> ({
                var a = function():Void {
                    if ((true && (({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    }) != null) : Bool)) {
                        _line = (-1 : stdgo.GoInt);
                    };
                };
                a();
            }));
            var _f = (_t._findFunc(_pc)?.__copy__() : stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData);
            if (_f.isZero()) {
                {
                    final __ret__:stdgo.GoInt = _line = (-1 : stdgo.GoInt);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _entry = (_f._entryPC() : stdgo.GoUInt64);
            var _linetab = (_f._pcln() : stdgo.GoUInt32);
            {
                final __ret__:stdgo.GoInt = _line = (_t._pcvalue(_linetab, _entry, _pc) : stdgo.GoInt);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _line;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _line;
        };
    }
    @:keep
    static public function _findFileLine( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _entry:stdgo.GoUInt64, _filetab:stdgo.GoUInt32, _linetab:stdgo.GoUInt32, _filenum:stdgo.GoInt32, _line:stdgo.GoInt32, _cutab:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        if (((_filetab == (0u32 : stdgo.GoUInt32)) || (_linetab == (0u32 : stdgo.GoUInt32)) : Bool)) {
            return (0i64 : stdgo.GoUInt64);
        };
        var _fp = (_t._pctab.__slice__(_filetab) : stdgo.Slice<stdgo.GoUInt8>);
        var _fl = (_t._pctab.__slice__(_linetab) : stdgo.Slice<stdgo.GoUInt8>);
        var _fileVal = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        var _filePC = (_entry : stdgo.GoUInt64);
        var _lineVal = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        var _linePC = (_entry : stdgo.GoUInt64);
        var _fileStartPC = (_filePC : stdgo.GoUInt64);
        while (_t._step((stdgo.Go.setRef(_fp) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), stdgo.Go.pointer(_filePC), stdgo.Go.pointer(_fileVal), _filePC == (_entry))) {
            var _fileIndex = (_fileVal : stdgo.GoInt32);
            if (((_t._version == ((3 : stdgo._internal.debug.gosym.Gosym_T_version.T_version)) || _t._version == ((4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version)) : Bool) || (_t._version == (5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version)) : Bool)) {
                _fileIndex = (_t._binary.uint32((_cutab.__slice__((_fileVal * (4 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
            };
            if (((_fileIndex == _filenum) && (_fileStartPC < _filePC : Bool) : Bool)) {
                var _lineStartPC = (_linePC : stdgo.GoUInt64);
                while (((_linePC < _filePC : Bool) && _t._step((stdgo.Go.setRef(_fl) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), stdgo.Go.pointer(_linePC), stdgo.Go.pointer(_lineVal), _linePC == (_entry)) : Bool)) {
                    if (_lineVal == (_line)) {
                        if ((_fileStartPC <= _lineStartPC : Bool)) {
                            return _lineStartPC;
                        };
                        if ((_fileStartPC < _linePC : Bool)) {
                            return _fileStartPC;
                        };
                    };
                    _lineStartPC = _linePC;
                };
            };
            _fileStartPC = _filePC;
        };
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    static public function _pcvalue( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _off:stdgo.GoUInt32, _entry:stdgo.GoUInt64, _targetpc:stdgo.GoUInt64):stdgo.GoInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var _p = (_t._pctab.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>);
        var _val = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        var _pc = (_entry : stdgo.GoUInt64);
        while (_t._step((stdgo.Go.setRef(_p) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), stdgo.Go.pointer(_pc), stdgo.Go.pointer(_val), _pc == (_entry))) {
            if ((_targetpc < _pc : Bool)) {
                return _val;
            };
        };
        return (-1 : stdgo.GoInt32);
    }
    @:keep
    static public function _step( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _pc:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.Pointer<stdgo.GoInt32>, _first:Bool):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var _uvdelta = (_t._readvarint(_p) : stdgo.GoUInt32);
        if (((_uvdelta == (0u32 : stdgo.GoUInt32)) && !_first : Bool)) {
            return false;
        };
        if ((_uvdelta & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _uvdelta = (-1 ^ (_uvdelta >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32));
        } else {
            _uvdelta = (_uvdelta >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        };
        var _vdelta = (_uvdelta : stdgo.GoInt32);
        var _pcdelta = (_t._readvarint(_p) * _t._quantum : stdgo.GoUInt32);
        _pc.value = (_pc.value + ((_pcdelta : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _val.value = (_val.value + (_vdelta) : stdgo.GoInt32);
        return true;
    }
    @:keep
    static public function _funcData( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _i:stdgo.GoUInt32):stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var _data = (_t._funcdata.__slice__(_t._funcTab()._funcOff((_i : stdgo.GoInt))) : stdgo.Slice<stdgo.GoUInt8>);
        return ({ _t : _t, _data : _data } : stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData);
    }
    @:keep
    static public function _funcTab( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>):stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        return ({ lineTable : _t, _sz : _t._functabFieldSize() } : stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab);
    }
    @:keep
    static public function _functabFieldSize( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        if ((_t._version >= (4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version) : Bool)) {
            return (4 : stdgo.GoInt);
        };
        return (_t._ptrsize : stdgo.GoInt);
    }
    @:keep
    static public function _string( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _off:stdgo.GoUInt32):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        return _t._stringFrom(_t._funcdata, _off)?.__copy__();
    }
    @:keep
    static public function _stringFrom( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _arr:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoUInt32):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        {
            var __tmp__ = (_t._strings != null && _t._strings.exists(_off) ? { _0 : _t._strings[_off], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _s?.__copy__();
            };
        };
        var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte((_arr.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _s = (((_arr.__slice__(_off, (_off + (_i : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _t._strings[_off] = _s?.__copy__();
        return _s?.__copy__();
    }
    @:keep
    static public function _funcName( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _off:stdgo.GoUInt32):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        {
            var __tmp__ = (_t._funcNames != null && _t._funcNames.exists(_off) ? { _0 : _t._funcNames[_off], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _s?.__copy__();
            };
        };
        var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte((_t._funcnametab.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _s = (((_t._funcnametab.__slice__(_off, (_off + (_i : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _t._funcNames[_off] = _s?.__copy__();
        return _s?.__copy__();
    }
    @:keep
    static public function _readvarint( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _pp:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _shift = __1, _v = __0;
        var _p = (_pp : stdgo.Slice<stdgo.GoUInt8>);
        {
            _shift = (0u32 : stdgo.GoUInt32);
            while (true) {
                var _b = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
_p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
_v = (_v | (((((_b : stdgo.GoUInt32) & (127u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) << _shift : stdgo.GoUInt32)) : stdgo.GoUInt32);
if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    break;
                };
                _shift = (_shift + ((7u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
        };
        (_pp : stdgo.Slice<stdgo.GoUInt8>).__setData__(_p);
        return _v;
    }
    @:keep
    static public function _findFunc( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _pc:stdgo.GoUInt64):stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var _ft = (_t._funcTab()?.__copy__() : stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab);
        if (((_pc < _ft._pc((0 : stdgo.GoInt)) : Bool) || (_pc >= _ft._pc(_ft.count()) : Bool) : Bool)) {
            return (new stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData() : stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData);
        };
        var _idx = (stdgo._internal.sort.Sort_search.search((_t._nfunctab : stdgo.GoInt), function(_i:stdgo.GoInt):Bool {
            return (_ft._pc(_i) > _pc : Bool);
        }) : stdgo.GoInt);
        _idx--;
        return _t._funcData((_idx : stdgo.GoUInt32))?.__copy__();
    }
    @:keep
    static public function _go12Funcs( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>):stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                    };
                    a();
                }));
            };
            var _ft = (_t._funcTab()?.__copy__() : stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab);
            var _funcs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>((_ft.count() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_ft.count() : stdgo.GoInt).toBasic() > 0 ? (_ft.count() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Func.Func)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
            var _syms = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>((_funcs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_funcs.length : stdgo.GoInt).toBasic() > 0 ? (_funcs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Sym.Sym)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
            for (_i => _ in _funcs) {
                var _f = (stdgo.Go.setRef(_funcs[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                _f.entry = _ft._pc(_i);
                _f.end = _ft._pc((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                var _info = (_t._funcData((_i : stdgo.GoUInt32))?.__copy__() : stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData);
                _f.lineTable = _t;
                _f.frameSize = (_info._deferreturn() : stdgo.GoInt);
                _syms[(_i : stdgo.GoInt)] = ({ value : _f.entry, type : (84 : stdgo.GoUInt8), name : _t._funcName(_info._nameOff())?.__copy__(), goType : (0i64 : stdgo.GoUInt64), func : _f, _goVersion : _t._version } : stdgo._internal.debug.gosym.Gosym_Sym.Sym);
                _f.sym = (stdgo.Go.setRef(_syms[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _funcs;
            };
            {
                final __ret__:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func> = (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _parsePclnTab( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t._mu.lock();
            __deferstack__.unshift(() -> _t._mu.unlock());
            if (_t._version != ((0 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _t._version = (1 : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
            if (true) {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                    };
                    a();
                }));
            };
            if (((((((_t.data.length) < (16 : stdgo.GoInt) : Bool) || _t.data[(4 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8)) : Bool) || _t.data[(5 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8)) : Bool) || (((_t.data[(6 : stdgo.GoInt)] != ((1 : stdgo.GoUInt8)) && _t.data[(6 : stdgo.GoInt)] != ((2 : stdgo.GoUInt8)) : Bool) && (_t.data[(6 : stdgo.GoInt)] != (4 : stdgo.GoUInt8)) : Bool)) : Bool) || (((_t.data[(7 : stdgo.GoInt)] != (4 : stdgo.GoUInt8)) && (_t.data[(7 : stdgo.GoInt)] != (8 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _possibleVersion:stdgo._internal.debug.gosym.Gosym_T_version.T_version = ((0 : stdgo.GoInt) : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
            var _leMagic = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32(_t.data) : stdgo.GoUInt32);
            var _beMagic = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32(_t.data) : stdgo.GoUInt32);
            if (_leMagic == ((-5u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian);
                    final __tmp__1 = (2 : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
                    _t._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_beMagic == ((-5u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian);
                    final __tmp__1 = (2 : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
                    _t._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_leMagic == ((-6u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian);
                    final __tmp__1 = (3 : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
                    _t._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_beMagic == ((-6u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian);
                    final __tmp__1 = (3 : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
                    _t._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_leMagic == ((-16u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian);
                    final __tmp__1 = (4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
                    _t._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_beMagic == ((-16u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian);
                    final __tmp__1 = (4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
                    _t._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_leMagic == ((-15u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian);
                    final __tmp__1 = (5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
                    _t._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else if (_beMagic == ((-15u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian);
                    final __tmp__1 = (5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version);
                    _t._binary = __tmp__0;
                    _possibleVersion = __tmp__1;
                };
            } else {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _t._version = _possibleVersion;
            _t._quantum = (_t.data[(6 : stdgo.GoInt)] : stdgo.GoUInt32);
            _t._ptrsize = (_t.data[(7 : stdgo.GoInt)] : stdgo.GoUInt32);
            var _offset = (function(_word:stdgo.GoUInt32):stdgo.GoUInt64 {
                return _t._uintptr((_t.data.__slice__(((8u32 : stdgo.GoUInt32) + (_word * _t._ptrsize : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>));
            } : stdgo.GoUInt32 -> stdgo.GoUInt64);
            var _data = function(_word:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
                return (_t.data.__slice__(_offset(_word)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            {
                final __value__ = _possibleVersion;
                if (__value__ == ((4 : stdgo._internal.debug.gosym.Gosym_T_version.T_version)) || __value__ == ((5 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))) {
                    _t._nfunctab = (_offset((0u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    _t._nfiletab = (_offset((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    _t._textStart = _t.pc;
                    _t._funcnametab = _data((3u32 : stdgo.GoUInt32));
                    _t._cutab = _data((4u32 : stdgo.GoUInt32));
                    _t._filetab = _data((5u32 : stdgo.GoUInt32));
                    _t._pctab = _data((6u32 : stdgo.GoUInt32));
                    _t._funcdata = _data((7u32 : stdgo.GoUInt32));
                    _t._functab = _data((7u32 : stdgo.GoUInt32));
                    var _functabsize = (((((_t._nfunctab : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) * _t._functabFieldSize() : stdgo.GoInt);
                    _t._functab = (_t._functab.__slice__(0, _functabsize) : stdgo.Slice<stdgo.GoUInt8>);
                } else if (__value__ == ((3 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))) {
                    _t._nfunctab = (_offset((0u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    _t._nfiletab = (_offset((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    _t._funcnametab = _data((2u32 : stdgo.GoUInt32));
                    _t._cutab = _data((3u32 : stdgo.GoUInt32));
                    _t._filetab = _data((4u32 : stdgo.GoUInt32));
                    _t._pctab = _data((5u32 : stdgo.GoUInt32));
                    _t._funcdata = _data((6u32 : stdgo.GoUInt32));
                    _t._functab = _data((6u32 : stdgo.GoUInt32));
                    var _functabsize = (((((_t._nfunctab : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) * _t._functabFieldSize() : stdgo.GoInt);
                    _t._functab = (_t._functab.__slice__(0, _functabsize) : stdgo.Slice<stdgo.GoUInt8>);
                } else if (__value__ == ((2 : stdgo._internal.debug.gosym.Gosym_T_version.T_version))) {
                    _t._nfunctab = (_t._uintptr((_t.data.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _t._funcdata = _t.data;
                    _t._funcnametab = _t.data;
                    _t._functab = (_t.data.__slice__(((8u32 : stdgo.GoUInt32) + _t._ptrsize : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
                    _t._pctab = _t.data;
                    var _functabsize = (((((_t._nfunctab : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) * _t._functabFieldSize() : stdgo.GoInt);
                    var _fileoff = (_t._binary.uint32((_t._functab.__slice__(_functabsize) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    _t._functab = (_t._functab.__slice__(0, _functabsize) : stdgo.Slice<stdgo.GoUInt8>);
                    _t._filetab = (_t.data.__slice__(_fileoff) : stdgo.Slice<stdgo.GoUInt8>);
                    _t._nfiletab = _t._binary.uint32(_t._filetab);
                    _t._filetab = (_t._filetab.__slice__(0, (_t._nfiletab * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _uintptr( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        if (_t._ptrsize == ((4u32 : stdgo.GoUInt32))) {
            return (_t._binary.uint32(_b) : stdgo.GoUInt64);
        };
        return _t._binary.uint64(_b);
    }
    @:keep
    static public function _isGo12( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        _t._parsePclnTab();
        return (_t._version >= (2 : stdgo._internal.debug.gosym.Gosym_T_version.T_version) : Bool);
    }
    @:keep
    static public function lineToPC( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _line:stdgo.GoInt, _maxpc:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        if (_t._isGo12()) {
            return (0i64 : stdgo.GoUInt64);
        };
        var __tmp__ = _t._parse(_maxpc, _line), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _pc:stdgo.GoUInt64 = __tmp__._1, _line1:stdgo.GoInt = __tmp__._2;
        if (_line1 != (_line)) {
            return (0i64 : stdgo.GoUInt64);
        };
        return (_pc - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    static public function pctoLine( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _pc:stdgo.GoUInt64):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        if (_t._isGo12()) {
            return _t._go12PCToLine(_pc);
        };
        var __tmp__ = _t._parse(_pc, (-1 : stdgo.GoInt)), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.GoUInt64 = __tmp__._1, _line:stdgo.GoInt = __tmp__._2;
        return _line;
    }
    @:keep
    static public function _slice( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _pc:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var __tmp__ = _t._parse(_pc, (-1 : stdgo.GoInt)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _pc:stdgo.GoUInt64 = __tmp__._1, _line:stdgo.GoInt = __tmp__._2;
        return (stdgo.Go.setRef(({ data : _data, pc : _pc, line : _line } : stdgo._internal.debug.gosym.Gosym_LineTable.LineTable)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
    }
    @:keep
    static public function _parse( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>, _targetPC:stdgo.GoUInt64, _targetLine:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> = _t;
        var _b = (null : stdgo.Slice<stdgo.GoUInt8>), _pc = (0 : stdgo.GoUInt64), _line = (0 : stdgo.GoInt);
        {
            final __tmp__0 = _t.data;
            final __tmp__1 = _t.pc;
            final __tmp__2 = _t.line;
            _b = __tmp__0;
            _pc = __tmp__1;
            _line = __tmp__2;
        };
        while ((((_pc <= _targetPC : Bool) && _line != (_targetLine) : Bool) && ((_b.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _code = (_b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            _b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (_code == ((0 : stdgo.GoUInt8))) {
                        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
                            _b = (_b.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            break;
                        };
                        var _val = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32(_b) : stdgo.GoUInt32);
                        _b = (_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _line = (_line + ((_val : stdgo.GoInt)) : stdgo.GoInt);
                        break;
                    } else if ((_code <= (64 : stdgo.GoUInt8) : Bool)) {
                        _line = (_line + ((_code : stdgo.GoInt)) : stdgo.GoInt);
                        break;
                    } else if ((_code <= (128 : stdgo.GoUInt8) : Bool)) {
                        _line = (_line - (((_code - (64 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)) : stdgo.GoInt);
                        break;
                    } else {
                        _pc = (_pc + (((1i64 : stdgo.GoUInt64) * ((_code - (128 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        {
                            __continue__ = true;
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
            _pc = (_pc + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } = { _0 : _b, _1 : _pc, _2 : _line };
            _b = __tmp__._0;
            _pc = __tmp__._1;
            _line = __tmp__._2;
            __tmp__;
        };
    }
}
