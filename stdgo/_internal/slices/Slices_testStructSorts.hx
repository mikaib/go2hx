package stdgo._internal.slices;
function testStructSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ss = (stdgo._internal.slices.Slices__makeRandomStructs._makeRandomStructs((200 : stdgo.GoInt)) : stdgo._internal.slices.Slices_T_myStructs.T_myStructs);
        var _ss2 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>>((_ss.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>>);
        for (_i => _ in _ss) {
            _ss2[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : _ss[(_i : stdgo.GoInt)]._n } : stdgo._internal.slices.Slices_T_myStruct.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>);
        };
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_ss));
        stdgo._internal.slices.Slices_sortFunc.sortFunc(_ss2, function(_a:stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>, _b:stdgo.Ref<stdgo._internal.slices.Slices_T_myStruct.T_myStruct>):stdgo.GoInt {
            return (_a._n - _b._n : stdgo.GoInt);
        });
        for (_i => _ in _ss) {
            if (stdgo.Go.toInterface((_ss[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices_T_myStruct.T_myStruct)) != stdgo.Go.toInterface((_ss2[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices_T_myStruct.T_myStruct))) {
                _t.fatalf(("ints2 mismatch at %d; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_ss[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices_T_myStruct.T_myStruct)), stdgo.Go.toInterface((_ss2[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices_T_myStruct.T_myStruct)));
            };
        };
    }
