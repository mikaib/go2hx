package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _j_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_4:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3866732_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_6:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var searchBreak = false;
        var _last_3:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _h_0:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_0 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866816i32;
                    } else {
                        _gotoNext = 3866820i32;
                    };
                } else if (__value__ == (3866742i32)) {
                    _x_2 = _stk[(_i_3866732_1 : stdgo.GoInt)];
                    _h_0 = ((_h_0 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_0 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_0 = (_h_0 + (((new stdgo.GoUIntptr(_x_2) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3866732_1++;
                    _gotoNext = 3866817i32;
                } else if (__value__ == (3866816i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3866732_1 = @:binopAssign __tmp__0;
                        _x_2 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3866817i32;
                } else if (__value__ == (3866817i32)) {
                    if (_i_3866732_1 < (_stk.length)) {
                        _gotoNext = 3866742i32;
                    } else {
                        _gotoNext = 3866820i32;
                    };
                } else if (__value__ == (3866820i32)) {
                    _h_0 = ((_h_0 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_0 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_0 = (_h_0 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3866943i32;
                } else if (__value__ == (3866943i32)) {
                    _e_4 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3866952i32;
                } else if (__value__ == (3866952i32)) {
                    if (!searchBreak && ((_e_4 != null && ((_e_4 : Dynamic).__nil__ == null || !(_e_4 : Dynamic).__nil__)))) {
                        _gotoNext = 3867006i32;
                    } else {
                        _gotoNext = 3867309i32;
                    };
                } else if (__value__ == (3867006i32)) {
                    if ((((@:checkr _e_4 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_4 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3867052i32;
                    } else {
                        _gotoNext = 3867072i32;
                    };
                } else if (__value__ == (3867052i32)) {
                    {
                        final __tmp__0 = _e_4;
                        final __tmp__1 = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                        _last_3 = @:binopAssign __tmp__0;
                        _e_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3866952i32;
                } else if (__value__ == (3867072i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3867155i32;
                    } else {
                        _gotoNext = 3867180i32;
                    };
                } else if (__value__ == (3867076i32)) {
                    _j_5++;
                    _gotoNext = 3867156i32;
                } else if (__value__ == (3867091i32)) {
                    if ((@:checkr _e_4 ?? throw "null pointer dereference")._stk[(_j_5 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_5 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3867127i32;
                    } else {
                        _gotoNext = 3867076i32;
                    };
                } else if (__value__ == (3867127i32)) {
                    {
                        final __tmp__0 = _e_4;
                        final __tmp__1 = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                        _last_3 = @:binopAssign __tmp__0;
                        _e_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3866952i32;
                } else if (__value__ == (3867155i32)) {
                    _j_5 = 0i32;
                    _gotoNext = 3867156i32;
                } else if (__value__ == (3867156i32)) {
                    if (_j_5 < (_stk.length)) {
                        _gotoNext = 3867091i32;
                    } else {
                        _gotoNext = 3867180i32;
                    };
                } else if (__value__ == (3867180i32)) {
                    if ((_last_3 != null && ((_last_3 : Dynamic).__nil__ == null || !(_last_3 : Dynamic).__nil__))) {
                        _gotoNext = 3867195i32;
                    } else {
                        _gotoNext = 3867276i32;
                    };
                } else if (__value__ == (3867195i32)) {
                    (@:checkr _last_3 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] = _e_4;
                    _gotoNext = 3867276i32;
                } else if (__value__ == (3867276i32)) {
                    return _e_4;
                    {
                        final __tmp__0 = _e_4;
                        final __tmp__1 = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                        _last_3 = @:binopAssign __tmp__0;
                        _e_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3866952i32;
                } else if (__value__ == (3867309i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3867328i32;
                    } else {
                        _gotoNext = 3867371i32;
                    };
                } else if (__value__ == (3867328i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3867371i32;
                } else if (__value__ == (3867371i32)) {
                    _e_6 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_6 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_6 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3867476i32;
                    } else {
                        _gotoNext = 3867575i32;
                    };
                } else if (__value__ == (3867476i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3867575i32;
                } else if (__value__ == (3867575i32)) {
                    (@:checkr _e_6 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3867699i32;
                    } else {
                        _gotoNext = 3867703i32;
                    };
                } else if (__value__ == (3867668i32)) {
                    (@:checkr _e_6 ?? throw "null pointer dereference")._stk[(_j_7 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_7 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_7++;
                    _gotoNext = 3867700i32;
                } else if (__value__ == (3867699i32)) {
                    _j_7 = 0i32;
                    _gotoNext = 3867700i32;
                } else if (__value__ == (3867700i32)) {
                    if (_j_7 < (_stk.length)) {
                        _gotoNext = 3867668i32;
                    } else {
                        _gotoNext = 3867703i32;
                    };
                } else if (__value__ == (3867703i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3867720i32;
                    } else {
                        _gotoNext = 3867769i32;
                    };
                } else if (__value__ == (3867720i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3867769i32;
                } else if (__value__ == (3867769i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] = _e_6;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3867800i32;
                    } else {
                        _gotoNext = 3867835i32;
                    };
                } else if (__value__ == (3867800i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_6;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_6;
                    _gotoNext = 3867875i32;
                } else if (__value__ == (3867835i32)) {
                    _gotoNext = 3867835i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_6;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_6;
                    var __blank__ = 0i32;
                    _gotoNext = 3867875i32;
                } else if (__value__ == (3867875i32)) {
                    return _e_6;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
