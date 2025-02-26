package stdgo._internal.sort;
@:keep @:allow(stdgo._internal.sort.Sort.StringSlice_asInterface) class StringSlice_static_extension {
    @:keep
    @:tdfield
    static public function sort( _x:stdgo._internal.sort.Sort_stringslice.StringSlice):Void {
        @:recv var _x:stdgo._internal.sort.Sort_stringslice.StringSlice = _x;
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_x));
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo._internal.sort.Sort_stringslice.StringSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:stdgo._internal.sort.Sort_stringslice.StringSlice = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = _x[(_i : stdgo.GoInt)]?.__copy__();
            final __tmp__2 = _x;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _x;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _x:stdgo._internal.sort.Sort_stringslice.StringSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:stdgo._internal.sort.Sort_stringslice.StringSlice = _x;
        return (_x[(_i : stdgo.GoInt)] < _x[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _x:stdgo._internal.sort.Sort_stringslice.StringSlice):stdgo.GoInt {
        @:recv var _x:stdgo._internal.sort.Sort_stringslice.StringSlice = _x;
        return (_x.length);
    }
    @:keep
    @:tdfield
    static public function search( _p:stdgo._internal.sort.Sort_stringslice.StringSlice, _x:stdgo.GoString):stdgo.GoInt {
        @:recv var _p:stdgo._internal.sort.Sort_stringslice.StringSlice = _p;
        return stdgo._internal.sort.Sort_searchstrings.searchStrings(_p, _x?.__copy__());
    }
}
