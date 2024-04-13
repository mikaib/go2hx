package stdgo.slices;
/**
    // Package slices defines various functions useful with slices of any type.
**/
private var __go2hxdoc__package : Bool;
final n : haxe.UInt64 = stdgo._internal.slices.Slices.n;
@:invalid typedef T_myStruct = Dynamic;
@:invalid typedef T_intPair = Dynamic;
@:invalid typedef S = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.slices.Slices.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.slices.Slices.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.slices.Slices.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.slices.Slices.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.slices.Slices.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.slices.Slices.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.slices.Slices.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.slices.Slices.T__struct_7;
@:invalid typedef T__struct_8_asInterface = Dynamic;
@:invalid typedef T__struct_8_static_extension = Dynamic;
typedef T__struct_8 = stdgo._internal.slices.Slices.T__struct_8;
@:invalid typedef T__struct_9_asInterface = Dynamic;
@:invalid typedef T__struct_9_static_extension = Dynamic;
typedef T__struct_9 = stdgo._internal.slices.Slices.T__struct_9;
@:invalid typedef T__struct_10_asInterface = Dynamic;
@:invalid typedef T__struct_10_static_extension = Dynamic;
typedef T__struct_10 = stdgo._internal.slices.Slices.T__struct_10;
@:invalid typedef T__struct_11_asInterface = Dynamic;
@:invalid typedef T__struct_11_static_extension = Dynamic;
typedef T__struct_11 = stdgo._internal.slices.Slices.T__struct_11;
@:invalid typedef T__struct_12_asInterface = Dynamic;
@:invalid typedef T__struct_12_static_extension = Dynamic;
typedef T__struct_12 = stdgo._internal.slices.Slices.T__struct_12;
@:invalid typedef T__struct_13_asInterface = Dynamic;
@:invalid typedef T__struct_13_static_extension = Dynamic;
typedef T__struct_13 = stdgo._internal.slices.Slices.T__struct_13;
@:invalid typedef T__struct_14_asInterface = Dynamic;
@:invalid typedef T__struct_14_static_extension = Dynamic;
typedef T__struct_14 = stdgo._internal.slices.Slices.T__struct_14;
@:invalid typedef T__struct_15_asInterface = Dynamic;
@:invalid typedef T__struct_15_static_extension = Dynamic;
typedef T__struct_15 = stdgo._internal.slices.Slices.T__struct_15;
@:invalid typedef T__struct_16_asInterface = Dynamic;
@:invalid typedef T__struct_16_static_extension = Dynamic;
typedef T__struct_16 = stdgo._internal.slices.Slices.T__struct_16;
typedef T_sortedHint = stdgo._internal.slices.Slices.T_sortedHint;
typedef T_xorshift = stdgo._internal.slices.Slices.T_xorshift;
typedef T_myStructs = stdgo._internal.slices.Slices.T_myStructs;
typedef T_intPairs = stdgo._internal.slices.Slices.T_intPairs;
macro inline function equal<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s1:haxe.macro.Expr.ExprOf<S>, s2:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Bool> throw "not implemented";
macro inline function equalFunc<S1, S2, E1, E2>(_generic__0:haxe.macro.Expr.ExprOf<S1>, _generic__1:haxe.macro.Expr.ExprOf<S2>, _generic__2:haxe.macro.Expr.ExprOf<E1>, _generic__3:haxe.macro.Expr.ExprOf<E2>, s1:haxe.macro.Expr.ExprOf<S1>, s2:haxe.macro.Expr.ExprOf<S2>, eq:haxe.macro.Expr.ExprOf<($E1, $E2) -> Bool>):haxe.macro.Expr.ExprOf<Bool> throw "not implemented";
macro inline function compare<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s1:haxe.macro.Expr.ExprOf<S>, s2:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<stdgo.GoInt> throw "not implemented";
macro inline function compareFunc<S1, S2, E1, E2>(_generic__0:haxe.macro.Expr.ExprOf<S1>, _generic__1:haxe.macro.Expr.ExprOf<S2>, _generic__2:haxe.macro.Expr.ExprOf<E1>, _generic__3:haxe.macro.Expr.ExprOf<E2>, s1:haxe.macro.Expr.ExprOf<S1>, s2:haxe.macro.Expr.ExprOf<S2>, cmp:haxe.macro.Expr.ExprOf<($E1, $E2) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt> throw "not implemented";
macro inline function index<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, v:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<stdgo.GoInt> throw "not implemented";
macro inline function indexFunc<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, f:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<stdgo.GoInt> throw "not implemented";
macro inline function contains<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, v:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<Bool> throw "not implemented";
macro inline function containsFunc<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, f:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<Bool> throw "not implemented";
macro inline function insert<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S> throw "not implemented";
macro inline function delete<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, j:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<S> throw "not implemented";
macro inline function deleteFunc<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, del:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<S> throw "not implemented";
macro inline function replace<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, j:haxe.macro.Expr.ExprOf<stdgo.GoInt>, v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S> throw "not implemented";
macro inline function clone<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S> throw "not implemented";
macro inline function compact<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S> throw "not implemented";
macro inline function compactFunc<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, eq:haxe.macro.Expr.ExprOf<($E, $E) -> Bool>):haxe.macro.Expr.ExprOf<S> throw "not implemented";
macro inline function grow<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>, n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<S> throw "not implemented";
macro inline function clip<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S> throw "not implemented";
macro inline function reverse<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Void> throw "not implemented";
inline function testEqual(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testEqualFunc(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_benchmarkEqualFunc_Large_23___localname___Large = stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large_23___localname___Large;
inline function benchmarkEqualFunc_Large(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testCompare(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCompareFunc(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_benchmarkIndex_Large_24___localname___Large = stdgo._internal.slices.Slices.T_benchmarkIndex_Large_24___localname___Large;
inline function benchmarkIndex_Large(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testIndexFunc(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_benchmarkIndexFunc_Large_25___localname___Large = stdgo._internal.slices.Slices.T_benchmarkIndexFunc_Large_25___localname___Large;
inline function benchmarkIndexFunc_Large(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testContains(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testContainsFunc(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInsert(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInsertOverlap(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDelete(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDeleteFunc(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDeletePanics(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testClone(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCompact(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkCompact(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
typedef T_benchmarkCompact_Large_26___localname___Large = stdgo._internal.slices.Slices.T_benchmarkCompact_Large_26___localname___Large;
inline function benchmarkCompact_Large(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testCompactFunc(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_benchmarkCompactFunc_Large_27___localname___Large = stdgo._internal.slices.Slices.T_benchmarkCompactFunc_Large_27___localname___Large;
inline function benchmarkCompactFunc_Large(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testGrow(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testClip(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReverse(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReplace(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReplacePanics(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReplaceOverlap(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkReplace(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testRotate(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInsertGrowthRate(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReplaceGrowthRate(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
typedef T_testInference_28___localname___S = stdgo._internal.slices.Slices.T_testInference_28___localname___S;
/**
    // Test type inference with a named slice type.
**/
inline function testInference(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
macro inline function sort<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Void> throw "not implemented";
macro inline function sortFunc<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>, cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> throw "not implemented";
macro inline function sortStableFunc<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>, cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void> throw "not implemented";
macro inline function isSorted<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Bool> throw "not implemented";
macro inline function isSortedFunc<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>, cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool> throw "not implemented";
macro inline function min<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<E> throw "not implemented";
macro inline function minFunc<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>, cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<E> throw "not implemented";
macro inline function max<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<E> throw "not implemented";
macro inline function maxFunc<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>, cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<E> throw "not implemented";
macro inline function binarySearch<S, E>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, x:haxe.macro.Expr.ExprOf<S>, target:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }> throw "not implemented";
macro inline function binarySearchFunc<S, E, T_>(_generic__0:haxe.macro.Expr.ExprOf<S>, _generic__1:haxe.macro.Expr.ExprOf<E>, _generic__2:haxe.macro.Expr.ExprOf<T_>, x:haxe.macro.Expr.ExprOf<S>, target:haxe.macro.Expr.ExprOf<T_>, cmp:haxe.macro.Expr.ExprOf<($E, $T_) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }> throw "not implemented";
inline function benchmarkSortInts(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSlicesSortInts(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSlicesSortInts_Sorted(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSlicesSortInts_Reversed(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkIntsAreSorted(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkIsSorted(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
/**
    // Since we're benchmarking these sorts against each other, make sure that they
    // generate similar results.
**/
inline function testIntSorts(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testStringSorts(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkSortStrings(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSortStrings_Sorted(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSlicesSortStrings(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSlicesSortStrings_Sorted(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testStructSorts(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkSortStructs(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkSortFuncStructs(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkBinarySearchFloats(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkBinarySearchFuncStruct(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testSortIntSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSortFuncIntSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSortFloat64Slice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSortFloat64SliceWithNaNs(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSortStringSlice(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSortLarge_Random(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testStability(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMinMax(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMinMaxNaNs(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMinMaxPanics(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBinarySearch(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBinarySearchInts(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBinarySearchFloats(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBinarySearchFunc(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_xorshift_asInterface = Dynamic;
@:invalid typedef T_xorshift_static_extension = Dynamic;
@:invalid typedef T_myStructs_asInterface = Dynamic;
@:invalid typedef T_myStructs_static_extension = Dynamic;
@:invalid typedef T_intPairs_asInterface = Dynamic;
@:invalid typedef T_intPairs_static_extension = Dynamic;
