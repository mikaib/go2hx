package stdgo._internal.internal.xcoff;
@:keep @:allow(stdgo._internal.internal.xcoff.Xcoff.File_asInterface) class File_static_extension {
    @:keep
    static public function importedLibraries( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = _f;
        var _s = _f.sectionByType((4096u32 : stdgo.GoUInt32));
        if (_s == null || (_s : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _f._readImportIDs(_s), _all:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _all, _1 : _err };
    }
    @:keep
    static public function importedSymbols( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>):{ var _0 : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = _f;
        var _s = _f.sectionByType((4096u32 : stdgo.GoUInt32));
        if (_s == null || (_s : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : (null : stdgo.Error) };
        };
        {
            var __tmp__ = _s._sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : _err };
            };
        };
        var _stlen:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _stoff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _nsyms:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _symoff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            final __value__ = _f.fileHeader.targetMachine;
            if (__value__ == ((479 : stdgo.GoUInt16))) {
                var _lhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_LoaderHeader32.LoaderHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_LoaderHeader32.LoaderHeader32>);
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_s._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_lhdr)) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : _err };
                    };
                };
                _stlen = _lhdr.lstlen;
                _stoff = (_lhdr.lstoff : stdgo.GoUInt64);
                _nsyms = _lhdr.lnsyms;
                _symoff = (32i64 : stdgo.GoUInt64);
            } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                var _lhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_LoaderHeader64.LoaderHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_LoaderHeader64.LoaderHeader64>);
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_s._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_lhdr)) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : _err };
                    };
                };
                _stlen = _lhdr.lstlen;
                _stoff = _lhdr.lstoff;
                _nsyms = _lhdr.lnsyms;
                _symoff = _lhdr.lsymoff;
            };
        };
        {
            var __tmp__ = _s._sr.seek((_stoff : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : _err };
            };
        };
        var _st = (new stdgo.Slice<stdgo.GoUInt8>((_stlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(stdgo.Go.asInterface(_s._sr), _st), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : _err };
            };
        };
        var __tmp__ = _f._readImportIDs(_s), _libs:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : _err };
        };
        {
            var __tmp__ = _s._sr.seek((_symoff : stdgo.GoInt64), (0 : stdgo.GoInt)), __3:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : _err };
            };
        };
        var _all = (new stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol)]) : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_nsyms : stdgo.GoInt) : Bool), _i++, {
                var _name:stdgo.GoString = ("" : stdgo.GoString);
                var _ifile:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
                var _ok:Bool = false;
                {
                    final __value__ = _f.fileHeader.targetMachine;
                    if (__value__ == ((479 : stdgo.GoUInt16))) {
                        var _ldsym = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol32.LoaderSymbol32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol32.LoaderSymbol32>);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_s._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_ldsym)) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : _err };
                            };
                        };
                        if ((_ldsym.lsmtype & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                            continue;
                        };
                        var _zeroes = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_ldsym.lname.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                        if (_zeroes != ((0u32 : stdgo.GoUInt32))) {
                            _name = stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_ldsym.lname.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                        } else {
                            var _offset = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_ldsym.lname.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                            {
                                var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getString._getString(_st, _offset);
                                _name = __tmp__._0?.__copy__();
                                _ok = __tmp__._1;
                            };
                            if (!_ok) {
                                continue;
                            };
                        };
                        _ifile = _ldsym.lifile;
                    } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                        var _ldsym = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol64.LoaderSymbol64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_LoaderSymbol64.LoaderSymbol64>);
                        {
                            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_s._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_ldsym)) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : (null : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>), _1 : _err };
                            };
                        };
                        if ((_ldsym.lsmtype & (64 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                            continue;
                        };
                        {
                            var __tmp__ = stdgo._internal.internal.xcoff.Xcoff__getString._getString(_st, _ldsym.loffset);
                            _name = __tmp__._0?.__copy__();
                            _ok = __tmp__._1;
                        };
                        if (!_ok) {
                            continue;
                        };
                        _ifile = _ldsym.lifile;
                    };
                };
                var _sym:stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol = ({} : stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol);
                _sym.name = _name?.__copy__();
                if (((_ifile >= (1u32 : stdgo.GoUInt32) : Bool) && ((_ifile : stdgo.GoInt) <= (_libs.length) : Bool) : Bool)) {
                    _sym.library = _libs[((_ifile - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]?.__copy__();
                };
                _all = (_all.__append__(_sym?.__copy__()));
            });
        };
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readImportIDs( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>, _s:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = _f;
        {
            var __tmp__ = _s._sr.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        var _istlen:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nimpid:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _impoff:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            final __value__ = _f.fileHeader.targetMachine;
            if (__value__ == ((479 : stdgo.GoUInt16))) {
                var _lhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_LoaderHeader32.LoaderHeader32)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_LoaderHeader32.LoaderHeader32>);
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_s._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_lhdr)) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
                    };
                };
                _istlen = _lhdr.listlen;
                _nimpid = _lhdr.lnimpid;
                _impoff = (_lhdr.limpoff : stdgo.GoUInt64);
            } else if (__value__ == ((503 : stdgo.GoUInt16))) {
                var _lhdr = (stdgo.Go.setRef(({} : stdgo._internal.internal.xcoff.Xcoff_LoaderHeader64.LoaderHeader64)) : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_LoaderHeader64.LoaderHeader64>);
                {
                    var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_s._sr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_lhdr)) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
                    };
                };
                _istlen = _lhdr.listlen;
                _nimpid = _lhdr.lnimpid;
                _impoff = _lhdr.limpoff;
            };
        };
        {
            var __tmp__ = _s._sr.seek((_impoff : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        var _table = (new stdgo.Slice<stdgo.GoUInt8>((_istlen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(stdgo.Go.asInterface(_s._sr), _table), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
            };
        };
        var _offset = (0 : stdgo.GoInt);
        var _libpath = (stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_table.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
        _f.libraryPaths = stdgo._internal.strings.Strings_split.split(_libpath?.__copy__(), (":" : stdgo.GoString));
        _offset = (_offset + (((_libpath.length) + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _all = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_nimpid : stdgo.GoInt) : Bool), _i++, {
                var _impidpath = (stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_table.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
                _offset = (_offset + (((_impidpath.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                var _impidbase = (stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_table.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
                _offset = (_offset + (((_impidbase.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                var _impidmem = (stdgo._internal.internal.xcoff.Xcoff__cstring._cstring((_table.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
                _offset = (_offset + (((_impidmem.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                var _path:stdgo.GoString = ("" : stdgo.GoString);
                if (((_impidpath.length) > (0 : stdgo.GoInt) : Bool)) {
                    _path = ((((_impidpath + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _impidbase?.__copy__() : stdgo.GoString) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _impidmem?.__copy__() : stdgo.GoString)?.__copy__();
                } else {
                    _path = ((_impidbase + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _impidmem?.__copy__() : stdgo.GoString)?.__copy__();
                };
                _all = (_all.__append__(_path?.__copy__()));
            });
        };
        return { _0 : _all, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function dwarf( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = _f;
        var _subtypes:stdgo.GoArray<stdgo.GoUInt32> = (new stdgo.GoArray<stdgo.GoUInt32>(5, 5, ...[(393216u32 : stdgo.GoUInt32), (65536u32 : stdgo.GoUInt32), (131072u32 : stdgo.GoUInt32), (524288u32 : stdgo.GoUInt32), (458752u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>);
        var _dat:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>(5, 5, ...[for (i in 0 ... 5) (null : stdgo.Slice<stdgo.GoUInt8>)]);
        for (_i => _subtype in _subtypes) {
            var _s = _f.sectionByType(((16u32 : stdgo.GoUInt32) | _subtype : stdgo.GoUInt32));
            if (_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) {
                var __tmp__ = _s.data(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) && ((_b.length : stdgo.GoUInt64) < _s.sectionHeader.size : Bool) : Bool)) {
                    return { _0 : null, _1 : _err };
                };
                _dat[(_i : stdgo.GoInt)] = _b;
            };
        };
        var __0 = _dat[(0 : stdgo.GoInt)], __1 = _dat[(1 : stdgo.GoInt)], __2 = _dat[(2 : stdgo.GoInt)], __3 = _dat[(3 : stdgo.GoInt)], __4 = _dat[(4 : stdgo.GoInt)];
var _str = __4, _ranges = __3, _line = __2, _info = __1, _abbrev = __0;
        return stdgo._internal.debug.dwarf.Dwarf_new_.new_(_abbrev, (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), _info, _line, (null : stdgo.Slice<stdgo.GoUInt8>), _ranges, _str);
    }
    @:keep
    static public function csect( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>, _name:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = _f;
        for (__0 => _sym in _f.symbols) {
            if (((_sym.name == _name) && (_sym.auxCSect.symbolType == (1 : stdgo.GoInt)) : Bool)) {
                {
                    var _i = (_sym.sectionNumber - (1 : stdgo.GoInt) : stdgo.GoInt);
                    if ((((0 : stdgo.GoInt) <= _i : Bool) && (_i < (_f.sections.length) : Bool) : Bool)) {
                        var _s = _f.sections[(_i : stdgo.GoInt)];
                        if (((_sym.value + (_sym.auxCSect.length_ : stdgo.GoUInt64) : stdgo.GoUInt64) <= _s.sectionHeader.size : Bool)) {
                            var _dat = (new stdgo.Slice<stdgo.GoUInt8>((_sym.auxCSect.length_ : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            var __tmp__ = _s._sr.readAt(_dat, (_sym.value : stdgo.GoInt64)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return (null : stdgo.Slice<stdgo.GoUInt8>);
                            };
                            return _dat;
                        };
                    };
                };
                break;
            };
        };
        return (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function sectionByType( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>, _typ:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = _f;
        for (__0 => _s in _f.sections) {
            if (_s.sectionHeader.type == (_typ)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    static public function section( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = _f;
        for (__0 => _s in _f.sections) {
            if (((_s.sectionHeader.name == _name) || ((((_name.length) > (8 : stdgo.GoInt) : Bool) && (_s.sectionHeader.name == (_name.__slice__(0, (8 : stdgo.GoInt)) : stdgo.GoString)) : Bool)) : Bool)) {
                return _s;
            };
        };
        return null;
    }
    @:keep
    static public function close( _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_File.File> = _f;
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_f._closer != null) {
            _err = _f._closer.close();
            _f._closer = (null : stdgo._internal.io.Io_Closer.Closer);
        };
        return _err;
    }
}
