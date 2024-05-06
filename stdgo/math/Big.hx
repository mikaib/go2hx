package stdgo.math;
/**
    /|*
    Package big implements arbitrary-precision arithmetic (big numbers).
    The following numeric types are supported:
    
    	Int    signed integers
    	Rat    rational numbers
    	Float  floating-point numbers
    
    The zero value for an Int, Rat, or Float correspond to 0. Thus, new
    values can be declared in the usual ways and denote 0 without further
    initialization:
    
    	var x Int        // &x is an *Int of value 0
    	var r = &Rat{}   // r is a *Rat of value 0
    	y := new(Float)  // y is a *Float of value 0
    
    Alternatively, new values can be allocated and initialized with factory
    functions of the form:
    
    	func NewT(v V) *T
    
    For instance, NewInt(x) returns an *Int set to the value of the int64
    argument x, NewRat(a, b) returns a *Rat set to the fraction a/b where
    a and b are int64 values, and NewFloat(f) returns a *Float initialized
    to the float64 argument f. More flexibility is provided with explicit
    setters, for instance:
    
    	var z1 Int
    	z1.SetUint64(123)                 // z1 := 123
    	z2 := new(Rat).SetFloat64(1.25)   // z2 := 5/4
    	z3 := new(Float).SetInt(z1)       // z3 := 123.0
    
    Setters, numeric operations and predicates are represented as methods of
    the form:
    
    	func (z *T) SetV(v V) *T          // z = v
    	func (z *T) Unary(x *T) *T        // z = unary x
    	func (z *T) Binary(x, y *T) *T    // z = x binary y
    	func (x *T) Pred() P              // p = pred(x)
    
    with T one of Int, Rat, or Float. For unary and binary operations, the
    result is the receiver (usually named z in that case; see below); if it
    is one of the operands x or y it may be safely overwritten (and its memory
    reused).
    
    Arithmetic expressions are typically written as a sequence of individual
    method calls, with each call corresponding to an operation. The receiver
    denotes the result and the method arguments are the operation's operands.
    For instance, given three *Int values a, b and c, the invocation
    
    	c.Add(a, b)
    
    computes the sum a + b and stores the result in c, overwriting whatever
    value was held in c before. Unless specified otherwise, operations permit
    aliasing of parameters, so it is perfectly ok to write
    
    	sum.Add(sum, x)
    
    to accumulate values x in a sum.
    
    (By always passing in a result value via the receiver, memory use can be
    much better controlled. Instead of having to allocate new memory for each
    result, an operation can reuse the space allocated for the result value,
    and overwrite that value with the new result in the process.)
    
    Notational convention: Incoming method parameters (including the receiver)
    are named consistently in the API to clarify their use. Incoming operands
    are usually named x, y, a, b, and so on, but never z. A parameter specifying
    the result is named z (typically the receiver).
    
    For instance, the arguments for (*Int).Add are named x and y, and because
    the receiver specifies the result destination, it is called z:
    
    	func (z *Int) Add(x, y *Int) *Int
    
    Methods of this form typically return the incoming receiver as well, to
    enable simple call chaining.
    
    Methods which don't require a result value to be passed in (for instance,
    Int.Sign), simply return the result. In this case, the receiver is typically
    the first operand, named x:
    
    	func (x *Int) Sign() int
    
    Various methods support conversions between strings and corresponding
    numeric values, and vice versa: *Int, *Rat, and *Float values implement
    the Stringer interface for a (default) string representation of the value,
    but also provide SetString methods to initialize a value from a string in
    a variety of supported formats (see the respective SetString documentation).
    
    Finally, *Int, *Rat, and *Float satisfy [fmt.Scanner] for scanning
    and (except for *Rat) the Formatter interface for formatted printing.
    *|/
**/
private var __go2hxdoc__package : Bool;
final maxExp : haxe.UInt64 = stdgo._internal.math.big.Big.maxExp;
final minExp : haxe.UInt64 = stdgo._internal.math.big.Big.minExp;
final maxPrec : haxe.UInt64 = stdgo._internal.math.big.Big.maxPrec;
final toNearestEven : stdgo._internal.math.big.Big.RoundingMode = stdgo._internal.math.big.Big.toNearestEven;
final toNearestAway = stdgo._internal.math.big.Big.toNearestAway;
final toZero = stdgo._internal.math.big.Big.toZero;
final awayFromZero = stdgo._internal.math.big.Big.awayFromZero;
final toNegativeInf = stdgo._internal.math.big.Big.toNegativeInf;
final toPositiveInf = stdgo._internal.math.big.Big.toPositiveInf;
final below : stdgo._internal.math.big.Big.Accuracy = stdgo._internal.math.big.Big.below;
final exact : stdgo._internal.math.big.Big.Accuracy = stdgo._internal.math.big.Big.exact;
final above : stdgo._internal.math.big.Big.Accuracy = stdgo._internal.math.big.Big.above;
final maxBase : StdTypes.Int = stdgo._internal.math.big.Big.maxBase;
@:forward @:forward.new abstract T_argVV(stdgo._internal.math.big.Big.T_argVV) from stdgo._internal.math.big.Big.T_argVV to stdgo._internal.math.big.Big.T_argVV {

}
@:forward @:forward.new abstract T_argVW(stdgo._internal.math.big.Big.T_argVW) from stdgo._internal.math.big.Big.T_argVW to stdgo._internal.math.big.Big.T_argVW {

}
@:forward @:forward.new abstract T_argVU(stdgo._internal.math.big.Big.T_argVU) from stdgo._internal.math.big.Big.T_argVU to stdgo._internal.math.big.Big.T_argVU {

}
@:forward @:forward.new abstract T_argVWW(stdgo._internal.math.big.Big.T_argVWW) from stdgo._internal.math.big.Big.T_argVWW to stdgo._internal.math.big.Big.T_argVWW {

}
@:forward @:forward.new abstract T_argWVW(stdgo._internal.math.big.Big.T_argWVW) from stdgo._internal.math.big.Big.T_argWVW to stdgo._internal.math.big.Big.T_argWVW {

}
@:forward @:forward.new abstract T_decimal(stdgo._internal.math.big.Big.T_decimal) from stdgo._internal.math.big.Big.T_decimal to stdgo._internal.math.big.Big.T_decimal {

}
@:forward @:forward.new abstract Float_(stdgo._internal.math.big.Big.Float_) from stdgo._internal.math.big.Big.Float_ to stdgo._internal.math.big.Big.Float_ {

}
@:forward @:forward.new abstract ErrNaN(stdgo._internal.math.big.Big.ErrNaN) from stdgo._internal.math.big.Big.ErrNaN to stdgo._internal.math.big.Big.ErrNaN {

}
@:forward @:forward.new abstract T_matrix(stdgo._internal.math.big.Big.T_matrix) from stdgo._internal.math.big.Big.T_matrix to stdgo._internal.math.big.Big.T_matrix {

}
@:forward @:forward.new abstract Int_(stdgo._internal.math.big.Big.Int_) from stdgo._internal.math.big.Big.Int_ to stdgo._internal.math.big.Big.Int_ {

}
@:forward @:forward.new abstract T_argZZ(stdgo._internal.math.big.Big.T_argZZ) from stdgo._internal.math.big.Big.T_argZZ to stdgo._internal.math.big.Big.T_argZZ {

}
@:forward @:forward.new abstract T_intShiftTest(stdgo._internal.math.big.Big.T_intShiftTest) from stdgo._internal.math.big.Big.T_intShiftTest to stdgo._internal.math.big.Big.T_intShiftTest {

}
@:forward @:forward.new abstract T_byteReader(stdgo._internal.math.big.Big.T_byteReader) from stdgo._internal.math.big.Big.T_byteReader to stdgo._internal.math.big.Big.T_byteReader {

}
@:forward @:forward.new abstract T_argNN(stdgo._internal.math.big.Big.T_argNN) from stdgo._internal.math.big.Big.T_argNN to stdgo._internal.math.big.Big.T_argNN {

}
@:forward @:forward.new abstract T_shiftTest(stdgo._internal.math.big.Big.T_shiftTest) from stdgo._internal.math.big.Big.T_shiftTest to stdgo._internal.math.big.Big.T_shiftTest {

}
@:forward @:forward.new abstract T_modWTest(stdgo._internal.math.big.Big.T_modWTest) from stdgo._internal.math.big.Big.T_modWTest to stdgo._internal.math.big.Big.T_modWTest {

}
@:forward @:forward.new abstract T_divisor(stdgo._internal.math.big.Big.T_divisor) from stdgo._internal.math.big.Big.T_divisor to stdgo._internal.math.big.Big.T_divisor {

}
@:forward @:forward.new abstract Rat(stdgo._internal.math.big.Big.Rat) from stdgo._internal.math.big.Big.Rat to stdgo._internal.math.big.Big.Rat {

}
@:forward @:forward.new abstract T_ratBinArg(stdgo._internal.math.big.Big.T_ratBinArg) from stdgo._internal.math.big.Big.T_ratBinArg to stdgo._internal.math.big.Big.T_ratBinArg {

}
@:forward @:forward.new abstract StringTest(stdgo._internal.math.big.Big.StringTest) from stdgo._internal.math.big.Big.StringTest to stdgo._internal.math.big.Big.StringTest {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.math.big.Big.T__struct_0_asInterface) from stdgo._internal.math.big.Big.T__struct_0_asInterface to stdgo._internal.math.big.Big.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.math.big.Big.T__struct_0_static_extension) from stdgo._internal.math.big.Big.T__struct_0_static_extension to stdgo._internal.math.big.Big.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.math.big.Big.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.math.big.Big.T__struct_1_asInterface) from stdgo._internal.math.big.Big.T__struct_1_asInterface to stdgo._internal.math.big.Big.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.math.big.Big.T__struct_1_static_extension) from stdgo._internal.math.big.Big.T__struct_1_static_extension to stdgo._internal.math.big.Big.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.math.big.Big.T__struct_1;
@:forward @:forward.new abstract T__struct_2_asInterface(stdgo._internal.math.big.Big.T__struct_2_asInterface) from stdgo._internal.math.big.Big.T__struct_2_asInterface to stdgo._internal.math.big.Big.T__struct_2_asInterface {

}
@:forward @:forward.new abstract T__struct_2_static_extension(stdgo._internal.math.big.Big.T__struct_2_static_extension) from stdgo._internal.math.big.Big.T__struct_2_static_extension to stdgo._internal.math.big.Big.T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.math.big.Big.T__struct_2;
@:forward @:forward.new abstract T__struct_3_asInterface(stdgo._internal.math.big.Big.T__struct_3_asInterface) from stdgo._internal.math.big.Big.T__struct_3_asInterface to stdgo._internal.math.big.Big.T__struct_3_asInterface {

}
@:forward @:forward.new abstract T__struct_3_static_extension(stdgo._internal.math.big.Big.T__struct_3_static_extension) from stdgo._internal.math.big.Big.T__struct_3_static_extension to stdgo._internal.math.big.Big.T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.math.big.Big.T__struct_3;
@:forward @:forward.new abstract T__struct_4_asInterface(stdgo._internal.math.big.Big.T__struct_4_asInterface) from stdgo._internal.math.big.Big.T__struct_4_asInterface to stdgo._internal.math.big.Big.T__struct_4_asInterface {

}
@:forward @:forward.new abstract T__struct_4_static_extension(stdgo._internal.math.big.Big.T__struct_4_static_extension) from stdgo._internal.math.big.Big.T__struct_4_static_extension to stdgo._internal.math.big.Big.T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.math.big.Big.T__struct_4;
@:forward @:forward.new abstract T__struct_5_asInterface(stdgo._internal.math.big.Big.T__struct_5_asInterface) from stdgo._internal.math.big.Big.T__struct_5_asInterface to stdgo._internal.math.big.Big.T__struct_5_asInterface {

}
@:forward @:forward.new abstract T__struct_5_static_extension(stdgo._internal.math.big.Big.T__struct_5_static_extension) from stdgo._internal.math.big.Big.T__struct_5_static_extension to stdgo._internal.math.big.Big.T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.math.big.Big.T__struct_5;
@:forward @:forward.new abstract T__struct_6_asInterface(stdgo._internal.math.big.Big.T__struct_6_asInterface) from stdgo._internal.math.big.Big.T__struct_6_asInterface to stdgo._internal.math.big.Big.T__struct_6_asInterface {

}
@:forward @:forward.new abstract T__struct_6_static_extension(stdgo._internal.math.big.Big.T__struct_6_static_extension) from stdgo._internal.math.big.Big.T__struct_6_static_extension to stdgo._internal.math.big.Big.T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.math.big.Big.T__struct_6;
@:forward @:forward.new abstract T__struct_7_asInterface(stdgo._internal.math.big.Big.T__struct_7_asInterface) from stdgo._internal.math.big.Big.T__struct_7_asInterface to stdgo._internal.math.big.Big.T__struct_7_asInterface {

}
@:forward @:forward.new abstract T__struct_7_static_extension(stdgo._internal.math.big.Big.T__struct_7_static_extension) from stdgo._internal.math.big.Big.T__struct_7_static_extension to stdgo._internal.math.big.Big.T__struct_7_static_extension {

}
typedef T__struct_7 = stdgo._internal.math.big.Big.T__struct_7;
@:forward @:forward.new abstract T__struct_8_asInterface(stdgo._internal.math.big.Big.T__struct_8_asInterface) from stdgo._internal.math.big.Big.T__struct_8_asInterface to stdgo._internal.math.big.Big.T__struct_8_asInterface {

}
@:forward @:forward.new abstract T__struct_8_static_extension(stdgo._internal.math.big.Big.T__struct_8_static_extension) from stdgo._internal.math.big.Big.T__struct_8_static_extension to stdgo._internal.math.big.Big.T__struct_8_static_extension {

}
typedef T__struct_8 = stdgo._internal.math.big.Big.T__struct_8;
@:forward @:forward.new abstract T__struct_9_asInterface(stdgo._internal.math.big.Big.T__struct_9_asInterface) from stdgo._internal.math.big.Big.T__struct_9_asInterface to stdgo._internal.math.big.Big.T__struct_9_asInterface {

}
@:forward @:forward.new abstract T__struct_9_static_extension(stdgo._internal.math.big.Big.T__struct_9_static_extension) from stdgo._internal.math.big.Big.T__struct_9_static_extension to stdgo._internal.math.big.Big.T__struct_9_static_extension {

}
typedef T__struct_9 = stdgo._internal.math.big.Big.T__struct_9;
@:forward @:forward.new abstract T__struct_10_asInterface(stdgo._internal.math.big.Big.T__struct_10_asInterface) from stdgo._internal.math.big.Big.T__struct_10_asInterface to stdgo._internal.math.big.Big.T__struct_10_asInterface {

}
@:forward @:forward.new abstract T__struct_10_static_extension(stdgo._internal.math.big.Big.T__struct_10_static_extension) from stdgo._internal.math.big.Big.T__struct_10_static_extension to stdgo._internal.math.big.Big.T__struct_10_static_extension {

}
typedef T__struct_10 = stdgo._internal.math.big.Big.T__struct_10;
@:forward @:forward.new abstract T__struct_11_asInterface(stdgo._internal.math.big.Big.T__struct_11_asInterface) from stdgo._internal.math.big.Big.T__struct_11_asInterface to stdgo._internal.math.big.Big.T__struct_11_asInterface {

}
@:forward @:forward.new abstract T__struct_11_static_extension(stdgo._internal.math.big.Big.T__struct_11_static_extension) from stdgo._internal.math.big.Big.T__struct_11_static_extension to stdgo._internal.math.big.Big.T__struct_11_static_extension {

}
typedef T__struct_11 = stdgo._internal.math.big.Big.T__struct_11;
@:forward @:forward.new abstract T__struct_12_asInterface(stdgo._internal.math.big.Big.T__struct_12_asInterface) from stdgo._internal.math.big.Big.T__struct_12_asInterface to stdgo._internal.math.big.Big.T__struct_12_asInterface {

}
@:forward @:forward.new abstract T__struct_12_static_extension(stdgo._internal.math.big.Big.T__struct_12_static_extension) from stdgo._internal.math.big.Big.T__struct_12_static_extension to stdgo._internal.math.big.Big.T__struct_12_static_extension {

}
typedef T__struct_12 = stdgo._internal.math.big.Big.T__struct_12;
@:forward @:forward.new abstract T__struct_13_asInterface(stdgo._internal.math.big.Big.T__struct_13_asInterface) from stdgo._internal.math.big.Big.T__struct_13_asInterface to stdgo._internal.math.big.Big.T__struct_13_asInterface {

}
@:forward @:forward.new abstract T__struct_13_static_extension(stdgo._internal.math.big.Big.T__struct_13_static_extension) from stdgo._internal.math.big.Big.T__struct_13_static_extension to stdgo._internal.math.big.Big.T__struct_13_static_extension {

}
typedef T__struct_13 = stdgo._internal.math.big.Big.T__struct_13;
@:forward @:forward.new abstract T__struct_14_asInterface(stdgo._internal.math.big.Big.T__struct_14_asInterface) from stdgo._internal.math.big.Big.T__struct_14_asInterface to stdgo._internal.math.big.Big.T__struct_14_asInterface {

}
@:forward @:forward.new abstract T__struct_14_static_extension(stdgo._internal.math.big.Big.T__struct_14_static_extension) from stdgo._internal.math.big.Big.T__struct_14_static_extension to stdgo._internal.math.big.Big.T__struct_14_static_extension {

}
typedef T__struct_14 = stdgo._internal.math.big.Big.T__struct_14;
@:forward @:forward.new abstract T__struct_15_asInterface(stdgo._internal.math.big.Big.T__struct_15_asInterface) from stdgo._internal.math.big.Big.T__struct_15_asInterface to stdgo._internal.math.big.Big.T__struct_15_asInterface {

}
@:forward @:forward.new abstract T__struct_15_static_extension(stdgo._internal.math.big.Big.T__struct_15_static_extension) from stdgo._internal.math.big.Big.T__struct_15_static_extension to stdgo._internal.math.big.Big.T__struct_15_static_extension {

}
typedef T__struct_15 = stdgo._internal.math.big.Big.T__struct_15;
@:forward @:forward.new abstract T__struct_16_asInterface(stdgo._internal.math.big.Big.T__struct_16_asInterface) from stdgo._internal.math.big.Big.T__struct_16_asInterface to stdgo._internal.math.big.Big.T__struct_16_asInterface {

}
@:forward @:forward.new abstract T__struct_16_static_extension(stdgo._internal.math.big.Big.T__struct_16_static_extension) from stdgo._internal.math.big.Big.T__struct_16_static_extension to stdgo._internal.math.big.Big.T__struct_16_static_extension {

}
typedef T__struct_16 = stdgo._internal.math.big.Big.T__struct_16;
@:forward @:forward.new abstract T__struct_17_asInterface(stdgo._internal.math.big.Big.T__struct_17_asInterface) from stdgo._internal.math.big.Big.T__struct_17_asInterface to stdgo._internal.math.big.Big.T__struct_17_asInterface {

}
@:forward @:forward.new abstract T__struct_17_static_extension(stdgo._internal.math.big.Big.T__struct_17_static_extension) from stdgo._internal.math.big.Big.T__struct_17_static_extension to stdgo._internal.math.big.Big.T__struct_17_static_extension {

}
typedef T__struct_17 = stdgo._internal.math.big.Big.T__struct_17;
@:forward @:forward.new abstract T__struct_18_asInterface(stdgo._internal.math.big.Big.T__struct_18_asInterface) from stdgo._internal.math.big.Big.T__struct_18_asInterface to stdgo._internal.math.big.Big.T__struct_18_asInterface {

}
@:forward @:forward.new abstract T__struct_18_static_extension(stdgo._internal.math.big.Big.T__struct_18_static_extension) from stdgo._internal.math.big.Big.T__struct_18_static_extension to stdgo._internal.math.big.Big.T__struct_18_static_extension {

}
typedef T__struct_18 = stdgo._internal.math.big.Big.T__struct_18;
@:forward @:forward.new abstract T__struct_19_asInterface(stdgo._internal.math.big.Big.T__struct_19_asInterface) from stdgo._internal.math.big.Big.T__struct_19_asInterface to stdgo._internal.math.big.Big.T__struct_19_asInterface {

}
@:forward @:forward.new abstract T__struct_19_static_extension(stdgo._internal.math.big.Big.T__struct_19_static_extension) from stdgo._internal.math.big.Big.T__struct_19_static_extension to stdgo._internal.math.big.Big.T__struct_19_static_extension {

}
typedef T__struct_19 = stdgo._internal.math.big.Big.T__struct_19;
@:forward @:forward.new abstract T__struct_20_asInterface(stdgo._internal.math.big.Big.T__struct_20_asInterface) from stdgo._internal.math.big.Big.T__struct_20_asInterface to stdgo._internal.math.big.Big.T__struct_20_asInterface {

}
@:forward @:forward.new abstract T__struct_20_static_extension(stdgo._internal.math.big.Big.T__struct_20_static_extension) from stdgo._internal.math.big.Big.T__struct_20_static_extension to stdgo._internal.math.big.Big.T__struct_20_static_extension {

}
typedef T__struct_20 = stdgo._internal.math.big.Big.T__struct_20;
@:forward @:forward.new abstract T__struct_21_asInterface(stdgo._internal.math.big.Big.T__struct_21_asInterface) from stdgo._internal.math.big.Big.T__struct_21_asInterface to stdgo._internal.math.big.Big.T__struct_21_asInterface {

}
@:forward @:forward.new abstract T__struct_21_static_extension(stdgo._internal.math.big.Big.T__struct_21_static_extension) from stdgo._internal.math.big.Big.T__struct_21_static_extension to stdgo._internal.math.big.Big.T__struct_21_static_extension {

}
typedef T__struct_21 = stdgo._internal.math.big.Big.T__struct_21;
@:forward @:forward.new abstract T__struct_22_asInterface(stdgo._internal.math.big.Big.T__struct_22_asInterface) from stdgo._internal.math.big.Big.T__struct_22_asInterface to stdgo._internal.math.big.Big.T__struct_22_asInterface {

}
@:forward @:forward.new abstract T__struct_22_static_extension(stdgo._internal.math.big.Big.T__struct_22_static_extension) from stdgo._internal.math.big.Big.T__struct_22_static_extension to stdgo._internal.math.big.Big.T__struct_22_static_extension {

}
typedef T__struct_22 = stdgo._internal.math.big.Big.T__struct_22;
@:forward @:forward.new abstract T__struct_23_asInterface(stdgo._internal.math.big.Big.T__struct_23_asInterface) from stdgo._internal.math.big.Big.T__struct_23_asInterface to stdgo._internal.math.big.Big.T__struct_23_asInterface {

}
@:forward @:forward.new abstract T__struct_23_static_extension(stdgo._internal.math.big.Big.T__struct_23_static_extension) from stdgo._internal.math.big.Big.T__struct_23_static_extension to stdgo._internal.math.big.Big.T__struct_23_static_extension {

}
typedef T__struct_23 = stdgo._internal.math.big.Big.T__struct_23;
@:forward @:forward.new abstract T__struct_24_asInterface(stdgo._internal.math.big.Big.T__struct_24_asInterface) from stdgo._internal.math.big.Big.T__struct_24_asInterface to stdgo._internal.math.big.Big.T__struct_24_asInterface {

}
@:forward @:forward.new abstract T__struct_24_static_extension(stdgo._internal.math.big.Big.T__struct_24_static_extension) from stdgo._internal.math.big.Big.T__struct_24_static_extension to stdgo._internal.math.big.Big.T__struct_24_static_extension {

}
typedef T__struct_24 = stdgo._internal.math.big.Big.T__struct_24;
@:forward @:forward.new abstract T__struct_25_asInterface(stdgo._internal.math.big.Big.T__struct_25_asInterface) from stdgo._internal.math.big.Big.T__struct_25_asInterface to stdgo._internal.math.big.Big.T__struct_25_asInterface {

}
@:forward @:forward.new abstract T__struct_25_static_extension(stdgo._internal.math.big.Big.T__struct_25_static_extension) from stdgo._internal.math.big.Big.T__struct_25_static_extension to stdgo._internal.math.big.Big.T__struct_25_static_extension {

}
typedef T__struct_25 = stdgo._internal.math.big.Big.T__struct_25;
@:forward @:forward.new abstract T__struct_26_asInterface(stdgo._internal.math.big.Big.T__struct_26_asInterface) from stdgo._internal.math.big.Big.T__struct_26_asInterface to stdgo._internal.math.big.Big.T__struct_26_asInterface {

}
@:forward @:forward.new abstract T__struct_26_static_extension(stdgo._internal.math.big.Big.T__struct_26_static_extension) from stdgo._internal.math.big.Big.T__struct_26_static_extension to stdgo._internal.math.big.Big.T__struct_26_static_extension {

}
typedef T__struct_26 = stdgo._internal.math.big.Big.T__struct_26;
@:forward @:forward.new abstract T__struct_27_asInterface(stdgo._internal.math.big.Big.T__struct_27_asInterface) from stdgo._internal.math.big.Big.T__struct_27_asInterface to stdgo._internal.math.big.Big.T__struct_27_asInterface {

}
@:forward @:forward.new abstract T__struct_27_static_extension(stdgo._internal.math.big.Big.T__struct_27_static_extension) from stdgo._internal.math.big.Big.T__struct_27_static_extension to stdgo._internal.math.big.Big.T__struct_27_static_extension {

}
typedef T__struct_27 = stdgo._internal.math.big.Big.T__struct_27;
@:forward @:forward.new abstract T__struct_28_asInterface(stdgo._internal.math.big.Big.T__struct_28_asInterface) from stdgo._internal.math.big.Big.T__struct_28_asInterface to stdgo._internal.math.big.Big.T__struct_28_asInterface {

}
@:forward @:forward.new abstract T__struct_28_static_extension(stdgo._internal.math.big.Big.T__struct_28_static_extension) from stdgo._internal.math.big.Big.T__struct_28_static_extension to stdgo._internal.math.big.Big.T__struct_28_static_extension {

}
typedef T__struct_28 = stdgo._internal.math.big.Big.T__struct_28;
@:forward @:forward.new abstract T__struct_29_asInterface(stdgo._internal.math.big.Big.T__struct_29_asInterface) from stdgo._internal.math.big.Big.T__struct_29_asInterface to stdgo._internal.math.big.Big.T__struct_29_asInterface {

}
@:forward @:forward.new abstract T__struct_29_static_extension(stdgo._internal.math.big.Big.T__struct_29_static_extension) from stdgo._internal.math.big.Big.T__struct_29_static_extension to stdgo._internal.math.big.Big.T__struct_29_static_extension {

}
typedef T__struct_29 = stdgo._internal.math.big.Big.T__struct_29;
@:forward @:forward.new abstract T__struct_30_asInterface(stdgo._internal.math.big.Big.T__struct_30_asInterface) from stdgo._internal.math.big.Big.T__struct_30_asInterface to stdgo._internal.math.big.Big.T__struct_30_asInterface {

}
@:forward @:forward.new abstract T__struct_30_static_extension(stdgo._internal.math.big.Big.T__struct_30_static_extension) from stdgo._internal.math.big.Big.T__struct_30_static_extension to stdgo._internal.math.big.Big.T__struct_30_static_extension {

}
typedef T__struct_30 = stdgo._internal.math.big.Big.T__struct_30;
@:forward @:forward.new abstract T__struct_31_asInterface(stdgo._internal.math.big.Big.T__struct_31_asInterface) from stdgo._internal.math.big.Big.T__struct_31_asInterface to stdgo._internal.math.big.Big.T__struct_31_asInterface {

}
@:forward @:forward.new abstract T__struct_31_static_extension(stdgo._internal.math.big.Big.T__struct_31_static_extension) from stdgo._internal.math.big.Big.T__struct_31_static_extension to stdgo._internal.math.big.Big.T__struct_31_static_extension {

}
typedef T__struct_31 = stdgo._internal.math.big.Big.T__struct_31;
@:forward @:forward.new abstract T__struct_32_asInterface(stdgo._internal.math.big.Big.T__struct_32_asInterface) from stdgo._internal.math.big.Big.T__struct_32_asInterface to stdgo._internal.math.big.Big.T__struct_32_asInterface {

}
@:forward @:forward.new abstract T__struct_32_static_extension(stdgo._internal.math.big.Big.T__struct_32_static_extension) from stdgo._internal.math.big.Big.T__struct_32_static_extension to stdgo._internal.math.big.Big.T__struct_32_static_extension {

}
typedef T__struct_32 = stdgo._internal.math.big.Big.T__struct_32;
@:forward @:forward.new abstract T__struct_33_asInterface(stdgo._internal.math.big.Big.T__struct_33_asInterface) from stdgo._internal.math.big.Big.T__struct_33_asInterface to stdgo._internal.math.big.Big.T__struct_33_asInterface {

}
@:forward @:forward.new abstract T__struct_33_static_extension(stdgo._internal.math.big.Big.T__struct_33_static_extension) from stdgo._internal.math.big.Big.T__struct_33_static_extension to stdgo._internal.math.big.Big.T__struct_33_static_extension {

}
typedef T__struct_33 = stdgo._internal.math.big.Big.T__struct_33;
@:forward @:forward.new abstract T__struct_34_asInterface(stdgo._internal.math.big.Big.T__struct_34_asInterface) from stdgo._internal.math.big.Big.T__struct_34_asInterface to stdgo._internal.math.big.Big.T__struct_34_asInterface {

}
@:forward @:forward.new abstract T__struct_34_static_extension(stdgo._internal.math.big.Big.T__struct_34_static_extension) from stdgo._internal.math.big.Big.T__struct_34_static_extension to stdgo._internal.math.big.Big.T__struct_34_static_extension {

}
typedef T__struct_34 = stdgo._internal.math.big.Big.T__struct_34;
@:forward @:forward.new abstract T__struct_35_asInterface(stdgo._internal.math.big.Big.T__struct_35_asInterface) from stdgo._internal.math.big.Big.T__struct_35_asInterface to stdgo._internal.math.big.Big.T__struct_35_asInterface {

}
@:forward @:forward.new abstract T__struct_35_static_extension(stdgo._internal.math.big.Big.T__struct_35_static_extension) from stdgo._internal.math.big.Big.T__struct_35_static_extension to stdgo._internal.math.big.Big.T__struct_35_static_extension {

}
typedef T__struct_35 = stdgo._internal.math.big.Big.T__struct_35;
@:forward @:forward.new abstract T__struct_36_asInterface(stdgo._internal.math.big.Big.T__struct_36_asInterface) from stdgo._internal.math.big.Big.T__struct_36_asInterface to stdgo._internal.math.big.Big.T__struct_36_asInterface {

}
@:forward @:forward.new abstract T__struct_36_static_extension(stdgo._internal.math.big.Big.T__struct_36_static_extension) from stdgo._internal.math.big.Big.T__struct_36_static_extension to stdgo._internal.math.big.Big.T__struct_36_static_extension {

}
typedef T__struct_36 = stdgo._internal.math.big.Big.T__struct_36;
@:forward @:forward.new abstract T__struct_37_asInterface(stdgo._internal.math.big.Big.T__struct_37_asInterface) from stdgo._internal.math.big.Big.T__struct_37_asInterface to stdgo._internal.math.big.Big.T__struct_37_asInterface {

}
@:forward @:forward.new abstract T__struct_37_static_extension(stdgo._internal.math.big.Big.T__struct_37_static_extension) from stdgo._internal.math.big.Big.T__struct_37_static_extension to stdgo._internal.math.big.Big.T__struct_37_static_extension {

}
typedef T__struct_37 = stdgo._internal.math.big.Big.T__struct_37;
@:forward @:forward.new abstract T__struct_38_asInterface(stdgo._internal.math.big.Big.T__struct_38_asInterface) from stdgo._internal.math.big.Big.T__struct_38_asInterface to stdgo._internal.math.big.Big.T__struct_38_asInterface {

}
@:forward @:forward.new abstract T__struct_38_static_extension(stdgo._internal.math.big.Big.T__struct_38_static_extension) from stdgo._internal.math.big.Big.T__struct_38_static_extension to stdgo._internal.math.big.Big.T__struct_38_static_extension {

}
typedef T__struct_38 = stdgo._internal.math.big.Big.T__struct_38;
@:forward @:forward.new abstract T__struct_39_asInterface(stdgo._internal.math.big.Big.T__struct_39_asInterface) from stdgo._internal.math.big.Big.T__struct_39_asInterface to stdgo._internal.math.big.Big.T__struct_39_asInterface {

}
@:forward @:forward.new abstract T__struct_39_static_extension(stdgo._internal.math.big.Big.T__struct_39_static_extension) from stdgo._internal.math.big.Big.T__struct_39_static_extension to stdgo._internal.math.big.Big.T__struct_39_static_extension {

}
typedef T__struct_39 = stdgo._internal.math.big.Big.T__struct_39;
@:forward @:forward.new abstract T__struct_40_asInterface(stdgo._internal.math.big.Big.T__struct_40_asInterface) from stdgo._internal.math.big.Big.T__struct_40_asInterface to stdgo._internal.math.big.Big.T__struct_40_asInterface {

}
@:forward @:forward.new abstract T__struct_40_static_extension(stdgo._internal.math.big.Big.T__struct_40_static_extension) from stdgo._internal.math.big.Big.T__struct_40_static_extension to stdgo._internal.math.big.Big.T__struct_40_static_extension {

}
typedef T__struct_40 = stdgo._internal.math.big.Big.T__struct_40;
@:forward @:forward.new abstract T__struct_41_asInterface(stdgo._internal.math.big.Big.T__struct_41_asInterface) from stdgo._internal.math.big.Big.T__struct_41_asInterface to stdgo._internal.math.big.Big.T__struct_41_asInterface {

}
@:forward @:forward.new abstract T__struct_41_static_extension(stdgo._internal.math.big.Big.T__struct_41_static_extension) from stdgo._internal.math.big.Big.T__struct_41_static_extension to stdgo._internal.math.big.Big.T__struct_41_static_extension {

}
typedef T__struct_41 = stdgo._internal.math.big.Big.T__struct_41;
@:forward @:forward.new abstract T__struct_42_asInterface(stdgo._internal.math.big.Big.T__struct_42_asInterface) from stdgo._internal.math.big.Big.T__struct_42_asInterface to stdgo._internal.math.big.Big.T__struct_42_asInterface {

}
@:forward @:forward.new abstract T__struct_42_static_extension(stdgo._internal.math.big.Big.T__struct_42_static_extension) from stdgo._internal.math.big.Big.T__struct_42_static_extension to stdgo._internal.math.big.Big.T__struct_42_static_extension {

}
typedef T__struct_42 = stdgo._internal.math.big.Big.T__struct_42;
@:forward @:forward.new abstract T__struct_43_asInterface(stdgo._internal.math.big.Big.T__struct_43_asInterface) from stdgo._internal.math.big.Big.T__struct_43_asInterface to stdgo._internal.math.big.Big.T__struct_43_asInterface {

}
@:forward @:forward.new abstract T__struct_43_static_extension(stdgo._internal.math.big.Big.T__struct_43_static_extension) from stdgo._internal.math.big.Big.T__struct_43_static_extension to stdgo._internal.math.big.Big.T__struct_43_static_extension {

}
typedef T__struct_43 = stdgo._internal.math.big.Big.T__struct_43;
@:forward @:forward.new abstract T__struct_44_asInterface(stdgo._internal.math.big.Big.T__struct_44_asInterface) from stdgo._internal.math.big.Big.T__struct_44_asInterface to stdgo._internal.math.big.Big.T__struct_44_asInterface {

}
@:forward @:forward.new abstract T__struct_44_static_extension(stdgo._internal.math.big.Big.T__struct_44_static_extension) from stdgo._internal.math.big.Big.T__struct_44_static_extension to stdgo._internal.math.big.Big.T__struct_44_static_extension {

}
typedef T__struct_44 = stdgo._internal.math.big.Big.T__struct_44;
@:forward @:forward.new abstract T__struct_45_asInterface(stdgo._internal.math.big.Big.T__struct_45_asInterface) from stdgo._internal.math.big.Big.T__struct_45_asInterface to stdgo._internal.math.big.Big.T__struct_45_asInterface {

}
@:forward @:forward.new abstract T__struct_45_static_extension(stdgo._internal.math.big.Big.T__struct_45_static_extension) from stdgo._internal.math.big.Big.T__struct_45_static_extension to stdgo._internal.math.big.Big.T__struct_45_static_extension {

}
typedef T__struct_45 = stdgo._internal.math.big.Big.T__struct_45;
@:forward @:forward.new abstract T__struct_46_asInterface(stdgo._internal.math.big.Big.T__struct_46_asInterface) from stdgo._internal.math.big.Big.T__struct_46_asInterface to stdgo._internal.math.big.Big.T__struct_46_asInterface {

}
@:forward @:forward.new abstract T__struct_46_static_extension(stdgo._internal.math.big.Big.T__struct_46_static_extension) from stdgo._internal.math.big.Big.T__struct_46_static_extension to stdgo._internal.math.big.Big.T__struct_46_static_extension {

}
typedef T__struct_46 = stdgo._internal.math.big.Big.T__struct_46;
@:forward @:forward.new abstract T__struct_47_asInterface(stdgo._internal.math.big.Big.T__struct_47_asInterface) from stdgo._internal.math.big.Big.T__struct_47_asInterface to stdgo._internal.math.big.Big.T__struct_47_asInterface {

}
@:forward @:forward.new abstract T__struct_47_static_extension(stdgo._internal.math.big.Big.T__struct_47_static_extension) from stdgo._internal.math.big.Big.T__struct_47_static_extension to stdgo._internal.math.big.Big.T__struct_47_static_extension {

}
typedef T__struct_47 = stdgo._internal.math.big.Big.T__struct_47;
@:forward @:forward.new abstract T__struct_48_asInterface(stdgo._internal.math.big.Big.T__struct_48_asInterface) from stdgo._internal.math.big.Big.T__struct_48_asInterface to stdgo._internal.math.big.Big.T__struct_48_asInterface {

}
@:forward @:forward.new abstract T__struct_48_static_extension(stdgo._internal.math.big.Big.T__struct_48_static_extension) from stdgo._internal.math.big.Big.T__struct_48_static_extension to stdgo._internal.math.big.Big.T__struct_48_static_extension {

}
typedef T__struct_48 = stdgo._internal.math.big.Big.T__struct_48;
@:forward @:forward.new abstract T__struct_49_asInterface(stdgo._internal.math.big.Big.T__struct_49_asInterface) from stdgo._internal.math.big.Big.T__struct_49_asInterface to stdgo._internal.math.big.Big.T__struct_49_asInterface {

}
@:forward @:forward.new abstract T__struct_49_static_extension(stdgo._internal.math.big.Big.T__struct_49_static_extension) from stdgo._internal.math.big.Big.T__struct_49_static_extension to stdgo._internal.math.big.Big.T__struct_49_static_extension {

}
typedef T__struct_49 = stdgo._internal.math.big.Big.T__struct_49;
@:forward @:forward.new abstract T__struct_50_asInterface(stdgo._internal.math.big.Big.T__struct_50_asInterface) from stdgo._internal.math.big.Big.T__struct_50_asInterface to stdgo._internal.math.big.Big.T__struct_50_asInterface {

}
@:forward @:forward.new abstract T__struct_50_static_extension(stdgo._internal.math.big.Big.T__struct_50_static_extension) from stdgo._internal.math.big.Big.T__struct_50_static_extension to stdgo._internal.math.big.Big.T__struct_50_static_extension {

}
typedef T__struct_50 = stdgo._internal.math.big.Big.T__struct_50;
@:forward @:forward.new abstract T__struct_51_asInterface(stdgo._internal.math.big.Big.T__struct_51_asInterface) from stdgo._internal.math.big.Big.T__struct_51_asInterface to stdgo._internal.math.big.Big.T__struct_51_asInterface {

}
@:forward @:forward.new abstract T__struct_51_static_extension(stdgo._internal.math.big.Big.T__struct_51_static_extension) from stdgo._internal.math.big.Big.T__struct_51_static_extension to stdgo._internal.math.big.Big.T__struct_51_static_extension {

}
typedef T__struct_51 = stdgo._internal.math.big.Big.T__struct_51;
@:forward @:forward.new abstract T__struct_52_asInterface(stdgo._internal.math.big.Big.T__struct_52_asInterface) from stdgo._internal.math.big.Big.T__struct_52_asInterface to stdgo._internal.math.big.Big.T__struct_52_asInterface {

}
@:forward @:forward.new abstract T__struct_52_static_extension(stdgo._internal.math.big.Big.T__struct_52_static_extension) from stdgo._internal.math.big.Big.T__struct_52_static_extension to stdgo._internal.math.big.Big.T__struct_52_static_extension {

}
typedef T__struct_52 = stdgo._internal.math.big.Big.T__struct_52;
@:forward @:forward.new abstract T__struct_53_asInterface(stdgo._internal.math.big.Big.T__struct_53_asInterface) from stdgo._internal.math.big.Big.T__struct_53_asInterface to stdgo._internal.math.big.Big.T__struct_53_asInterface {

}
@:forward @:forward.new abstract T__struct_53_static_extension(stdgo._internal.math.big.Big.T__struct_53_static_extension) from stdgo._internal.math.big.Big.T__struct_53_static_extension to stdgo._internal.math.big.Big.T__struct_53_static_extension {

}
typedef T__struct_53 = stdgo._internal.math.big.Big.T__struct_53;
@:forward @:forward.new abstract T__struct_54_asInterface(stdgo._internal.math.big.Big.T__struct_54_asInterface) from stdgo._internal.math.big.Big.T__struct_54_asInterface to stdgo._internal.math.big.Big.T__struct_54_asInterface {

}
@:forward @:forward.new abstract T__struct_54_static_extension(stdgo._internal.math.big.Big.T__struct_54_static_extension) from stdgo._internal.math.big.Big.T__struct_54_static_extension to stdgo._internal.math.big.Big.T__struct_54_static_extension {

}
typedef T__struct_54 = stdgo._internal.math.big.Big.T__struct_54;
@:forward @:forward.new abstract T__struct_55_asInterface(stdgo._internal.math.big.Big.T__struct_55_asInterface) from stdgo._internal.math.big.Big.T__struct_55_asInterface to stdgo._internal.math.big.Big.T__struct_55_asInterface {

}
@:forward @:forward.new abstract T__struct_55_static_extension(stdgo._internal.math.big.Big.T__struct_55_static_extension) from stdgo._internal.math.big.Big.T__struct_55_static_extension to stdgo._internal.math.big.Big.T__struct_55_static_extension {

}
typedef T__struct_55 = stdgo._internal.math.big.Big.T__struct_55;
@:forward @:forward.new abstract T__struct_56_asInterface(stdgo._internal.math.big.Big.T__struct_56_asInterface) from stdgo._internal.math.big.Big.T__struct_56_asInterface to stdgo._internal.math.big.Big.T__struct_56_asInterface {

}
@:forward @:forward.new abstract T__struct_56_static_extension(stdgo._internal.math.big.Big.T__struct_56_static_extension) from stdgo._internal.math.big.Big.T__struct_56_static_extension to stdgo._internal.math.big.Big.T__struct_56_static_extension {

}
typedef T__struct_56 = stdgo._internal.math.big.Big.T__struct_56;
@:forward @:forward.new abstract T__struct_57_asInterface(stdgo._internal.math.big.Big.T__struct_57_asInterface) from stdgo._internal.math.big.Big.T__struct_57_asInterface to stdgo._internal.math.big.Big.T__struct_57_asInterface {

}
@:forward @:forward.new abstract T__struct_57_static_extension(stdgo._internal.math.big.Big.T__struct_57_static_extension) from stdgo._internal.math.big.Big.T__struct_57_static_extension to stdgo._internal.math.big.Big.T__struct_57_static_extension {

}
typedef T__struct_57 = stdgo._internal.math.big.Big.T__struct_57;
@:forward @:forward.new abstract T__struct_58_asInterface(stdgo._internal.math.big.Big.T__struct_58_asInterface) from stdgo._internal.math.big.Big.T__struct_58_asInterface to stdgo._internal.math.big.Big.T__struct_58_asInterface {

}
@:forward @:forward.new abstract T__struct_58_static_extension(stdgo._internal.math.big.Big.T__struct_58_static_extension) from stdgo._internal.math.big.Big.T__struct_58_static_extension to stdgo._internal.math.big.Big.T__struct_58_static_extension {

}
typedef T__struct_58 = stdgo._internal.math.big.Big.T__struct_58;
@:forward @:forward.new abstract T__struct_59_asInterface(stdgo._internal.math.big.Big.T__struct_59_asInterface) from stdgo._internal.math.big.Big.T__struct_59_asInterface to stdgo._internal.math.big.Big.T__struct_59_asInterface {

}
@:forward @:forward.new abstract T__struct_59_static_extension(stdgo._internal.math.big.Big.T__struct_59_static_extension) from stdgo._internal.math.big.Big.T__struct_59_static_extension to stdgo._internal.math.big.Big.T__struct_59_static_extension {

}
typedef T__struct_59 = stdgo._internal.math.big.Big.T__struct_59;
@:forward @:forward.new abstract T__struct_60_asInterface(stdgo._internal.math.big.Big.T__struct_60_asInterface) from stdgo._internal.math.big.Big.T__struct_60_asInterface to stdgo._internal.math.big.Big.T__struct_60_asInterface {

}
@:forward @:forward.new abstract T__struct_60_static_extension(stdgo._internal.math.big.Big.T__struct_60_static_extension) from stdgo._internal.math.big.Big.T__struct_60_static_extension to stdgo._internal.math.big.Big.T__struct_60_static_extension {

}
typedef T__struct_60 = stdgo._internal.math.big.Big.T__struct_60;
@:forward @:forward.new abstract T__struct_61_asInterface(stdgo._internal.math.big.Big.T__struct_61_asInterface) from stdgo._internal.math.big.Big.T__struct_61_asInterface to stdgo._internal.math.big.Big.T__struct_61_asInterface {

}
@:forward @:forward.new abstract T__struct_61_static_extension(stdgo._internal.math.big.Big.T__struct_61_static_extension) from stdgo._internal.math.big.Big.T__struct_61_static_extension to stdgo._internal.math.big.Big.T__struct_61_static_extension {

}
typedef T__struct_61 = stdgo._internal.math.big.Big.T__struct_61;
@:forward @:forward.new abstract T__struct_62_asInterface(stdgo._internal.math.big.Big.T__struct_62_asInterface) from stdgo._internal.math.big.Big.T__struct_62_asInterface to stdgo._internal.math.big.Big.T__struct_62_asInterface {

}
@:forward @:forward.new abstract T__struct_62_static_extension(stdgo._internal.math.big.Big.T__struct_62_static_extension) from stdgo._internal.math.big.Big.T__struct_62_static_extension to stdgo._internal.math.big.Big.T__struct_62_static_extension {

}
typedef T__struct_62 = stdgo._internal.math.big.Big.T__struct_62;
@:forward @:forward.new abstract T__struct_63_asInterface(stdgo._internal.math.big.Big.T__struct_63_asInterface) from stdgo._internal.math.big.Big.T__struct_63_asInterface to stdgo._internal.math.big.Big.T__struct_63_asInterface {

}
@:forward @:forward.new abstract T__struct_63_static_extension(stdgo._internal.math.big.Big.T__struct_63_static_extension) from stdgo._internal.math.big.Big.T__struct_63_static_extension to stdgo._internal.math.big.Big.T__struct_63_static_extension {

}
typedef T__struct_63 = stdgo._internal.math.big.Big.T__struct_63;
@:forward @:forward.new abstract T__struct_64_asInterface(stdgo._internal.math.big.Big.T__struct_64_asInterface) from stdgo._internal.math.big.Big.T__struct_64_asInterface to stdgo._internal.math.big.Big.T__struct_64_asInterface {

}
@:forward @:forward.new abstract T__struct_64_static_extension(stdgo._internal.math.big.Big.T__struct_64_static_extension) from stdgo._internal.math.big.Big.T__struct_64_static_extension to stdgo._internal.math.big.Big.T__struct_64_static_extension {

}
typedef T__struct_64 = stdgo._internal.math.big.Big.T__struct_64;
@:forward @:forward.new abstract T__struct_65_asInterface(stdgo._internal.math.big.Big.T__struct_65_asInterface) from stdgo._internal.math.big.Big.T__struct_65_asInterface to stdgo._internal.math.big.Big.T__struct_65_asInterface {

}
@:forward @:forward.new abstract T__struct_65_static_extension(stdgo._internal.math.big.Big.T__struct_65_static_extension) from stdgo._internal.math.big.Big.T__struct_65_static_extension to stdgo._internal.math.big.Big.T__struct_65_static_extension {

}
typedef T__struct_65 = stdgo._internal.math.big.Big.T__struct_65;
@:forward @:forward.new abstract T__struct_66_asInterface(stdgo._internal.math.big.Big.T__struct_66_asInterface) from stdgo._internal.math.big.Big.T__struct_66_asInterface to stdgo._internal.math.big.Big.T__struct_66_asInterface {

}
@:forward @:forward.new abstract T__struct_66_static_extension(stdgo._internal.math.big.Big.T__struct_66_static_extension) from stdgo._internal.math.big.Big.T__struct_66_static_extension to stdgo._internal.math.big.Big.T__struct_66_static_extension {

}
typedef T__struct_66 = stdgo._internal.math.big.Big.T__struct_66;
@:forward @:forward.new abstract T__struct_67_asInterface(stdgo._internal.math.big.Big.T__struct_67_asInterface) from stdgo._internal.math.big.Big.T__struct_67_asInterface to stdgo._internal.math.big.Big.T__struct_67_asInterface {

}
@:forward @:forward.new abstract T__struct_67_static_extension(stdgo._internal.math.big.Big.T__struct_67_static_extension) from stdgo._internal.math.big.Big.T__struct_67_static_extension to stdgo._internal.math.big.Big.T__struct_67_static_extension {

}
typedef T__struct_67 = stdgo._internal.math.big.Big.T__struct_67;
@:forward @:forward.new abstract T__struct_68_asInterface(stdgo._internal.math.big.Big.T__struct_68_asInterface) from stdgo._internal.math.big.Big.T__struct_68_asInterface to stdgo._internal.math.big.Big.T__struct_68_asInterface {

}
@:forward @:forward.new abstract T__struct_68_static_extension(stdgo._internal.math.big.Big.T__struct_68_static_extension) from stdgo._internal.math.big.Big.T__struct_68_static_extension to stdgo._internal.math.big.Big.T__struct_68_static_extension {

}
typedef T__struct_68 = stdgo._internal.math.big.Big.T__struct_68;
@:forward @:forward.new abstract T__struct_69_asInterface(stdgo._internal.math.big.Big.T__struct_69_asInterface) from stdgo._internal.math.big.Big.T__struct_69_asInterface to stdgo._internal.math.big.Big.T__struct_69_asInterface {

}
@:forward @:forward.new abstract T__struct_69_static_extension(stdgo._internal.math.big.Big.T__struct_69_static_extension) from stdgo._internal.math.big.Big.T__struct_69_static_extension to stdgo._internal.math.big.Big.T__struct_69_static_extension {

}
typedef T__struct_69 = stdgo._internal.math.big.Big.T__struct_69;
typedef Word = stdgo._internal.math.big.Big.Word;
typedef T_funVV = stdgo._internal.math.big.Big.T_funVV;
typedef T_funVW = stdgo._internal.math.big.Big.T_funVW;
typedef T_funVWW = stdgo._internal.math.big.Big.T_funVWW;
typedef T_funWVW = stdgo._internal.math.big.Big.T_funWVW;
typedef Bits = stdgo._internal.math.big.Big.Bits;
typedef T_form = stdgo._internal.math.big.Big.T_form;
typedef RoundingMode = stdgo._internal.math.big.Big.RoundingMode;
typedef Accuracy = stdgo._internal.math.big.Big.Accuracy;
typedef T_funZZ = stdgo._internal.math.big.Big.T_funZZ;
typedef T_bitFun = stdgo._internal.math.big.Big.T_bitFun;
typedef T_nat = stdgo._internal.math.big.Big.T_nat;
typedef T_funNN = stdgo._internal.math.big.Big.T_funNN;
typedef T_ratBinFun = stdgo._internal.math.big.Big.T_ratBinFun;
function testFunVV(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVV(t);
    }
function benchmarkAddVV(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddVV(b);
    }
function benchmarkSubVV(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSubVV(b);
    }
function testFunVW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVW(t);
    }
/**
    Extended testing to addVW and subVW using various kinds of input data.
    We utilize the results of addVW_g and subVW_g as golden reference to check
    correctness.
**/
function testFunVWExt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVWExt(t);
    }
function testShiftOverlap(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testShiftOverlap(t);
    }
function testIssue31084(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue31084(t);
    }
function testIssue42838(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue42838(t);
    }
function benchmarkAddVW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddVW(b);
    }
/**
    Benchmarking addVW using vector of maximum uint to force carry flag set
**/
function benchmarkAddVWext(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddVWext(b);
    }
function benchmarkSubVW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSubVW(b);
    }
/**
    Benchmarking subVW using vector of zero to force carry flag set
**/
function benchmarkSubVWext(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSubVWext(b);
    }
function testFunVWW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunVWW(t);
    }
function testMulWW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulWW(t);
    }
function testMulAddWWW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulAddWWW(t);
    }
function testDivWW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDivWW(t);
    }
function benchmarkMulAddVWW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkMulAddVWW(b);
    }
function benchmarkAddMulVVW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkAddMulVVW(b);
    }
function benchmarkDivWVW(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkDivWVW(b);
    }
function benchmarkNonZeroShifts(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNonZeroShifts(b);
    }
function testMulBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulBits(t);
    }
function testNormBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNormBits(t);
    }
function testFromBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFromBits(t);
    }
function testCalibrate(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testCalibrate(t);
    }
function testDecimalString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDecimalString(t);
    }
function testDecimalInit(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDecimalInit(t);
    }
function testDecimalRounding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDecimalRounding(t);
    }
function benchmarkDecimalConversion(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkDecimalConversion(b);
    }
function benchmarkFloatString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatString(b);
    }
/**
    NewFloat allocates and returns a new Float set to x,
    with precision 53 and rounding mode ToNearestEven.
    NewFloat panics with ErrNaN if x is a NaN.
**/
function newFloat(x:StdTypes.Float):Float_ {
        return stdgo._internal.math.big.Big.newFloat(x);
    }
function testFloatZeroValue(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatZeroValue(t);
    }
function testFloatSetPrec(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetPrec(t);
    }
function testFloatMinPrec(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMinPrec(t);
    }
function testFloatSign(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSign(t);
    }
function testFloatMantExp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMantExp(t);
    }
function testFloatMantExpAliasing(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMantExpAliasing(t);
    }
function testFloatSetMantExp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetMantExp(t);
    }
function testFloatPredicates(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatPredicates(t);
    }
function testFloatIsInt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatIsInt(t);
    }
/**
    TestFloatRound tests basic rounding.
**/
function testFloatRound(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatRound(t);
    }
/**
    TestFloatRound24 tests that rounding a float64 to 24 bits
    matches IEEE-754 rounding to nearest when converting a
    float64 to a float32 (excluding denormal numbers).
**/
function testFloatRound24(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatRound24(t);
    }
function testFloatSetUint64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetUint64(t);
    }
function testFloatSetInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetInt64(t);
    }
function testFloatSetFloat64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetFloat64(t);
    }
function testFloatSetInt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetInt(t);
    }
function testFloatSetRat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetRat(t);
    }
function testFloatSetInf(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetInf(t);
    }
function testFloatUint64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatUint64(t);
    }
function testFloatInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatInt64(t);
    }
function testFloatFloat32(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatFloat32(t);
    }
function testFloatFloat64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatFloat64(t);
    }
function testFloatInt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatInt(t);
    }
function testFloatRat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatRat(t);
    }
function testFloatAbs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAbs(t);
    }
function testFloatNeg(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatNeg(t);
    }
function testFloatInc(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatInc(t);
    }
/**
    TestFloatAdd tests Float.Add/Sub by comparing the result of a "manual"
    addition/subtraction of arguments represented by Bits values with the
    respective Float addition/subtraction for a variety of precisions
    and rounding modes.
**/
function testFloatAdd(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAdd(t);
    }
/**
    TestFloatAddRoundZero tests Float.Add/Sub rounding when the result is exactly zero.
    x + (-x) or x - x for non-zero x should be +0 in all cases except when
    the rounding mode is ToNegativeInf in which case it should be -0.
**/
function testFloatAddRoundZero(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAddRoundZero(t);
    }
/**
    TestFloatAdd32 tests that Float.Add/Sub of numbers with
    24bit mantissa behaves like float32 addition/subtraction
    (excluding denormal numbers).
**/
function testFloatAdd32(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAdd32(t);
    }
/**
    TestFloatAdd64 tests that Float.Add/Sub of numbers with
    53bit mantissa behaves like float64 addition/subtraction.
**/
function testFloatAdd64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatAdd64(t);
    }
function testIssue20490(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue20490(t);
    }
/**
    TestFloatMul tests Float.Mul/Quo by comparing the result of a "manual"
    multiplication/division of arguments represented by Bits values with the
    respective Float multiplication/division for a variety of precisions
    and rounding modes.
**/
function testFloatMul(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMul(t);
    }
/**
    TestFloatMul64 tests that Float.Mul/Quo of numbers with
    53bit mantissa behaves like float64 multiplication/division.
**/
function testFloatMul64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatMul64(t);
    }
function testIssue6866(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue6866(t);
    }
function testFloatQuo(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatQuo(t);
    }
/**
    TestFloatQuoSmoke tests all divisions x/y for values x, y in the range [-n, +n];
    it serves as a smoke test for basic correctness of division.
**/
function testFloatQuoSmoke(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatQuoSmoke(t);
    }
/**
    TestFloatArithmeticSpecialValues tests that Float operations produce the
    correct results for combinations of zero (±0), finite (±1 and ±2.71828),
    and infinite (±Inf) operands.
**/
function testFloatArithmeticSpecialValues(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatArithmeticSpecialValues(t);
    }
function testFloatArithmeticOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatArithmeticOverflow(t);
    }
/**
    For rounding modes ToNegativeInf and ToPositiveInf, rounding is affected
    by the sign of the value to be rounded. Test that rounding happens after
    the sign of a result has been set.
    This test uses specific values that are known to fail if rounding is
    "factored" out before setting the result sign.
**/
function testFloatArithmeticRounding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatArithmeticRounding(t);
    }
/**
    TestFloatCmpSpecialValues tests that Cmp produces the correct results for
    combinations of zero (±0), finite (±1 and ±2.71828), and infinite (±Inf)
    operands.
**/
function testFloatCmpSpecialValues(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatCmpSpecialValues(t);
    }
function benchmarkFloatAdd(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatAdd(b);
    }
function benchmarkFloatSub(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatSub(b);
    }
/**
    ParseFloat is like f.Parse(s, base) with f set to the given precision
    and rounding mode.
**/
function parseFloat(s:String, base:StdTypes.Int, prec:std.UInt, mode:RoundingMode):stdgo.Tuple.Tuple3<Float_, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.math.big.Big.parseFloat(s, base, prec, mode);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
function testFloatSetFloat64String(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSetFloat64String(t);
    }
function testFloat64Text(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64Text(t);
    }
function testFloatText(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatText(t);
    }
function testFloatFormat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatFormat(t);
    }
function benchmarkParseFloatSmallExp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkParseFloatSmallExp(b);
    }
function benchmarkParseFloatLargeExp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkParseFloatLargeExp(b);
    }
function testFloatScan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatScan(t);
    }
function testFloatGobEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatGobEncoding(t);
    }
function testFloatCorruptGob(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatCorruptGob(t);
    }
function testFloatJSONEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatJSONEncoding(t);
    }
function testFloatGobDecodeShortBuffer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatGobDecodeShortBuffer(t);
    }
function testFloatGobDecodeInvalid(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatGobDecodeInvalid(t);
    }
function benchmarkGCD10x10(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x10(b);
    }
function benchmarkGCD10x100(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x100(b);
    }
function benchmarkGCD10x1000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x1000(b);
    }
function benchmarkGCD10x10000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x10000(b);
    }
function benchmarkGCD10x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10x100000(b);
    }
function benchmarkGCD100x100(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x100(b);
    }
function benchmarkGCD100x1000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x1000(b);
    }
function benchmarkGCD100x10000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x10000(b);
    }
function benchmarkGCD100x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100x100000(b);
    }
function benchmarkGCD1000x1000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD1000x1000(b);
    }
function benchmarkGCD1000x10000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD1000x10000(b);
    }
function benchmarkGCD1000x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD1000x100000(b);
    }
function benchmarkGCD10000x10000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10000x10000(b);
    }
function benchmarkGCD10000x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD10000x100000(b);
    }
function benchmarkGCD100000x100000(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkGCD100000x100000(b);
    }
function testHilbert(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testHilbert(t);
    }
function benchmarkHilbert(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkHilbert(b);
    }
/**
    NewInt allocates and returns a new Int set to x.
**/
function newInt(x:haxe.Int64):Int_ {
        return stdgo._internal.math.big.Big.newInt(x);
    }
/**
    Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
    The y argument must be an odd integer.
**/
function jacobi(x:Int_, y:Int_):StdTypes.Int {
        return stdgo._internal.math.big.Big.jacobi(x, y);
    }
function testSignZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSignZ(t);
    }
function testSetZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetZ(t);
    }
function testAbsZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testAbsZ(t);
    }
function testSumZZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSumZZ(t);
    }
function testProdZZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testProdZZ(t);
    }
function testMul(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMul(t);
    }
function testMulRangeZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulRangeZ(t);
    }
function testBinomial(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBinomial(t);
    }
function benchmarkBinomial(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBinomial(b);
    }
function testDivisionSigns(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDivisionSigns(t);
    }
function testBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBits(t);
    }
function testSetBytes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetBytes(t);
    }
function testBytes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBytes(t);
    }
function testQuo(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testQuo(t);
    }
function testQuoStepD6(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testQuoStepD6(t);
    }
function benchmarkQuoRem(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkQuoRem(b);
    }
function testBitLen(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBitLen(t);
    }
function testExp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testExp(t);
    }
function benchmarkExp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExp(b);
    }
function benchmarkExpMont(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExpMont(b);
    }
function benchmarkExp2(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExp2(b);
    }
function testGcd(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGcd(t);
    }
function testRsh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRsh(t);
    }
function testRshSelf(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRshSelf(t);
    }
function testLsh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLsh(t);
    }
function testLshSelf(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLshSelf(t);
    }
function testLshRsh(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLshRsh(t);
    }
function testCmpAbs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testCmpAbs(t);
    }
function testIntCmpSelf(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntCmpSelf(t);
    }
function testInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testInt64(t);
    }
function testUint64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testUint64(t);
    }
function testBitSet(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBitSet(t);
    }
function testTrailingZeroBits(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testTrailingZeroBits(t);
    }
function benchmarkBitset(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitset(b);
    }
function benchmarkBitsetNeg(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitsetNeg(b);
    }
function benchmarkBitsetOrig(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitsetOrig(b);
    }
function benchmarkBitsetNegOrig(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkBitsetNegOrig(b);
    }
function benchmarkModSqrt225_Tonelli(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt225_Tonelli(b);
    }
function benchmarkModSqrt225_3Mod4(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt225_3Mod4(b);
    }
function benchmarkModSqrt231_Tonelli(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt231_Tonelli(b);
    }
function benchmarkModSqrt231_5Mod8(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModSqrt231_5Mod8(b);
    }
function testBitwise(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBitwise(t);
    }
function testNot(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNot(t);
    }
function testModInverse(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testModInverse(t);
    }
function benchmarkModInverse(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkModInverse(b);
    }
function testModSqrt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testModSqrt(t);
    }
function testJacobi(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testJacobi(t);
    }
function testJacobiPanic(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testJacobiPanic(t);
    }
function testIssue2607(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue2607(t);
    }
function testSqrt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSqrt(t);
    }
/**
    We can't test this together with the other Exp tests above because
    it requires a different receiver setup.
**/
function testIssue22830(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue22830(t);
    }
function benchmarkSqrt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkSqrt(b);
    }
function benchmarkIntSqr(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkIntSqr(b);
    }
function benchmarkDiv(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkDiv(b);
    }
function testFillBytes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFillBytes(t);
    }
function testNewIntMinInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNewIntMinInt64(t);
    }
function testNewIntAllocs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNewIntAllocs(t);
    }
function testFloat64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64(t);
    }
function testIntText(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntText(t);
    }
function testAppendText(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testAppendText(t);
    }
function testGetString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGetString(t);
    }
function testSetString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetString(t);
    }
function testFormat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFormat(t);
    }
function testScan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScan(t);
    }
function testIntGobEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntGobEncoding(t);
    }
/**
    Sending a nil Int pointer (inside a slice) on a round trip through gob should yield a zero.
    TODO: top-level nils.
**/
function testGobEncodingNilIntInSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGobEncodingNilIntInSlice(t);
    }
function testIntJSONEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntJSONEncoding(t);
    }
function testIntJSONEncodingNil(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntJSONEncodingNil(t);
    }
function testIntXMLEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIntXMLEncoding(t);
    }
/**
    Tests that the linker is able to remove references to Float, Rat,
    and Int if unused (notably, not used by init).
**/
function testLinkerGC(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLinkerGC(t);
    }
function testCmp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testCmp(t);
    }
function testSet(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSet(t);
    }
function testFunNN(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFunNN(t);
    }
function testMulRangeN(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulRangeN(t);
    }
/**
    TestMulUnbalanced tests that multiplying numbers of different lengths
    does not cause deep recursion and in turn allocate too much memory.
    Test case for issue 3807.
**/
function testMulUnbalanced(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMulUnbalanced(t);
    }
function benchmarkMul(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkMul(b);
    }
function benchmarkNatMul(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNatMul(b);
    }
function testNLZ(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNLZ(t);
    }
function testShiftLeft(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testShiftLeft(t);
    }
function testShiftRight(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testShiftRight(t);
    }
function benchmarkZeroShifts(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkZeroShifts(b);
    }
function testModW(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testModW(t);
    }
function testMontgomery(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMontgomery(t);
    }
function testExpNN(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testExpNN(t);
    }
function fuzzExpMont(f:stdgo._internal.testing.Testing.F):Void {
        stdgo._internal.math.big.Big.fuzzExpMont(f);
    }
function benchmarkExp3Power(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkExp3Power(b);
    }
function testFibo(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFibo(t);
    }
function benchmarkFibo(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFibo(b);
    }
function testBit(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testBit(t);
    }
function testSticky(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSticky(t);
    }
function testSqr(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSqr(t);
    }
function benchmarkNatSqr(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNatSqr(b);
    }
function testNatSubMod2N(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNatSubMod2N(t);
    }
function benchmarkNatSetBytes(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkNatSetBytes(b);
    }
function testNatDiv(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testNatDiv(t);
    }
/**
    TestIssue37499 triggers the edge case of divBasic where
    the inaccurate estimate of the first word's quotient
    happens at the very beginning of the loop.
**/
function testIssue37499(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue37499(t);
    }
/**
    TestIssue42552 triggers an edge case of recursive division
    where the first division loop is never entered, and correcting
    the remainder takes exactly two iterations in the final loop.
**/
function testIssue42552(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue42552(t);
    }
function testMaxBase(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMaxBase(t);
    }
function testString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testString(t);
    }
function testScanBase(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanBase(t);
    }
/**
    Test case for BenchmarkScanPi.
**/
function testScanPi(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanPi(t);
    }
function testScanPiParallel(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanPiParallel(t);
    }
function benchmarkScanPi(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkScanPi(b);
    }
function benchmarkStringPiParallel(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkStringPiParallel(b);
    }
function benchmarkScan(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkScan(b);
    }
function benchmarkString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkString(b);
    }
function benchmarkLeafSize(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkLeafSize(b);
    }
function leafSizeHelper(b:stdgo._internal.testing.Testing.B, base:StdTypes.Int, size:StdTypes.Int):Void {
        stdgo._internal.math.big.Big.leafSizeHelper(b, base, size);
    }
function testStringPowers(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testStringPowers(t);
    }
function testProbablyPrime(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testProbablyPrime(t);
    }
function benchmarkProbablyPrime(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkProbablyPrime(b);
    }
function testMillerRabinPseudoprimes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testMillerRabinPseudoprimes(t);
    }
function testLucasPseudoprimes(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testLucasPseudoprimes(t);
    }
/**
    NewRat creates a new Rat with numerator a and denominator b.
**/
function newRat(a:haxe.Int64, b:haxe.Int64):Rat {
        return stdgo._internal.math.big.Big.newRat(a, b);
    }
function testZeroRat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testZeroRat(t);
    }
function testRatSign(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSign(t);
    }
function testRatCmp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatCmp(t);
    }
function testIsInt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIsInt(t);
    }
function testRatAbs(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatAbs(t);
    }
function testRatNeg(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatNeg(t);
    }
function testRatInv(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatInv(t);
    }
function testRatBin(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatBin(t);
    }
function testIssue820(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue820(t);
    }
function testRatSetFrac64Rat(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetFrac64Rat(t);
    }
function testIssue2379(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue2379(t);
    }
function testIssue3521(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue3521(t);
    }
function testFloat32Distribution(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat32Distribution(t);
    }
function testFloat64Distribution(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64Distribution(t);
    }
/**
    TestSetFloat64NonFinite checks that SetFloat64 of a non-finite value
    returns nil.
**/
function testSetFloat64NonFinite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testSetFloat64NonFinite(t);
    }
function testIsFinite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIsFinite(t);
    }
function testRatSetInt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetInt64(t);
    }
function testRatSetUint64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetUint64(t);
    }
function benchmarkRatCmp(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkRatCmp(b);
    }
/**
    TestIssue34919 verifies that a Rat's denominator is not modified
    when simply accessing the Rat value.
**/
function testIssue34919(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue34919(t);
    }
function testDenomRace(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testDenomRace(t);
    }
function testScanExponent(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testScanExponent(t);
    }
function testRatSetString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetString(t);
    }
function testRatSetStringZero(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatSetStringZero(t);
    }
function testRatScan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatScan(t);
    }
function testFloatString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatString(t);
    }
function testFloat32SpecialCases(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat32SpecialCases(t);
    }
function testFloat64SpecialCases(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloat64SpecialCases(t);
    }
function testIssue31184(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue31184(t);
    }
function testIssue45910(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testIssue45910(t);
    }
function testRatGobEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatGobEncoding(t);
    }
/**
    Sending a nil Rat pointer (inside a slice) on a round trip through gob should yield a zero.
    TODO: top-level nils.
**/
function testGobEncodingNilRatInSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testGobEncodingNilRatInSlice(t);
    }
function testRatJSONEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatJSONEncoding(t);
    }
function testRatXMLEncoding(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatXMLEncoding(t);
    }
function testRatGobDecodeShortBuffer(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testRatGobDecodeShortBuffer(t);
    }
/**
    TestFloatSqrt64 tests that Float.Sqrt of numbers with 53bit mantissa
    behaves like float math.Sqrt.
**/
function testFloatSqrt64(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSqrt64(t);
    }
function testFloatSqrt(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSqrt(t);
    }
function testFloatSqrtSpecial(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.math.big.Big.testFloatSqrtSpecial(t);
    }
function benchmarkFloatSqrt(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.math.big.Big.benchmarkFloatSqrt(b);
    }
@:forward @:forward.new abstract T_decimal_asInterface(stdgo._internal.math.big.Big.T_decimal_asInterface) from stdgo._internal.math.big.Big.T_decimal_asInterface to stdgo._internal.math.big.Big.T_decimal_asInterface {

}
@:forward @:forward.new abstract T_decimal_static_extension(stdgo._internal.math.big.Big.T_decimal_static_extension) from stdgo._internal.math.big.Big.T_decimal_static_extension to stdgo._internal.math.big.Big.T_decimal_static_extension {

}
@:forward @:forward.new abstract Float__asInterface(stdgo._internal.math.big.Big.Float__asInterface) from stdgo._internal.math.big.Big.Float__asInterface to stdgo._internal.math.big.Big.Float__asInterface {

}
@:forward @:forward.new abstract Float__static_extension(stdgo._internal.math.big.Big.Float__static_extension) from stdgo._internal.math.big.Big.Float__static_extension to stdgo._internal.math.big.Big.Float__static_extension {

}
@:forward @:forward.new abstract ErrNaN_asInterface(stdgo._internal.math.big.Big.ErrNaN_asInterface) from stdgo._internal.math.big.Big.ErrNaN_asInterface to stdgo._internal.math.big.Big.ErrNaN_asInterface {

}
@:forward @:forward.new abstract ErrNaN_static_extension(stdgo._internal.math.big.Big.ErrNaN_static_extension) from stdgo._internal.math.big.Big.ErrNaN_static_extension to stdgo._internal.math.big.Big.ErrNaN_static_extension {

}
@:forward @:forward.new abstract T_matrix_asInterface(stdgo._internal.math.big.Big.T_matrix_asInterface) from stdgo._internal.math.big.Big.T_matrix_asInterface to stdgo._internal.math.big.Big.T_matrix_asInterface {

}
@:forward @:forward.new abstract T_matrix_static_extension(stdgo._internal.math.big.Big.T_matrix_static_extension) from stdgo._internal.math.big.Big.T_matrix_static_extension to stdgo._internal.math.big.Big.T_matrix_static_extension {

}
@:forward @:forward.new abstract Int__asInterface(stdgo._internal.math.big.Big.Int__asInterface) from stdgo._internal.math.big.Big.Int__asInterface to stdgo._internal.math.big.Big.Int__asInterface {

}
@:forward @:forward.new abstract Int__static_extension(stdgo._internal.math.big.Big.Int__static_extension) from stdgo._internal.math.big.Big.Int__static_extension to stdgo._internal.math.big.Big.Int__static_extension {

}
@:forward @:forward.new abstract T_byteReader_asInterface(stdgo._internal.math.big.Big.T_byteReader_asInterface) from stdgo._internal.math.big.Big.T_byteReader_asInterface to stdgo._internal.math.big.Big.T_byteReader_asInterface {

}
@:forward @:forward.new abstract T_byteReader_static_extension(stdgo._internal.math.big.Big.T_byteReader_static_extension) from stdgo._internal.math.big.Big.T_byteReader_static_extension to stdgo._internal.math.big.Big.T_byteReader_static_extension {

}
@:forward @:forward.new abstract Rat_asInterface(stdgo._internal.math.big.Big.Rat_asInterface) from stdgo._internal.math.big.Big.Rat_asInterface to stdgo._internal.math.big.Big.Rat_asInterface {

}
@:forward @:forward.new abstract Rat_static_extension(stdgo._internal.math.big.Big.Rat_static_extension) from stdgo._internal.math.big.Big.Rat_static_extension to stdgo._internal.math.big.Big.Rat_static_extension {

}
@:forward @:forward.new abstract Bits_asInterface(stdgo._internal.math.big.Big.Bits_asInterface) from stdgo._internal.math.big.Big.Bits_asInterface to stdgo._internal.math.big.Big.Bits_asInterface {

}
@:forward @:forward.new abstract Bits_static_extension(stdgo._internal.math.big.Big.Bits_static_extension) from stdgo._internal.math.big.Big.Bits_static_extension to stdgo._internal.math.big.Big.Bits_static_extension {

}
@:forward @:forward.new abstract RoundingMode_asInterface(stdgo._internal.math.big.Big.RoundingMode_asInterface) from stdgo._internal.math.big.Big.RoundingMode_asInterface to stdgo._internal.math.big.Big.RoundingMode_asInterface {

}
@:forward @:forward.new abstract RoundingMode_static_extension(stdgo._internal.math.big.Big.RoundingMode_static_extension) from stdgo._internal.math.big.Big.RoundingMode_static_extension to stdgo._internal.math.big.Big.RoundingMode_static_extension {

}
@:forward @:forward.new abstract Accuracy_asInterface(stdgo._internal.math.big.Big.Accuracy_asInterface) from stdgo._internal.math.big.Big.Accuracy_asInterface to stdgo._internal.math.big.Big.Accuracy_asInterface {

}
@:forward @:forward.new abstract Accuracy_static_extension(stdgo._internal.math.big.Big.Accuracy_static_extension) from stdgo._internal.math.big.Big.Accuracy_static_extension to stdgo._internal.math.big.Big.Accuracy_static_extension {

}
@:forward @:forward.new abstract T_nat_asInterface(stdgo._internal.math.big.Big.T_nat_asInterface) from stdgo._internal.math.big.Big.T_nat_asInterface to stdgo._internal.math.big.Big.T_nat_asInterface {

}
@:forward @:forward.new abstract T_nat_static_extension(stdgo._internal.math.big.Big.T_nat_static_extension) from stdgo._internal.math.big.Big.T_nat_static_extension to stdgo._internal.math.big.Big.T_nat_static_extension {

}
