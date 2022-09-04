package stdgo.time;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// std0x records the std values for "01", "02", ..., "06".
**/
var _std0x:GoArray<GoInt> = (new GoArray<GoInt>((260 : GoInt), (265 : GoInt), (526 : GoInt), (528 : GoInt), (530 : GoInt), (276 : GoInt)) : GoArray<GoInt>);

var _longDayNames:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str("Sunday") : GoString), (Go.str("Monday") : GoString), (Go.str("Tuesday") : GoString),
	(Go.str("Wednesday") : GoString), (Go.str("Thursday") : GoString), (Go.str("Friday") : GoString), (Go.str("Saturday") : GoString)) : Slice<GoString>);

var _shortDayNames:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str("Sun") : GoString), (Go.str("Mon") : GoString), (Go.str("Tue") : GoString),
	(Go.str("Wed") : GoString), (Go.str("Thu") : GoString), (Go.str("Fri") : GoString), (Go.str("Sat") : GoString)) : Slice<GoString>);

var _shortMonthNames:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str("Jan") : GoString), (Go.str("Feb") : GoString), (Go.str("Mar") : GoString),
	(Go.str("Apr") : GoString), (Go.str("May") : GoString), (Go.str("Jun") : GoString), (Go.str("Jul") : GoString), (Go.str("Aug") : GoString),
	(Go.str("Sep") : GoString), (Go.str("Oct") : GoString), (Go.str("Nov") : GoString), (Go.str("Dec") : GoString)) : Slice<GoString>);

var _longMonthNames:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str("January") : GoString), (Go.str("February") : GoString),
	(Go.str("March") : GoString), (Go.str("April") : GoString), (Go.str("May") : GoString), (Go.str("June") : GoString), (Go.str("July") : GoString),
	(Go.str("August") : GoString), (Go.str("September") : GoString), (Go.str("October") : GoString), (Go.str("November") : GoString),
	(Go.str("December") : GoString)) : Slice<GoString>);

/**
	// Never printed, just needs to be non-nil for return by atoi.
**/
var _atoiError:stdgo.Error = stdgo.errors.Errors.new_((Go.str("time: invalid number") : GoString));

var _errBad:stdgo.Error = stdgo.errors.Errors.new_((Go.str("bad value for field") : GoString));
var _errLeadingInt:stdgo.Error = stdgo.errors.Errors.new_((Go.str("time: bad [0-9]*") : GoString));

var _unitMap:GoMap<GoString, GoUInt64> = {
	final x = new stdgo.GoMap.GoObjectMap<GoString,
		GoUInt64>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.basic(uint64_kind))));
	@:privateAccess x._keys = [
		(Go.str("ns") : GoString),
		(Go.str("us") : GoString),
		(Go.str("µs") : GoString),
		(Go.str("μs") : GoString),
		(Go.str("ms") : GoString),
		(Go.str("s") : GoString),
		(Go.str("m") : GoString),
		(Go.str("h") : GoString)
	];
	@:privateAccess x._values = [
		((1 : Duration) : GoUInt64),
		((1000 : Duration) : GoUInt64),
		((1000 : Duration) : GoUInt64),
		((1000 : Duration) : GoUInt64),
		((1000000 : Duration) : GoUInt64),
		((1000000000 : Duration) : GoUInt64),
		(("60000000000" : Duration) : GoUInt64),
		(("3600000000000" : Duration) : GoUInt64)
	];
	x;
};

/**
	// daysBefore[m] counts the number of days in a non-leap year
	// before month m begins. There is an entry for m=12, counting
	// the number of days before January of next year (365).
**/
var _daysBefore:GoArray<GoInt32> = (new GoArray<GoInt32>((0 : GoInt32), (31 : GoInt32), (59 : GoInt32), (90 : GoInt32), (120 : GoInt32), (151 : GoInt32),
	(181 : GoInt32), (212 : GoInt32), (243 : GoInt32), (273 : GoInt32), (304 : GoInt32), (334 : GoInt32), (365 : GoInt32)) : GoArray<GoInt32>);

/**
	// Monotonic times are reported as offsets from startNano.
	// We initialize startNano to runtimeNano() - 1 so that on systems where
	// monotonic time resolution is fairly low (e.g. Windows 2008
	// which appears to have a default resolution of 15ms),
	// we avoid ever reporting a monotonic time of 0.
	// (Callers may want to use 0 as "time not set".)
**/
var _startNano:GoInt64 = _runtimeNano() - (1 : GoInt64);

/**
	// utcLoc is separate so that get can refer to &utcLoc
	// and ensure that it never returns a nil *Location,
	// even if a badly behaved client has changed UTC.
**/
var _utcLoc:Location = ({_name: (Go.str("UTC") : GoString)} : Location);

/**
	// UTC represents Universal Coordinated Time (UTC).
**/
var utc:Location = _utcLoc;

/**
	// Local represents the system's local time zone.
	// On Unix systems, Local consults the TZ environment
	// variable to find the time zone to use. No TZ means
	// use the system default /etc/localtime.
	// TZ="" means use UTC.
	// TZ="foo" means use file foo in the system timezone directory.
**/
var local:Location = _localLoc;

var _errLocation:stdgo.Error = stdgo.errors.Errors.new_((Go.str("time: invalid location name") : GoString));

var _platformZoneSources:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str("/usr/share/zoneinfo/") : GoString),
	(Go.str("/usr/share/lib/zoneinfo/") : GoString), (Go.str("/usr/lib/locale/TZ/") : GoString)) : Slice<GoString>);

var _badData:stdgo.Error = stdgo.errors.Errors.new_((Go.str("malformed time zone information") : GoString));

var gorootZoneSource:GoString -> {
	var _0:GoString;
	var _1:Bool;
} = _gorootZoneSource;

var parseTimeZone:GoString -> {
	var _0:GoInt;
	var _1:Bool;
} = _parseTimeZone;

var setMono:(Ref<Time>, GoInt64) -> Void = (Time_static_extension)._setMono;
var getMono:Ref<Time>->GoInt64 = (Time_static_extension)._mono;
var errLocation:stdgo.Error = _errLocation;

var readFile:GoString -> {
	var _0:Slice<GoUInt8>;
	var _1:stdgo.Error;
} = _readFile;

var loadTzinfo:(GoString, GoString) -> {
	var _0:Slice<GoUInt8>;
	var _1:stdgo.Error;
} = _loadTzinfo;

var nextStdChunk:GoString -> {
	var _0:GoString;
	var _1:GoInt;
	var _2:GoString;
} = _nextStdChunk;

var tzset:(GoString, GoInt64, GoInt64) -> {
	var _0:GoString;
	var _1:GoInt;
	var _2:GoInt64;
	var _3:GoInt64;
	var _4:Bool;
	var _5:Bool;
} = _tzset;

var tzsetName:GoString -> {
	var _0:GoString;
	var _1:GoString;
	var _2:Bool;
} = _tzsetName;

var tzsetOffset:GoString -> {
	var _0:GoInt;
	var _1:GoString;
	var _2:Bool;
} = _tzsetOffset;

/**
	// StdChunkNames maps from nextStdChunk results to the matched strings.
**/
var stdChunkNames:GoMap<GoInt, GoString> = {
	final x = new stdgo.GoMap.GoObjectMap<GoInt,
		GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(int_kind),
			stdgo.reflect.Reflect.GoType.basic(string_kind))));
	@:privateAccess x._keys = [
		(0 : GoInt), (257 : GoInt), (258 : GoInt), (259 : GoInt), (260 : GoInt), (261 : GoInt), (262 : GoInt), (263 : GoInt), (264 : GoInt), (265 : GoInt),
		(266 : GoInt), (267 : GoInt), (524 : GoInt), (525 : GoInt), (526 : GoInt), (527 : GoInt), (528 : GoInt), (529 : GoInt), (530 : GoInt), (275 : GoInt),
		(276 : GoInt), (533 : GoInt), (534 : GoInt), (23 : GoInt), (24 : GoInt), (25 : GoInt), (26 : GoInt), (27 : GoInt), (28 : GoInt), (29 : GoInt),
		(30 : GoInt), (31 : GoInt), (32 : GoInt), (33 : GoInt), (65570 : GoInt), (131106 : GoInt), (196642 : GoInt), (262178 : GoInt), (327714 : GoInt),
		(393250 : GoInt), (458786 : GoInt), (524322 : GoInt), (589858 : GoInt), (65571 : GoInt), (131107 : GoInt), (196643 : GoInt), (262179 : GoInt),
		(327715 : GoInt), (393251 : GoInt), (458787 : GoInt), (524323 : GoInt), (589859 : GoInt)];
	@:privateAccess x._values = [
		(Go.str() : GoString),
		(Go.str("January") : GoString),
		(Go.str("Jan") : GoString),
		(Go.str("1") : GoString),
		(Go.str("01") : GoString),
		(Go.str("Monday") : GoString),
		(Go.str("Mon") : GoString),
		(Go.str("2") : GoString),
		(Go.str("_2") : GoString),
		(Go.str("02") : GoString),
		(Go.str("__2") : GoString),
		(Go.str("002") : GoString),
		(Go.str("15") : GoString),
		(Go.str("3") : GoString),
		(Go.str("03") : GoString),
		(Go.str("4") : GoString),
		(Go.str("04") : GoString),
		(Go.str("5") : GoString),
		(Go.str("05") : GoString),
		(Go.str("2006") : GoString),
		(Go.str("06") : GoString),
		(Go.str("PM") : GoString),
		(Go.str("pm") : GoString),
		(Go.str("MST") : GoString),
		(Go.str("Z0700") : GoString),
		(Go.str("Z070000") : GoString),
		(Go.str("Z07") : GoString),
		(Go.str("Z07:00") : GoString),
		(Go.str("Z07:00:00") : GoString),
		(Go.str("-0700") : GoString),
		(Go.str("-070000") : GoString),
		(Go.str("-07") : GoString),
		(Go.str("-07:00") : GoString),
		(Go.str("-07:00:00") : GoString),
		(Go.str(".0") : GoString),
		(Go.str(".00") : GoString),
		(Go.str(".000") : GoString),
		(Go.str(".0000") : GoString),
		(Go.str(".00000") : GoString),
		(Go.str(".000000") : GoString),
		(Go.str(".0000000") : GoString),
		(Go.str(".00000000") : GoString),
		(Go.str(".000000000") : GoString),
		(Go.str(".9") : GoString),
		(Go.str(".99") : GoString),
		(Go.str(".999") : GoString),
		(Go.str(".9999") : GoString),
		(Go.str(".99999") : GoString),
		(Go.str(".999999") : GoString),
		(Go.str(".9999999") : GoString),
		(Go.str(".99999999") : GoString),
		(Go.str(".999999999") : GoString)
	];
	x;
};

var quote:GoString->GoString = _quote;
var _origPlatformZoneSources:Slice<GoString> = _platformZoneSources;
var disablePlatformSources:() -> (() -> Void) = _disablePlatformSources;
var interrupt:() -> Void = _interrupt;
var daysIn:(Month, GoInt) -> GoInt = _daysIn;
var minMonoTime:Time = ({_wall: ("9223372036854775808" : GoUInt64), _ext: ("-9223372036854775808" : GoInt64), _loc: utc} : Time);
var maxMonoTime:Time = ({_wall: ("9223372036854775808" : GoUInt64), _ext: ("9223372036854775807" : GoInt64), _loc: utc} : Time);
var notMonoNegativeTime:Time = ({_wall: (0 : GoUInt64), _ext: ("-9223372036854775758" : GoInt64)} : Time);
final ruleJulian:RuleKind = ((0 : T_ruleKind) : RuleKind);
final ruleDOY:RuleKind = ((1 : T_ruleKind) : RuleKind);
final ruleMonthWeekDay:RuleKind = ((2 : T_ruleKind) : RuleKind);
final unixToInternal:GoInt64 = ("62135596800" : GoInt64);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final layout:GoString = (Go.str("01/02 03:04:05PM \'06 -0700") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final ansic:GoString = (Go.str("Mon Jan _2 15:04:05 2006") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final unixDate:GoString = (Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final rubyDate:GoString = (Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final rfc822:GoString = (Go.str("02 Jan 06 15:04 MST") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final rfc822z:GoString = (Go.str("02 Jan 06 15:04 -0700") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final rfc850:GoString = (Go.str("Monday, 02-Jan-06 15:04:05 MST") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final rfc1123:GoString = (Go.str("Mon, 02 Jan 2006 15:04:05 MST") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final rfc1123z:GoString = (Go.str("Mon, 02 Jan 2006 15:04:05 -0700") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final rfc3339:GoString = (Go.str("2006-01-02T15:04:05Z07:00") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final rfc3339nano:GoString = (Go.str("2006-01-02T15:04:05.999999999Z07:00") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final kitchen:GoString = (Go.str("3:04PM") : GoString);

/**
	// Handy time stamps.
**/
final stamp:GoString = (Go.str("Jan _2 15:04:05") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final stampMilli:GoString = (Go.str("Jan _2 15:04:05.000") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final stampMicro:GoString = (Go.str("Jan _2 15:04:05.000000") : GoString);

/**
	// These are predefined layouts for use in Time.Format and time.Parse.
	// The reference time used in these layouts is the specific time stamp:
	//
	//	01/02 03:04:05PM '06 -0700
	//
	// (January 2, 15:04:05, 2006, in time zone seven hours west of GMT).
	// That value is recorded as the constant named Layout, listed below. As a Unix
	// time, this is 1136239445. Since MST is GMT-0700, the reference would be
	// printed by the Unix date command as:
	//
	//	Mon Jan 2 15:04:05 MST 2006
	//
	// It is a regrettable historic error that the date uses the American convention
	// of putting the numerical month before the day.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// Note that the RFC822, RFC850, and RFC1123 formats should be applied
	// only to local times. Applying them to UTC times will use "UTC" as the
	// time zone abbreviation, while strictly speaking those RFCs require the
	// use of "GMT" in that case.
	// In general RFC1123Z should be used instead of RFC1123 for servers
	// that insist on that format, and RFC3339 should be preferred for new protocols.
	// RFC3339, RFC822, RFC822Z, RFC1123, and RFC1123Z are useful for formatting;
	// when used with time.Parse they do not accept all the time formats
	// permitted by the RFCs and they do accept time formats not formally defined.
	// The RFC3339Nano format removes trailing zeros from the seconds field
	// and thus may not sort correctly once formatted.
	//
	// Most programs can use one of the defined constants as the layout passed to
	// Format or Parse. The rest of this comment can be ignored unless you are
	// creating a custom layout string.
	//
	// To define your own format, write down what the reference time would look like
	// formatted your way; see the values of constants like ANSIC, StampMicro or
	// Kitchen for examples. The model is to demonstrate what the reference time
	// looks like so that the Format and Parse methods can apply the same
	// transformation to a general time value.
	//
	// Here is a summary of the components of a layout string. Each element shows by
	// example the formatting of an element of the reference time. Only these values
	// are recognized. Text in the layout string that is not recognized as part of
	// the reference time is echoed verbatim during Format and expected to appear
	// verbatim in the input to Parse.
	//
	//	Year: "2006" "06"
	//	Month: "Jan" "January" "01" "1"
	//	Day of the week: "Mon" "Monday"
	//	Day of the month: "2" "_2" "02"
	//	Day of the year: "__2" "002"
	//	Hour: "15" "3" "03" (PM or AM)
	//	Minute: "4" "04"
	//	Second: "5" "05"
	//	AM/PM mark: "PM"
	//
	// Numeric time zone offsets format as follows:
	//
	//	"-0700"     ±hhmm
	//	"-07:00"    ±hh:mm
	//	"-07"       ±hh
	//	"-070000"   ±hhmmss
	//	"-07:00:00" ±hh:mm:ss
	//
	// Replacing the sign in the format with a Z triggers
	// the ISO 8601 behavior of printing Z instead of an
	// offset for the UTC zone. Thus:
	//
	//	"Z0700"      Z or ±hhmm
	//	"Z07:00"     Z or ±hh:mm
	//	"Z07"        Z or ±hh
	//	"Z070000"    Z or ±hhmmss
	//	"Z07:00:00"  Z or ±hh:mm:ss
	//
	// Within the format string, the underscores in "_2" and "__2" represent spaces
	// that may be replaced by digits if the following number has multiple digits,
	// for compatibility with fixed-width Unix time formats. A leading zero represents
	// a zero-padded value.
	//
	// The formats __2 and 002 are space-padded and zero-padded
	// three-character day of year; there is no unpadded day of year format.
	//
	// A comma or decimal point followed by one or more zeros represents
	// a fractional second, printed to the given number of decimal places.
	// A comma or decimal point followed by one or more nines represents
	// a fractional second, printed to the given number of decimal places, with
	// trailing zeros removed.
	// For example "15:04:05,000" or "15:04:05.000" formats or parses with
	// millisecond precision.
	//
	// Some valid layouts are invalid time values for time.Parse, due to formats
	// such as _ for space padding and Z for zone information.
**/
final stampNano:GoString = (Go.str("Jan _2 15:04:05.000000000") : GoString);

final _0:GoUnTypedInt = (0 : GoUnTypedInt);
final _stdLongMonth:GoUnTypedInt = (267 : GoUnTypedInt);
final _stdMonth = (267 : GoUnTypedInt);
final _stdNumMonth = (267 : GoUnTypedInt);
final _stdZeroMonth = (267 : GoUnTypedInt);
final _stdLongWeekDay = (267 : GoUnTypedInt);
final _stdWeekDay = (267 : GoUnTypedInt);
final _stdDay = (267 : GoUnTypedInt);
final _stdUnderDay = (267 : GoUnTypedInt);
final _stdZeroDay = (267 : GoUnTypedInt);
final _stdUnderYearDay = (267 : GoUnTypedInt);
final _stdZeroYearDay = (267 : GoUnTypedInt);
final _stdHour:GoUnTypedInt = (530 : GoUnTypedInt);
final _stdHour12 = (530 : GoUnTypedInt);
final _stdZeroHour12 = (530 : GoUnTypedInt);
final _stdMinute = (530 : GoUnTypedInt);
final _stdZeroMinute = (530 : GoUnTypedInt);
final _stdSecond = (530 : GoUnTypedInt);
final _stdZeroSecond = (530 : GoUnTypedInt);
final _stdLongYear:GoUnTypedInt = (276 : GoUnTypedInt);
final _stdYear = (276 : GoUnTypedInt);
final _stdPM:GoUnTypedInt = (534 : GoUnTypedInt);
final _stdpm = (534 : GoUnTypedInt);
final _stdTZ:GoUnTypedInt = (35 : GoUnTypedInt);
final _stdISO8601TZ = (35 : GoUnTypedInt);
final _stdISO8601SecondsTZ = (35 : GoUnTypedInt);
final _stdISO8601ShortTZ = (35 : GoUnTypedInt);
final _stdISO8601ColonTZ = (35 : GoUnTypedInt);
final _stdISO8601ColonSecondsTZ = (35 : GoUnTypedInt);
final _stdNumTZ = (35 : GoUnTypedInt);
final _stdNumSecondsTz = (35 : GoUnTypedInt);
final _stdNumShortTZ = (35 : GoUnTypedInt);
final _stdNumColonTZ = (35 : GoUnTypedInt);
final _stdNumColonSecondsTZ = (35 : GoUnTypedInt);
final _stdFracSecond0 = (35 : GoUnTypedInt);
final _stdFracSecond9 = (35 : GoUnTypedInt);
final _stdNeedDate:GoUnTypedInt = (256 : GoUnTypedInt);
final _stdNeedClock:GoUnTypedInt = (512 : GoUnTypedInt);
final _stdArgShift:GoUnTypedInt = (16 : GoUnTypedInt);
final _stdSeparatorShift:GoUnTypedInt = (28 : GoUnTypedInt);
final _stdMask:GoUnTypedInt = (65535 : GoUnTypedInt);

/**
	// These are borrowed from unicode/utf8 and strconv and replicate behavior in
	// that package, since we can't take a dependency on either.
**/
final _lowerhex:GoString = (Go.str("0123456789abcdef") : GoString);

/**
	// These are borrowed from unicode/utf8 and strconv and replicate behavior in
	// that package, since we can't take a dependency on either.
**/
final _runeSelf:GoUnTypedInt = (128 : GoUnTypedInt);

/**
	// These are borrowed from unicode/utf8 and strconv and replicate behavior in
	// that package, since we can't take a dependency on either.
**/
final _runeError:GoInt32 = ("\uFFFD".code : GoInt32);

final _hasMonotonic:GoUnTypedInt = (0 : GoUnTypedInt);
final _maxWall:GoInt64 = ("68043243391" : GoInt64);
final _minWall:GoInt64 = ("59453308800" : GoInt64);
final _nsecMask:GoUnTypedInt = (1073741823 : GoUnTypedInt);
final _nsecShift:GoUnTypedInt = (30 : GoUnTypedInt);
final january:Month = (12 : Month);
final february:Month = (12 : Month);
final march:Month = (12 : Month);
final april:Month = (12 : Month);
final may:Month = (12 : Month);
final june:Month = (12 : Month);
final july:Month = (12 : Month);
final august:Month = (12 : Month);
final september:Month = (12 : Month);
final october:Month = (12 : Month);
final november:Month = (12 : Month);
final december:Month = (12 : Month);
final sunday:Weekday = (6 : Weekday);
final monday:Weekday = (6 : Weekday);
final tuesday:Weekday = (6 : Weekday);
final wednesday:Weekday = (6 : Weekday);
final thursday:Weekday = (6 : Weekday);
final friday:Weekday = (6 : Weekday);
final saturday:Weekday = (6 : Weekday);

/**
	// The unsigned zero year for internal calculations.
	// Must be 1 mod 400, and times before it will not compute correctly,
	// but otherwise can be changed at will.
**/
final _absoluteZeroYear:GoUnTypedInt = ("-292277022399" : GoUnTypedInt);

/**
	// The year of the zero Time.
	// Assumed by the unixToInternal computation below.
**/
final _internalYear:GoUnTypedInt = (1 : GoUnTypedInt);

/**
	// Offsets to convert between internal and absolute or Unix times.
**/
final _absoluteToInternal:GoInt64 = ("-9223371966579724800" : GoInt64);

final _internalToAbsolute:GoInt64 = ("9223371966579724800" : GoInt64);
final _unixToInternal:GoInt64 = ("62135596800" : GoInt64);
final _internalToUnix:GoInt64 = ("-62135596800" : GoInt64);
final _wallToInternal:GoInt64 = ("59453308800" : GoInt64);
final _minDuration:Duration = ("-9223372036854775808" : Duration);
final _maxDuration:Duration = ("9223372036854775807" : Duration);

/**
	// Common durations. There is no definition for units of Day or larger
	// to avoid confusion across daylight savings time zone transitions.
	//
	// To count the number of units in a Duration, divide:
	//
	//	second := time.Second
	//	fmt.Print(int64(second/time.Millisecond)) // prints 1000
	//
	// To convert an integer number of units to a Duration, multiply:
	//
	//	seconds := 10
	//	fmt.Print(time.Duration(seconds)*time.Second) // prints 10s
**/
final nanosecond:Duration = (1 : Duration);

/**
	// Common durations. There is no definition for units of Day or larger
	// to avoid confusion across daylight savings time zone transitions.
	//
	// To count the number of units in a Duration, divide:
	//
	//	second := time.Second
	//	fmt.Print(int64(second/time.Millisecond)) // prints 1000
	//
	// To convert an integer number of units to a Duration, multiply:
	//
	//	seconds := 10
	//	fmt.Print(time.Duration(seconds)*time.Second) // prints 10s
**/
final microsecond:Duration = (1000 : Duration);

/**
	// Common durations. There is no definition for units of Day or larger
	// to avoid confusion across daylight savings time zone transitions.
	//
	// To count the number of units in a Duration, divide:
	//
	//	second := time.Second
	//	fmt.Print(int64(second/time.Millisecond)) // prints 1000
	//
	// To convert an integer number of units to a Duration, multiply:
	//
	//	seconds := 10
	//	fmt.Print(time.Duration(seconds)*time.Second) // prints 10s
**/
final millisecond:Duration = (1000000 : Duration);

/**
	// Common durations. There is no definition for units of Day or larger
	// to avoid confusion across daylight savings time zone transitions.
	//
	// To count the number of units in a Duration, divide:
	//
	//	second := time.Second
	//	fmt.Print(int64(second/time.Millisecond)) // prints 1000
	//
	// To convert an integer number of units to a Duration, multiply:
	//
	//	seconds := 10
	//	fmt.Print(time.Duration(seconds)*time.Second) // prints 10s
**/
final second:Duration = (1000000000 : Duration);

/**
	// Common durations. There is no definition for units of Day or larger
	// to avoid confusion across daylight savings time zone transitions.
	//
	// To count the number of units in a Duration, divide:
	//
	//	second := time.Second
	//	fmt.Print(int64(second/time.Millisecond)) // prints 1000
	//
	// To convert an integer number of units to a Duration, multiply:
	//
	//	seconds := 10
	//	fmt.Print(time.Duration(seconds)*time.Second) // prints 10s
**/
final minute:Duration = ("60000000000" : Duration);

/**
	// Common durations. There is no definition for units of Day or larger
	// to avoid confusion across daylight savings time zone transitions.
	//
	// To count the number of units in a Duration, divide:
	//
	//	second := time.Second
	//	fmt.Print(int64(second/time.Millisecond)) // prints 1000
	//
	// To convert an integer number of units to a Duration, multiply:
	//
	//	seconds := 10
	//	fmt.Print(time.Duration(seconds)*time.Second) // prints 10s
**/
final hour:Duration = ("3600000000000" : Duration);

final _secondsPerMinute:GoUnTypedInt = (60 : GoUnTypedInt);
final _secondsPerHour:GoUnTypedInt = (3600 : GoUnTypedInt);
final _secondsPerDay:GoUnTypedInt = (86400 : GoUnTypedInt);
final _secondsPerWeek:GoUnTypedInt = (604800 : GoUnTypedInt);
final _daysPer400Years:GoUnTypedInt = (146097 : GoUnTypedInt);
final _daysPer100Years:GoUnTypedInt = (36524 : GoUnTypedInt);
final _daysPer4Years:GoUnTypedInt = (1461 : GoUnTypedInt);
final _timeBinaryVersionV1:GoByte = (2 : GoUInt8);
final _timeBinaryVersionV2:GoUInt8 = (2 : GoUInt8);

/**
	// alpha and omega are the beginning and end of time for zone
	// transitions.
**/
final _alpha:GoUnTypedInt = ("-9223372036854775808" : GoUnTypedInt);

/**
	// alpha and omega are the beginning and end of time for zone
	// transitions.
**/
final _omega:GoUnTypedInt = ("9223372036854775807" : GoUnTypedInt);

/**
	// localLoc is separate so that initLocal can initialize
	// it even if a client has changed Local.
**/
var _localLoc:Location = ({} : Location);

var _localOnce:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
final _ruleJulian:T_ruleKind = (2 : T_ruleKind);
final _ruleDOY:T_ruleKind = (2 : T_ruleKind);
final _ruleMonthWeekDay:T_ruleKind = (2 : T_ruleKind);
var _zoneinfo:Pointer<GoString> = (null : Pointer<GoString>);
var _zoneinfoOnce:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
final _smallsString:GoString = (Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899") : GoString);
final _digits:GoString = (Go.str("0123456789") : GoString);

/**
	// loadFromEmbeddedTZData is used to load a specific tzdata file
	// from tzdata information embedded in the binary itself.
	// This is set when the time/tzdata package is imported,
	// via registerLoadFromEmbeddedTzdata.
**/
var _loadFromEmbeddedTZData:(_zipname:GoString) -> {
	var _0:GoString;
	var _1:Error;
} = null;

/**
	// maxFileSize is the max permitted size of files read by readFile.
	// As reference, the zoneinfo.zip distributed by Go is ~350 KB,
	// so 10MB is overkill.
**/
final _maxFileSize:GoUnTypedInt = (10485760 : GoUnTypedInt);

/**
	// Copies of io.Seek* constants to avoid importing "io":
**/
final _seekStart:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// Copies of io.Seek* constants to avoid importing "io":
**/
final _seekCurrent:GoUnTypedInt = (1 : GoUnTypedInt);

/**
	// Copies of io.Seek* constants to avoid importing "io":
**/
final _seekEnd:GoUnTypedInt = (2 : GoUnTypedInt);

/**
	// loadTzinfoFromTzdata returns the time zone information of the time zone
	// with the given name, from a tzdata database file as they are typically
	// found on android.
**/
var _loadTzinfoFromTzdata:(_file:GoString, _name:GoString) -> {
	var _0:Slice<GoByte>;
	var _1:Error;
} = null;

/**
	// Package time provides functionality for measuring and displaying time.
	//
	// The calendrical calculations always assume a Gregorian calendar, with
	// no leap seconds.
	//
	// # Monotonic Clocks
	//
	// Operating systems provide both a “wall clock,” which is subject to
	// changes for clock synchronization, and a “monotonic clock,” which is
	// not. The general rule is that the wall clock is for telling time and
	// the monotonic clock is for measuring time. Rather than split the API,
	// in this package the Time returned by time.Now contains both a wall
	// clock reading and a monotonic clock reading; later time-telling
	// operations use the wall clock reading, but later time-measuring
	// operations, specifically comparisons and subtractions, use the
	// monotonic clock reading.
	//
	// For example, this code always computes a positive elapsed time of
	// approximately 20 milliseconds, even if the wall clock is changed during
	// the operation being timed:
	//
	//	start := time.Now()
	//	... operation that takes 20 milliseconds ...
	//	t := time.Now()
	//	elapsed := t.Sub(start)
	//
	// Other idioms, such as time.Since(start), time.Until(deadline), and
	// time.Now().Before(deadline), are similarly robust against wall clock
	// resets.
	//
	// The rest of this section gives the precise details of how operations
	// use monotonic clocks, but understanding those details is not required
	// to use this package.
	//
	// The Time returned by time.Now contains a monotonic clock reading.
	// If Time t has a monotonic clock reading, t.Add adds the same duration to
	// both the wall clock and monotonic clock readings to compute the result.
	// Because t.AddDate(y, m, d), t.Round(d), and t.Truncate(d) are wall time
	// computations, they always strip any monotonic clock reading from their results.
	// Because t.In, t.Local, and t.UTC are used for their effect on the interpretation
	// of the wall time, they also strip any monotonic clock reading from their results.
	// The canonical way to strip a monotonic clock reading is to use t = t.Round(0).
	//
	// If Times t and u both contain monotonic clock readings, the operations
	// t.After(u), t.Before(u), t.Equal(u), and t.Sub(u) are carried out
	// using the monotonic clock readings alone, ignoring the wall clock
	// readings. If either t or u contains no monotonic clock reading, these
	// operations fall back to using the wall clock readings.
	//
	// On some systems the monotonic clock will stop if the computer goes to sleep.
	// On such a system, t.Sub(u) may not accurately reflect the actual
	// time that passed between t and u.
	//
	// Because the monotonic clock reading has no meaning outside
	// the current process, the serialized forms generated by t.GobEncode,
	// t.MarshalBinary, t.MarshalJSON, and t.MarshalText omit the monotonic
	// clock reading, and t.Format provides no format for it. Similarly, the
	// constructors time.Date, time.Parse, time.ParseInLocation, and time.Unix,
	// as well as the unmarshalers t.GobDecode, t.UnmarshalBinary.
	// t.UnmarshalJSON, and t.UnmarshalText always create times with
	// no monotonic clock reading.
	//
	// The monotonic clock reading exists only in Time values. It is not
	// a part of Duration values or the Unix times returned by t.Unix and
	// friends.
	//
	// Note that the Go == operator compares not just the time instant but
	// also the Location and the monotonic clock reading. See the
	// documentation for the Time type for a discussion of equality
	// testing for Time values.
	//
	// For debugging, the result of t.String does include the monotonic
	// clock reading if present. If t != u because of different monotonic clock readings,
	// that difference will be visible when printing t.String() and u.String().
**/
private var __go2hxdoc__package:Bool;

@:structInit class Rule {
	public var kind:RuleKind = ((0 : GoInt) : RuleKind);
	public var day:GoInt = 0;
	public var week:GoInt = 0;
	public var mon:GoInt = 0;
	public var time:GoInt = 0;

	public function new(?kind:RuleKind, ?day:GoInt, ?week:GoInt, ?mon:GoInt, ?time:GoInt) {
		if (kind != null)
			this.kind = kind;
		if (day != null)
			this.day = day;
		if (week != null)
			this.week = week;
		if (mon != null)
			this.mon = mon;
		if (time != null)
			this.time = time;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Rule(kind, day, week, mon, time);
	}
}

/**
	// ParseError describes a problem parsing a time string.
**/
@:structInit @:using(stdgo.time.Time.ParseError_static_extension) class ParseError {
	public var layout:GoString = "";
	public var value:GoString = "";
	public var layoutElem:GoString = "";
	public var valueElem:GoString = "";
	public var message:GoString = "";

	public function new(?layout:GoString, ?value:GoString, ?layoutElem:GoString, ?valueElem:GoString, ?message:GoString) {
		if (layout != null)
			this.layout = layout;
		if (value != null)
			this.value = value;
		if (layoutElem != null)
			this.layoutElem = layoutElem;
		if (valueElem != null)
			this.valueElem = valueElem;
		if (message != null)
			this.message = message;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ParseError(layout, value, layoutElem, valueElem, message);
	}
}

/**
	// Interface to timers implemented in package runtime.
	// Must be in sync with ../runtime/time.go:/^type timer
**/
@:structInit private class T_runtimeTimer {
	public var _pp:GoUIntptr = 0;
	public var _when:GoInt64 = 0;
	public var _period:GoInt64 = 0;

	/**
		// NOTE: must not be closure
	**/
	public var _f:(AnyInterface, GoUIntptr) -> Void = null;

	public var _arg:AnyInterface = (null : AnyInterface);
	public var _seq:GoUIntptr = 0;
	public var _nextwhen:GoInt64 = 0;
	public var _status:GoUInt32 = 0;

	public function new(?_pp:GoUIntptr, ?_when:GoInt64, ?_period:GoInt64, ?_f:(AnyInterface, GoUIntptr) -> Void, ?_arg:AnyInterface, ?_seq:GoUIntptr,
			?_nextwhen:GoInt64, ?_status:GoUInt32) {
		if (_pp != null)
			this._pp = _pp;
		if (_when != null)
			this._when = _when;
		if (_period != null)
			this._period = _period;
		if (_f != null)
			this._f = _f;
		if (_arg != null)
			this._arg = _arg;
		if (_seq != null)
			this._seq = _seq;
		if (_nextwhen != null)
			this._nextwhen = _nextwhen;
		if (_status != null)
			this._status = _status;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_runtimeTimer(_pp, _when, _period, _f, _arg, _seq, _nextwhen, _status);
	}
}

/**
	// The Timer type represents a single event.
	// When the Timer expires, the current time will be sent on C,
	// unless the Timer was created by AfterFunc.
	// A Timer must be created with NewTimer or AfterFunc.
**/
@:structInit @:using(stdgo.time.Time.Timer_static_extension) class Timer {
	public var c:Chan<Time> = (null : Chan<Time>);
	public var _r:T_runtimeTimer = ({} : T_runtimeTimer);

	public function new(?c:Chan<Time>, ?_r:T_runtimeTimer) {
		if (c != null)
			this.c = c;
		if (_r != null)
			this._r = _r;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Timer(c, _r);
	}
}

/**
	// A Ticker holds a channel that delivers “ticks” of a clock
	// at intervals.
**/
@:structInit @:using(stdgo.time.Time.Ticker_static_extension) class Ticker {
	/**
		// The channel on which the ticks are delivered.
	**/
	public var c:Chan<Time> = (null : Chan<Time>);

	public var _r:T_runtimeTimer = ({} : T_runtimeTimer);

	public function new(?c:Chan<Time>, ?_r:T_runtimeTimer) {
		if (c != null)
			this.c = c;
		if (_r != null)
			this._r = _r;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Ticker(c, _r);
	}
}

/**
	// A Time represents an instant in time with nanosecond precision.
	//
	// Programs using times should typically store and pass them as values,
	// not pointers. That is, time variables and struct fields should be of
	// type time.Time, not *time.Time.
	//
	// A Time value can be used by multiple goroutines simultaneously except
	// that the methods GobDecode, UnmarshalBinary, UnmarshalJSON and
	// UnmarshalText are not concurrency-safe.
	//
	// Time instants can be compared using the Before, After, and Equal methods.
	// The Sub method subtracts two instants, producing a Duration.
	// The Add method adds a Time and a Duration, producing a Time.
	//
	// The zero value of type Time is January 1, year 1, 00:00:00.000000000 UTC.
	// As this time is unlikely to come up in practice, the IsZero method gives
	// a simple way of detecting a time that has not been initialized explicitly.
	//
	// Each Time has associated with it a Location, consulted when computing the
	// presentation form of the time, such as in the Format, Hour, and Year methods.
	// The methods Local, UTC, and In return a Time with a specific location.
	// Changing the location in this way changes only the presentation; it does not
	// change the instant in time being denoted and therefore does not affect the
	// computations described in earlier paragraphs.
	//
	// Representations of a Time value saved by the GobEncode, MarshalBinary,
	// MarshalJSON, and MarshalText methods store the Time.Location's offset, but not
	// the location name. They therefore lose information about Daylight Saving Time.
	//
	// In addition to the required “wall clock” reading, a Time may contain an optional
	// reading of the current process's monotonic clock, to provide additional precision
	// for comparison or subtraction.
	// See the “Monotonic Clocks” section in the package documentation for details.
	//
	// Note that the Go == operator compares not just the time instant but also the
	// Location and the monotonic clock reading. Therefore, Time values should not
	// be used as map or database keys without first guaranteeing that the
	// identical Location has been set for all values, which can be achieved
	// through use of the UTC or Local method, and that the monotonic clock reading
	// has been stripped by setting t = t.Round(0). In general, prefer t.Equal(u)
	// to t == u, since t.Equal uses the most accurate comparison available and
	// correctly handles the case when only one of its arguments has a monotonic
	// clock reading.
**/
@:structInit @:using(stdgo.time.Time.Time_static_extension) class Time {
	/**
		// wall and ext encode the wall time seconds, wall time nanoseconds,
		// and optional monotonic clock reading in nanoseconds.
		//
		// From high to low bit position, wall encodes a 1-bit flag (hasMonotonic),
		// a 33-bit seconds field, and a 30-bit wall time nanoseconds field.
		// The nanoseconds field is in the range [0, 999999999].
		// If the hasMonotonic bit is 0, then the 33-bit field must be zero
		// and the full signed 64-bit wall seconds since Jan 1 year 1 is stored in ext.
		// If the hasMonotonic bit is 1, then the 33-bit field holds a 33-bit
		// unsigned wall seconds since Jan 1 year 1885, and ext holds a
		// signed 64-bit monotonic clock reading, nanoseconds since process start.
	**/
	public var _wall:GoUInt64 = 0;

	public var _ext:GoInt64 = 0;

	/**
		// loc specifies the Location that should be used to
		// determine the minute, hour, month, day, and year
		// that correspond to this Time.
		// The nil location means UTC.
		// All UTC times are represented with loc==nil, never loc==&utcLoc.
	**/
	public var _loc:Ref<Location> = (null : Location);

	public function new(?_wall:GoUInt64, ?_ext:GoInt64, ?_loc:Ref<Location>) {
		if (_wall != null)
			this._wall = _wall;
		if (_ext != null)
			this._ext = _ext;
		if (_loc != null)
			this._loc = _loc;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Time(_wall, _ext, _loc);
	}
}

/**
	// A Location maps time instants to the zone in use at that time.
	// Typically, the Location represents the collection of time offsets
	// in use in a geographical area. For many Locations the time offset varies
	// depending on whether daylight savings time is in use at the time instant.
**/
@:structInit @:using(stdgo.time.Time.Location_static_extension) class Location {
	public var _name:GoString = "";
	public var _zone:Slice<T_zone> = (null : Slice<T_zone>);
	public var _tx:Slice<T_zoneTrans> = (null : Slice<T_zoneTrans>);

	/**
		// The tzdata information can be followed by a string that describes
		// how to handle DST transitions not recorded in zoneTrans.
		// The format is the TZ environment variable without a colon; see
		// https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap08.html.
		// Example string, for America/Los_Angeles: PST8PDT,M3.2.0,M11.1.0
	**/
	public var _extend:GoString = "";

	/**
		// Most lookups will be for the current time.
		// To avoid the binary search through tx, keep a
		// static one-element cache that gives the correct
		// zone for the time when the Location was created.
		// if cacheStart <= t < cacheEnd,
		// lookup can return cacheZone.
		// The units for cacheStart and cacheEnd are seconds
		// since January 1, 1970 UTC, to match the argument
		// to lookup.
	**/
	public var _cacheStart:GoInt64 = 0;

	public var _cacheEnd:GoInt64 = 0;
	public var _cacheZone:Ref<T_zone> = (null : T_zone);

	public function new(?_name:GoString, ?_zone:Slice<T_zone>, ?_tx:Slice<T_zoneTrans>, ?_extend:GoString, ?_cacheStart:GoInt64, ?_cacheEnd:GoInt64,
			?_cacheZone:Ref<T_zone>) {
		if (_name != null)
			this._name = _name;
		if (_zone != null)
			this._zone = _zone;
		if (_tx != null)
			this._tx = _tx;
		if (_extend != null)
			this._extend = _extend;
		if (_cacheStart != null)
			this._cacheStart = _cacheStart;
		if (_cacheEnd != null)
			this._cacheEnd = _cacheEnd;
		if (_cacheZone != null)
			this._cacheZone = _cacheZone;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Location(_name, _zone, _tx, _extend, _cacheStart, _cacheEnd, _cacheZone);
	}
}

/**
	// A zone represents a single time zone such as CET.
**/
@:structInit private class T_zone {
	/**
		// abbreviated name, "CET"
	**/
	public var _name:GoString = "";

	/**
		// seconds east of UTC
	**/
	public var _offset:GoInt = 0;

	/**
		// is this zone Daylight Savings Time?
	**/
	public var _isDST:Bool = false;

	public function new(?_name:GoString, ?_offset:GoInt, ?_isDST:Bool) {
		if (_name != null)
			this._name = _name;
		if (_offset != null)
			this._offset = _offset;
		if (_isDST != null)
			this._isDST = _isDST;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_zone(_name, _offset, _isDST);
	}
}

/**
	// A zoneTrans represents a single time zone transition.
**/
@:structInit private class T_zoneTrans {
	/**
		// transition time, in seconds since 1970 GMT
	**/
	public var _when:GoInt64 = 0;

	/**
		// the index of the zone that goes into effect at that time
	**/
	public var _index:GoUInt8 = 0;

	/**
		// ignored - no idea what these mean
	**/
	public var _isstd:Bool = false;

	public var _isutc:Bool = false;

	public function new(?_when:GoInt64, ?_index:GoUInt8, ?_isstd:Bool, ?_isutc:Bool) {
		if (_when != null)
			this._when = _when;
		if (_index != null)
			this._index = _index;
		if (_isstd != null)
			this._isstd = _isstd;
		if (_isutc != null)
			this._isutc = _isutc;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_zoneTrans(_when, _index, _isstd, _isutc);
	}
}

/**
	// rule is a rule read from a tzset string.
**/
@:structInit private class T_rule {
	public var _kind:T_ruleKind = ((0 : GoInt) : T_ruleKind);
	public var _day:GoInt = 0;
	public var _week:GoInt = 0;
	public var _mon:GoInt = 0;

	/**
		// transition time
	**/
	public var _time:GoInt = 0;

	public function new(?_kind:T_ruleKind, ?_day:GoInt, ?_week:GoInt, ?_mon:GoInt, ?_time:GoInt) {
		if (_kind != null)
			this._kind = _kind;
		if (_day != null)
			this._day = _day;
		if (_week != null)
			this._week = _week;
		if (_mon != null)
			this._mon = _mon;
		if (_time != null)
			this._time = _time;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_rule(_kind, _day, _week, _mon, _time);
	}
}

/**
	// Simple I/O interface to binary blob of data.
**/
@:structInit @:using(stdgo.time.Time.T_dataIO_static_extension) private class T_dataIO {
	public var _p:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _error:Bool = false;

	public function new(?_p:Slice<GoUInt8>, ?_error:Bool) {
		if (_p != null)
			this._p = _p;
		if (_error != null)
			this._error = _error;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_dataIO(_p, _error);
	}
}

@:named typedef RuleKind = GoInt;

/**
	// A Month specifies a month of the year (January = 1, ...).
**/
@:named @:using(stdgo.time.Time.Month_static_extension) typedef Month = GoInt;

/**
	// A Weekday specifies a day of the week (Sunday = 0, ...).
**/
@:named @:using(stdgo.time.Time.Weekday_static_extension) typedef Weekday = GoInt;

/**
	// A Duration represents the elapsed time between two instants
	// as an int64 nanosecond count. The representation limits the
	// largest representable duration to approximately 290 years.
**/
@:named @:using(stdgo.time.Time.Duration_static_extension) typedef Duration = GoInt64;

/**
	// ruleKind is the kinds of rules that can be seen in a tzset string.
**/
@:named typedef T_ruleKind = GoInt;

@:named @:using(stdgo.time.Time.T_fileSizeError_static_extension) typedef T_fileSizeError = GoString;

function resetLocalOnceForTest():Void {
	_localOnce = (new stdgo.sync.Sync.Once() : stdgo.sync.Sync.Once);
	_localLoc = (new Location() : Location);
}

function forceUSPacificForTesting():Void {}

function zoneinfoForTesting():Pointer<GoString> {
	return _zoneinfo;
}

function resetZoneinfoForTesting():Void {
	_zoneinfo = (null : Pointer<GoString>);
	_zoneinfoOnce = (new stdgo.sync.Sync.Once() : stdgo.sync.Sync.Once);
}

function loadFromEmbeddedTZData(_zone:GoString):{var _0:GoString; var _1:Error;} {
	return _loadFromEmbeddedTZData(_zone);
}

function tzsetRule(_s:GoString):{var _0:Rule; var _1:GoString; var _2:Bool;} {
	var __tmp__ = _tzsetRule(_s),
		_r:T_rule = __tmp__._0,
		_rs:GoString = __tmp__._1,
		_ok:Bool = __tmp__._2;
	var _rr:Rule = ({
		kind: (_r._kind : RuleKind),
		day: _r._day,
		week: _r._week,
		mon: _r._mon,
		time: _r._time
	} : Rule);
	return {_0: (_rr == null ? null : _rr.__copy__()), _1: _rs, _2: _ok};
}

/**
	// startsWithLowerCase reports whether the string has a lower-case letter at the beginning.
	// Its purpose is to prevent matching strings like "Month" when looking for "Mon".
**/
function _startsWithLowerCase(_str:GoString):Bool {
	if ((_str.length) == (0 : GoInt)) {
		return false;
	};
	var _c:GoUInt8 = _str[(0 : GoInt)];
	return (("a".code : GoUInt8) <= _c) && (_c <= ("z".code : GoUInt8));
}

/**
	// nextStdChunk finds the first occurrence of a std string in
	// layout and returns the text before, the std string, and the text after.
**/
function _nextStdChunk(_layout:GoString):{var _0:GoString; var _1:GoInt; var _2:GoString;} {
	var _prefix:GoString = ("" : GoString),
		_std:GoInt = (0 : GoInt),
		_suffix:GoString = ("" : GoString);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_layout.length), _i++, {
			{
				var _c:GoInt = (_layout[_i] : GoInt);
				if (_c == (("J".code : GoInt))) {
					if ((_layout.length >= (_i + (3 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (3 : GoInt)) : GoString) == (Go.str("Jan") : GoString))) {
						if ((_layout.length >= (_i + (7 : GoInt)))
							&& ((_layout.__slice__(_i, _i + (7 : GoInt)) : GoString) == (Go.str("January") : GoString))) {
							return {_0: (_layout.__slice__((0 : GoInt),
								_i) : GoString), _1: (257 : GoInt), _2: (_layout.__slice__(_i + (7 : GoInt)) : GoString)};
						};
						if (!_startsWithLowerCase((_layout.__slice__(_i + (3 : GoInt)) : GoString))) {
							return {_0: (_layout.__slice__((0 : GoInt),
								_i) : GoString), _1: (258 : GoInt), _2: (_layout.__slice__(_i + (3 : GoInt)) : GoString)};
						};
					};
				} else if (_c == (("M".code : GoInt))) {
					if ((_layout.length) >= (_i + (3 : GoInt))) {
						if ((_layout.__slice__(_i, _i + (3 : GoInt)) : GoString) == (Go.str("Mon") : GoString)) {
							if ((_layout.length >= (_i + (6 : GoInt)))
								&& ((_layout.__slice__(_i, _i + (6 : GoInt)) : GoString) == (Go.str("Monday") : GoString))) {
								return {_0: (_layout.__slice__((0 : GoInt),
									_i) : GoString), _1: (261 : GoInt), _2: (_layout.__slice__(_i + (6 : GoInt)) : GoString)};
							};
							if (!_startsWithLowerCase((_layout.__slice__(_i + (3 : GoInt)) : GoString))) {
								return {_0: (_layout.__slice__((0 : GoInt),
									_i) : GoString), _1: (262 : GoInt), _2: (_layout.__slice__(_i + (3 : GoInt)) : GoString)};
							};
						};
						if ((_layout.__slice__(_i, _i + (3 : GoInt)) : GoString) == (Go.str("MST") : GoString)) {
							return {_0: (_layout.__slice__((0 : GoInt),
								_i) : GoString), _1: (23 : GoInt), _2: (_layout.__slice__(_i + (3 : GoInt)) : GoString)};
						};
					};
				} else if (_c == (("0".code : GoInt))) {
					if (((_layout.length >= (_i + (2 : GoInt))) && (("1".code : GoUInt8) <= _layout[_i + (1 : GoInt)]))
						&& (_layout[_i + (1 : GoInt)] <= ("6".code : GoUInt8))) {
						return {_0: (_layout.__slice__((0 : GoInt),
							_i) : GoString), _1: _std0x[_layout[_i + (1 : GoInt)] - ("1".code : GoUInt8)], _2: (_layout.__slice__(_i +
								(2 : GoInt)) : GoString)};
					};
					if (((_layout.length >= (_i + (3 : GoInt))) && (_layout[_i + (1 : GoInt)] == ("0".code : GoUInt8)))
						&& (_layout[_i + (2 : GoInt)] == ("2".code : GoUInt8))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (267 : GoInt), _2: (_layout.__slice__(_i + (3 : GoInt)) : GoString)};
					};
				} else if (_c == (("1".code : GoInt))) {
					if ((_layout.length >= (_i + (2 : GoInt))) && (_layout[_i + (1 : GoInt)] == ("5".code : GoUInt8))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (524 : GoInt), _2: (_layout.__slice__(_i + (2 : GoInt)) : GoString)};
					};
					return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (259 : GoInt), _2: (_layout.__slice__(_i + (1 : GoInt)) : GoString)};
				} else if (_c == (("2".code : GoInt))) {
					if ((_layout.length >= (_i + (4 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (4 : GoInt)) : GoString) == (Go.str("2006") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (275 : GoInt), _2: (_layout.__slice__(_i + (4 : GoInt)) : GoString)};
					};
					return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (263 : GoInt), _2: (_layout.__slice__(_i + (1 : GoInt)) : GoString)};
				} else if (_c == (("_".code : GoInt))) {
					if ((_layout.length >= (_i + (2 : GoInt))) && (_layout[_i + (1 : GoInt)] == ("2".code : GoUInt8))) {
						if ((_layout.length >= (_i + (5 : GoInt)))
							&& ((_layout.__slice__(_i + (1 : GoInt), _i + (5 : GoInt)) : GoString) == (Go.str("2006") : GoString))) {
							return {_0: (_layout.__slice__((0 : GoInt),
								_i + (1 : GoInt)) : GoString), _1: (275 : GoInt), _2: (_layout.__slice__(_i + (5 : GoInt)) : GoString)};
						};
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (264 : GoInt), _2: (_layout.__slice__(_i + (2 : GoInt)) : GoString)};
					};
					if (((_layout.length >= (_i + (3 : GoInt))) && (_layout[_i + (1 : GoInt)] == ("_".code : GoUInt8)))
						&& (_layout[_i + (2 : GoInt)] == ("2".code : GoUInt8))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (266 : GoInt), _2: (_layout.__slice__(_i + (3 : GoInt)) : GoString)};
					};
				} else if (_c == (("3".code : GoInt))) {
					return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (525 : GoInt), _2: (_layout.__slice__(_i + (1 : GoInt)) : GoString)};
				} else if (_c == (("4".code : GoInt))) {
					return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (527 : GoInt), _2: (_layout.__slice__(_i + (1 : GoInt)) : GoString)};
				} else if (_c == (("5".code : GoInt))) {
					return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (529 : GoInt), _2: (_layout.__slice__(_i + (1 : GoInt)) : GoString)};
				} else if (_c == (("P".code : GoInt))) {
					if ((_layout.length >= (_i + (2 : GoInt))) && (_layout[_i + (1 : GoInt)] == ("M".code : GoUInt8))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (533 : GoInt), _2: (_layout.__slice__(_i + (2 : GoInt)) : GoString)};
					};
				} else if (_c == (("p".code : GoInt))) {
					if ((_layout.length >= (_i + (2 : GoInt))) && (_layout[_i + (1 : GoInt)] == ("m".code : GoUInt8))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (534 : GoInt), _2: (_layout.__slice__(_i + (2 : GoInt)) : GoString)};
					};
				} else if (_c == (("-".code : GoInt))) {
					if ((_layout.length >= (_i + (7 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (7 : GoInt)) : GoString) == (Go.str("-070000") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (30 : GoInt), _2: (_layout.__slice__(_i + (7 : GoInt)) : GoString)};
					};
					if ((_layout.length >= (_i + (9 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (9 : GoInt)) : GoString) == (Go.str("-07:00:00") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (33 : GoInt), _2: (_layout.__slice__(_i + (9 : GoInt)) : GoString)};
					};
					if ((_layout.length >= (_i + (5 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (5 : GoInt)) : GoString) == (Go.str("-0700") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (29 : GoInt), _2: (_layout.__slice__(_i + (5 : GoInt)) : GoString)};
					};
					if ((_layout.length >= (_i + (6 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (6 : GoInt)) : GoString) == (Go.str("-07:00") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (32 : GoInt), _2: (_layout.__slice__(_i + (6 : GoInt)) : GoString)};
					};
					if ((_layout.length >= (_i + (3 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (3 : GoInt)) : GoString) == (Go.str("-07") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (31 : GoInt), _2: (_layout.__slice__(_i + (3 : GoInt)) : GoString)};
					};
				} else if (_c == (("Z".code : GoInt))) {
					if ((_layout.length >= (_i + (7 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (7 : GoInt)) : GoString) == (Go.str("Z070000") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (25 : GoInt), _2: (_layout.__slice__(_i + (7 : GoInt)) : GoString)};
					};
					if ((_layout.length >= (_i + (9 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (9 : GoInt)) : GoString) == (Go.str("Z07:00:00") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (28 : GoInt), _2: (_layout.__slice__(_i + (9 : GoInt)) : GoString)};
					};
					if ((_layout.length >= (_i + (5 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (5 : GoInt)) : GoString) == (Go.str("Z0700") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (24 : GoInt), _2: (_layout.__slice__(_i + (5 : GoInt)) : GoString)};
					};
					if ((_layout.length >= (_i + (6 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (6 : GoInt)) : GoString) == (Go.str("Z07:00") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (27 : GoInt), _2: (_layout.__slice__(_i + (6 : GoInt)) : GoString)};
					};
					if ((_layout.length >= (_i + (3 : GoInt)))
						&& ((_layout.__slice__(_i, _i + (3 : GoInt)) : GoString) == (Go.str("Z07") : GoString))) {
						return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: (26 : GoInt), _2: (_layout.__slice__(_i + (3 : GoInt)) : GoString)};
					};
				} else if (_c == ((".".code : GoInt)) || _c == ((",".code : GoInt))) {
					if (((_i + (1 : GoInt)) < _layout.length)
						&& ((_layout[_i + (1 : GoInt)] == ("0".code : GoUInt8)) || (_layout[_i + (1 : GoInt)] == ("9".code : GoUInt8)))) {
						var _ch:GoUInt8 = _layout[_i + (1 : GoInt)];
						var _j:GoInt = _i + (1 : GoInt);
						while ((_j < _layout.length) && (_layout[_j] == _ch)) {
							_j++;
						};
						if (!_isDigit(_layout, _j)) {
							var _code:GoInt = (34 : GoInt);
							if (_layout[_i + (1 : GoInt)] == ("9".code : GoUInt8)) {
								_code = (35 : GoInt);
							};
							var _std:GoInt = _stdFracSecond(_code, _j - (_i + (1 : GoInt)), _c);
							return {_0: (_layout.__slice__((0 : GoInt), _i) : GoString), _1: _std, _2: (_layout.__slice__(_j) : GoString)};
						};
					};
				};
			};
		});
	};
	return {_0: _layout, _1: (0 : GoInt), _2: (Go.str() : GoString)};
}

/**
	// match reports whether s1 and s2 match ignoring case.
	// It is assumed s1 and s2 are the same length.
**/
function _match(_s1:GoString, _s2:GoString):Bool {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s1.length), _i++, {
			var _c1:GoUInt8 = _s1[_i];
			var _c2:GoUInt8 = _s2[_i];
			if (_c1 != _c2) {
				_c1 = _c1 | ((32 : GoUInt8));
				_c2 = _c2 | ((32 : GoUInt8));
				if (((_c1 != _c2) || (_c1 < ("a".code:GoUInt8))) || (_c1 > ("z".code : GoUInt8))) {
					return false;
				};
			};
		});
	};
	return true;
}

function _lookup(_tab:Slice<GoString>, _val:GoString):{var _0:GoInt; var _1:GoString; var _2:Error;} {
	for (_i => _v in _tab) {
		if ((_val.length >= _v.length) && _match((_val.__slice__((0 : GoInt), (_v.length)) : GoString), _v)) {
			return {_0: _i, _1: (_val.__slice__((_v.length)) : GoString), _2: (null : stdgo.Error)};
		};
	};
	return {_0: (-1 : GoInt), _1: _val, _2: _errBad};
}

/**
	// appendInt appends the decimal form of x to b and returns the result.
	// If the decimal form (excluding sign) is shorter than width, the result is padded with leading 0's.
	// Duplicates functionality in strconv, but avoids dependency.
**/
function _appendInt(_b:Slice<GoByte>, _x:GoInt, _width:GoInt):Slice<GoByte> {
	var _u:GoUInt = (_x : GoUInt);
	if (_x < (0:GoInt)) {
		_b = (_b.__append__(("-".code : GoUInt8)));
		_u = (-_x : GoUInt);
	};
	var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...20) (0 : GoUInt8)]);
	var _i:GoInt = (_buf.length);
	while (_u >= (10 : GoUInt)) {
		_i--;
		var _q:GoUInt = _u / (10 : GoUInt);
		_buf[_i] = ((("0".code : GoUInt) + _u) - (_q * (10 : GoUInt)) : GoByte);
		_u = _q;
	};
	_i--;
	_buf[_i] = (("0".code : GoUInt) + _u : GoByte);
	{
		var _w:GoInt = (_buf.length) - _i;
		Go.cfor(_w < _width, _w++, {
			_b = (_b.__append__(("0".code : GoUInt8)));
		});
	};
	return (_b.__append__(...(_buf.__slice__(_i) : Slice<GoUInt8>).__toArray__()));
}

/**
	// Duplicates functionality in strconv, but avoids dependency.
**/
function _atoi(_s:GoString):{var _0:GoInt; var _1:Error;} {
	var _x:GoInt = (0 : GoInt), _err:Error = (null : stdgo.Error);
	var _neg:Bool = false;
	if ((_s != (Go.str() : GoString)) && ((_s[(0 : GoInt)] == ("-".code : GoUInt8)) || (_s[(0 : GoInt)] == ("+".code : GoUInt8)))) {
		_neg = _s[(0 : GoInt)] == ("-".code : GoUInt8);
		_s = (_s.__slice__((1 : GoInt)) : GoString);
	};
	var __tmp__ = _leadingInt(_s),
		_q:GoUInt64 = __tmp__._0,
		_rem:GoString = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	_x = (_q : GoInt);
	if ((_err != null) || (_rem != (Go.str() : GoString))) {
		return {_0: (0 : GoInt), _1: _atoiError};
	};
	if (_neg) {
		_x = -_x;
	};
	return {_0: _x, _1: (null : stdgo.Error)};
}

/**
	// The "std" value passed to formatNano contains two packed fields: the number of
	// digits after the decimal and the separator character (period or comma).
	// These functions pack and unpack that variable.
**/
function _stdFracSecond(_code:GoInt, _n:GoInt, _c:GoInt):GoInt {
	if (_c == (".".code : GoInt)) {
		return _code | ((_n & (4095 : GoInt)) << (16 : GoUnTypedInt));
	};
	return (_code | ((_n & (4095 : GoInt)) << (16 : GoUnTypedInt))) | (268435456 : GoInt);
}

function _digitsLen(_std:GoInt):GoInt {
	return (_std >> (16 : GoUnTypedInt)) & (4095 : GoInt);
}

function _separator(_std:GoInt):GoByte {
	if ((_std >> (28 : GoUnTypedInt)) == (0 : GoInt)) {
		return (".".code : GoUInt8);
	};
	return (",".code : GoUInt8);
}

/**
	// formatNano appends a fractional second, as nanoseconds, to b
	// and returns the result.
**/
function _formatNano(_b:Slice<GoByte>, _nanosec:GoUInt, _std:GoInt):Slice<GoByte> {
	var _n:GoInt = _digitsLen(_std),
		_separator:GoUInt8 = _separator(_std),
		_trim:Bool = (_std & (65535 : GoInt)) == (35 : GoInt);
	var _u:GoUInt = _nanosec;
	var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...9) (0 : GoUInt8)]);
	{
		var _start:GoInt = (_buf.length);
		while (_start > (0 : GoInt)) {
			_start--;
			_buf[_start] = ((_u % (10 : GoUInt)) + ("0".code : GoUInt) : GoByte);
			_u = _u / ((10 : GoUInt));
		};
	};
	if (_n > (9 : GoInt)) {
		_n = (9 : GoInt);
	};
	if (_trim) {
		while ((_n > (0 : GoInt)) && (_buf[_n - (1 : GoInt)] == ("0".code : GoUInt8))) {
			_n--;
		};
		if (_n == (0 : GoInt)) {
			return _b;
		};
	};
	_b = (_b.__append__(_separator));
	return (_b.__append__(...(_buf.__slice__(0, _n) : Slice<GoUInt8>).__toArray__()));
}

function _quote(_s:GoString):GoString {
	var _buf = new Slice<GoUInt8>((1 : GoInt).toBasic(), (_s.length) + (2 : GoInt), ...[for (i in 0...(1 : GoInt).toBasic()) (0 : GoUInt8)]);
	_buf[(0 : GoInt)] = ("\"".code : GoUInt8);
	for (_i => _c in _s) {
		if ((_c >= (128 : GoInt32)) || (_c < (" ".code:GoInt32))) {
			var _width:GoInt = (0 : GoInt);
			if (_c == (65533 : GoInt32)) {
				_width = (1 : GoInt);
				if (((_i + (2 : GoInt)) < _s.length)
					&& ((_s.__slice__(_i, _i + (3 : GoInt)) : GoString) == ((65533 : GoInt32) : GoString))) {
					_width = (3 : GoInt);
				};
			} else {
				_width = ((_c : GoString).length);
			};
			{
				var _j:GoInt = (0 : GoInt);
				Go.cfor(_j < _width, _j++, {
					_buf = (_buf.__append__(...("\\x" : GoString).__toArray__()));
					_buf = (_buf.__append__((Go.str("0123456789abcdef") : GoString)[_s[_i + _j] >> (4 : GoUnTypedInt)]));
					_buf = (_buf.__append__((Go.str("0123456789abcdef") : GoString)[_s[_i + _j] & (15 : GoUInt8)]));
				});
			};
		} else {
			if ((_c == ("\"".code : GoInt32)) || (_c == ("\\".code : GoInt32))) {
				_buf = (_buf.__append__(("\\".code : GoUInt8)));
			};
			_buf = (_buf.__append__(...(_c : GoString).__toArray__()));
		};
	};
	_buf = (_buf.__append__(("\"".code : GoUInt8)));
	return (_buf : GoString);
}

/**
	// isDigit reports whether s[i] is in range and is a decimal digit.
**/
function _isDigit(_s:GoString, _i:GoInt):Bool {
	if ((_s.length) <= _i) {
		return false;
	};
	var _c:GoUInt8 = _s[_i];
	return (("0".code : GoUInt8) <= _c) && (_c <= ("9".code : GoUInt8));
}

/**
	// getnum parses s[0:1] or s[0:2] (fixed forces s[0:2])
	// as a decimal integer and returns the integer and the
	// remainder of the string.
**/
function _getnum(_s:GoString, _fixed:Bool):{var _0:GoInt; var _1:GoString; var _2:Error;} {
	if (!_isDigit(_s, (0 : GoInt))) {
		return {_0: (0 : GoInt), _1: _s, _2: _errBad};
	};
	if (!_isDigit(_s, (1 : GoInt))) {
		if (_fixed) {
			return {_0: (0 : GoInt), _1: _s, _2: _errBad};
		};
		return {_0: (_s[(0 : GoInt)] - ("0".code : GoUInt8): GoInt), _1: (_s.__slice__((1 : GoInt)) : GoString), _2: (null : stdgo.Error)};
	};
	return {_0: ((_s[(0 : GoInt)] - ("0".code : GoUInt8): GoInt) * (10 : GoInt))
		+ (_s[(1 : GoInt)] - ("0".code : GoUInt8): GoInt), _1: (_s.__slice__((2 : GoInt)) : GoString), _2: (null : stdgo.Error)};
}

/**
	// getnum3 parses s[0:1], s[0:2], or s[0:3] (fixed forces s[0:3])
	// as a decimal integer and returns the integer and the remainder
	// of the string.
**/
function _getnum3(_s:GoString, _fixed:Bool):{var _0:GoInt; var _1:GoString; var _2:Error;} {
	var _n:GoInt = (0 : GoInt), _i:GoInt = (0 : GoInt);
	{
		_i = (0 : GoInt);
		Go.cfor((_i < (3:GoInt)) && _isDigit(_s, _i), _i++, {
			_n = (_n * (10 : GoInt)) + (_s[_i] - ("0".code : GoUInt8): GoInt);
		});
	};
	if ((_i == (0 : GoInt)) || (_fixed && (_i != (3 : GoInt)))) {
		return {_0: (0 : GoInt), _1: _s, _2: _errBad};
	};
	return {_0: _n, _1: (_s.__slice__(_i) : GoString), _2: (null : stdgo.Error)};
}

function _cutspace(_s:GoString):GoString {
	while ((_s.length > (0 : GoInt)) && (_s[(0 : GoInt)] == (" ".code : GoUInt8))) {
		_s = (_s.__slice__((1 : GoInt)) : GoString);
	};
	return _s;
}

/**
	// skip removes the given prefix from value,
	// treating runs of space characters as equivalent.
**/
function _skip(_value:GoString, _prefix:GoString):{var _0:GoString; var _1:Error;} {
	while ((_prefix.length) > (0 : GoInt)) {
		if (_prefix[(0 : GoInt)] == (" ".code : GoUInt8)) {
			if ((_value.length > (0 : GoInt)) && (_value[(0 : GoInt)] != (" ".code : GoUInt8))) {
				return {_0: _value, _1: _errBad};
			};
			_prefix = _cutspace(_prefix);
			_value = _cutspace(_value);
			continue;
		};
		if ((_value.length == (0 : GoInt)) || (_value[(0 : GoInt)] != _prefix[(0 : GoInt)])) {
			return {_0: _value, _1: _errBad};
		};
		_prefix = (_prefix.__slice__((1 : GoInt)) : GoString);
		_value = (_value.__slice__((1 : GoInt)) : GoString);
	};
	return {_0: _value, _1: (null : stdgo.Error)};
}

/**
	// Parse parses a formatted string and returns the time value it represents.
	// See the documentation for the constant called Layout to see how to
	// represent the format. The second argument must be parseable using
	// the format string (layout) provided as the first argument.
	//
	// The example for Time.Format demonstrates the working of the layout string
	// in detail and is a good reference.
	//
	// When parsing (only), the input may contain a fractional second
	// field immediately after the seconds field, even if the layout does not
	// signify its presence. In that case either a comma or a decimal point
	// followed by a maximal series of digits is parsed as a fractional second.
	// Fractional seconds are truncated to nanosecond precision.
	//
	// Elements omitted from the layout are assumed to be zero or, when
	// zero is impossible, one, so parsing "3:04pm" returns the time
	// corresponding to Jan 1, year 0, 15:04:00 UTC (note that because the year is
	// 0, this time is before the zero Time).
	// Years must be in the range 0000..9999. The day of the week is checked
	// for syntax but it is otherwise ignored.
	//
	// For layouts specifying the two-digit year 06, a value NN >= 69 will be treated
	// as 19NN and a value NN < 69 will be treated as 20NN.
	//
	// The remainder of this comment describes the handling of time zones.
	//
	// In the absence of a time zone indicator, Parse returns a time in UTC.
	//
	// When parsing a time with a zone offset like -0700, if the offset corresponds
	// to a time zone used by the current location (Local), then Parse uses that
	// location and zone in the returned time. Otherwise it records the time as
	// being in a fabricated location with time fixed at the given zone offset.
	//
	// When parsing a time with a zone abbreviation like MST, if the zone abbreviation
	// has a defined offset in the current location, then that offset is used.
	// The zone abbreviation "UTC" is recognized as UTC regardless of location.
	// If the zone abbreviation is unknown, Parse records the time as being
	// in a fabricated location with the given zone abbreviation and a zero offset.
	// This choice means that such a time can be parsed and reformatted with the
	// same layout losslessly, but the exact instant used in the representation will
	// differ by the actual zone offset. To avoid such problems, prefer time layouts
	// that use a numeric zone offset, or use ParseInLocation.
**/
function parse(_layout:GoString, _value:GoString):{var _0:Time; var _1:Error;} {
	return _parse(_layout, _value, utc, local);
}

/**
	// ParseInLocation is like Parse but differs in two important ways.
	// First, in the absence of time zone information, Parse interprets a time as UTC;
	// ParseInLocation interprets the time as in the given location.
	// Second, when given a zone offset or abbreviation, Parse tries to match it
	// against the Local location; ParseInLocation uses the given location.
**/
function parseInLocation(_layout:GoString, _value:GoString, _loc:Location):{var _0:Time; var _1:Error;} {
	return _parse(_layout, _value, _loc, _loc);
}

function _parse(_layout:GoString, _value:GoString, _defaultLocation:Location, _local:Location):{var _0:Time; var _1:Error;} {
	var _alayout:GoString = _layout, _avalue:GoString = _value;
	var _rangeErrString:GoString = (Go.str() : GoString);
	var _amSet:Bool = false;
	var _pmSet:Bool = false;
	var _year:GoInt = (0 : GoInt),
		_month:GoInt = (-1 : GoInt),
		_day:GoInt = (-1 : GoInt),
		_yday:GoInt = (-1 : GoInt),
		_hour:GoInt = (0 : GoInt),
		_min:GoInt = (0 : GoInt),
		_sec:GoInt = (0 : GoInt),
		_nsec:GoInt = (0 : GoInt),
		_z:Location = (null : Location),
		_zoneOffset:GoInt = (-1 : GoInt),
		_zoneName:GoString = ("" : GoString);
	while (true) {
		var _err:Error = (null : stdgo.Error);
		var __tmp__ = _nextStdChunk(_layout),
			_prefix:GoString = __tmp__._0,
			_std:GoInt = __tmp__._1,
			_suffix:GoString = __tmp__._2;
		var _stdstr:GoString = (_layout.__slice__((_prefix.length), (_layout.length) - (_suffix.length)) : GoString);
		{
			var __tmp__ = _skip(_value, _prefix);
			_value = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {
				_0: (new Time() : Time),
				_1: {
					final __self__ = new ParseError_asInterface((new ParseError(_alayout, _avalue, _prefix, _value, (Go.str() : GoString)) : ParseError));
					__self__.error = #if !macro function():GoString return (new ParseError(_alayout, _avalue, _prefix, _value,
						(Go.str() : GoString)) : ParseError).error() #else null #end;
					__self__;
				}
			};
		};
		if (_std == (0 : GoInt)) {
			if ((_value.length) != (0 : GoInt)) {
				return {
					_0: (new Time() : Time),
					_1: {
						final __self__ = new ParseError_asInterface((new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
							(Go.str(": extra text: ") : GoString) + _quote(_value)) : ParseError));
						__self__.error = #if !macro function():GoString return (new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
							(Go.str(": extra text: ") : GoString) + _quote(_value)) : ParseError).error() #else null #end;
						__self__;
					}
				};
			};
			break;
		};
		_layout = _suffix;
		var _p:GoString = ("" : GoString);
		{
			var __switchIndex__ = -1;
			while (true) {
				if (_std & (65535 : GoInt) == ((276 : GoInt))) {
					if ((_value.length) < (2 : GoInt)) {
						_err = _errBad;
						break;
					};
					var _hold:GoString = _value;
					{
						final __tmp__0 = (_value.__slice__((0 : GoInt), (2 : GoInt)) : GoString);
						final __tmp__1 = (_value.__slice__((2 : GoInt)) : GoString);
						_p = __tmp__0;
						_value = __tmp__1;
					};
					{
						var __tmp__ = _atoi(_p);
						_year = __tmp__._0;
						_err = __tmp__._1;
					};
					if (_err != null) {
						_value = _hold;
					} else if (_year >= (69 : GoInt)) {
						_year = _year + ((1900 : GoInt));
					} else {
						_year = _year + ((2000 : GoInt));
					};
					break;
				} else if (_std & (65535 : GoInt) == ((275 : GoInt))) {
					if ((_value.length < (4:GoInt)) || !_isDigit(_value, (0 : GoInt))) {
						_err = _errBad;
						break;
					};
					{
						final __tmp__0 = (_value.__slice__((0 : GoInt), (4 : GoInt)) : GoString);
						final __tmp__1 = (_value.__slice__((4 : GoInt)) : GoString);
						_p = __tmp__0;
						_value = __tmp__1;
					};
					{
						var __tmp__ = _atoi(_p);
						_year = __tmp__._0;
						_err = __tmp__._1;
					};
					break;
				} else if (_std & (65535 : GoInt) == ((258 : GoInt))) {
					{
						var __tmp__ = _lookup(_shortMonthNames, _value);
						_month = __tmp__._0;
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					_month++;
					break;
				} else if (_std & (65535 : GoInt) == ((257 : GoInt))) {
					{
						var __tmp__ = _lookup(_longMonthNames, _value);
						_month = __tmp__._0;
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					_month++;
					break;
				} else if (_std & (65535 : GoInt) == ((259 : GoInt)) || _std & (65535 : GoInt) == ((260 : GoInt))) {
					{
						var __tmp__ = _getnum(_value, _std == (260 : GoInt));
						_month = __tmp__._0;
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					if ((_err == null) && ((_month <= (0 : GoInt)) || ((12 : GoInt) < _month))) {
						_rangeErrString = (Go.str("month") : GoString);
					};
					break;
				} else if (_std & (65535 : GoInt) == ((262 : GoInt))) {
					{
						var __tmp__ = _lookup(_shortDayNames, _value);
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					break;
				} else if (_std & (65535 : GoInt) == ((261 : GoInt))) {
					{
						var __tmp__ = _lookup(_longDayNames, _value);
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					break;
				} else if (_std & (65535 : GoInt) == ((263 : GoInt))
					|| _std & (65535 : GoInt) == ((264 : GoInt)) || _std & (65535 : GoInt) == ((265 : GoInt))) {
					if (((_std == (264 : GoInt)) && (_value.length > (0 : GoInt))) && (_value[(0 : GoInt)] == (" ".code : GoUInt8))) {
						_value = (_value.__slice__((1 : GoInt)) : GoString);
					};
					{
						var __tmp__ = _getnum(_value, _std == (265 : GoInt));
						_day = __tmp__._0;
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					break;
				} else if (_std & (65535 : GoInt) == ((266 : GoInt)) || _std & (65535 : GoInt) == ((267 : GoInt))) {
					{
						var _i:GoInt = (0 : GoInt);
						Go.cfor(_i < (2:GoInt), _i++, {
							if (((_std == (266 : GoInt)) && (_value.length > (0 : GoInt)))
								&& (_value[(0 : GoInt)] == (" ".code : GoUInt8))) {
								_value = (_value.__slice__((1 : GoInt)) : GoString);
							};
						});
					};
					{
						var __tmp__ = _getnum3(_value, _std == (267 : GoInt));
						_yday = __tmp__._0;
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					break;
				} else if (_std & (65535 : GoInt) == ((524 : GoInt))) {
					{
						var __tmp__ = _getnum(_value, false);
						_hour = __tmp__._0;
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					if ((_hour < (0:GoInt)) || ((24 : GoInt) <= _hour)) {
						_rangeErrString = (Go.str("hour") : GoString);
					};
					break;
				} else if (_std & (65535 : GoInt) == ((525 : GoInt)) || _std & (65535 : GoInt) == ((526 : GoInt))) {
					{
						var __tmp__ = _getnum(_value, _std == (526 : GoInt));
						_hour = __tmp__._0;
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					if ((_hour < (0:GoInt)) || ((12 : GoInt) < _hour)) {
						_rangeErrString = (Go.str("hour") : GoString);
					};
					break;
				} else if (_std & (65535 : GoInt) == ((527 : GoInt)) || _std & (65535 : GoInt) == ((528 : GoInt))) {
					{
						var __tmp__ = _getnum(_value, _std == (528 : GoInt));
						_min = __tmp__._0;
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					if ((_min < (0:GoInt)) || ((60 : GoInt) <= _min)) {
						_rangeErrString = (Go.str("minute") : GoString);
					};
					break;
				} else if (_std & (65535 : GoInt) == ((529 : GoInt)) || _std & (65535 : GoInt) == ((530 : GoInt))) {
					{
						var __tmp__ = _getnum(_value, _std == (530 : GoInt));
						_sec = __tmp__._0;
						_value = __tmp__._1;
						_err = __tmp__._2;
					};
					if ((_sec < (0:GoInt)) || ((60 : GoInt) <= _sec)) {
						_rangeErrString = (Go.str("second") : GoString);
						break;
					};
					if (((_value.length >= (2 : GoInt)) && _commaOrPeriod(_value[(0 : GoInt)])) && _isDigit(_value, (1 : GoInt))) {
						{
							var __tmp__ = _nextStdChunk(_layout);
							_std = __tmp__._1;
						};
						_std = _std & ((65535 : GoInt));
						if ((_std == (34 : GoInt)) || (_std == (35 : GoInt))) {
							break;
						};
						var _n:GoInt = (2 : GoInt);
						Go.cfor((_n < _value.length) && _isDigit(_value, _n), _n++, {});
						{
							var __tmp__ = _parseNanoseconds(_value, _n);
							_nsec = __tmp__._0;
							_rangeErrString = __tmp__._1;
							_err = __tmp__._2;
						};
						_value = (_value.__slice__(_n) : GoString);
					};
					break;
				} else if (_std & (65535 : GoInt) == ((533 : GoInt))) {
					if ((_value.length) < (2 : GoInt)) {
						_err = _errBad;
						break;
					};
					{
						final __tmp__0 = (_value.__slice__((0 : GoInt), (2 : GoInt)) : GoString);
						final __tmp__1 = (_value.__slice__((2 : GoInt)) : GoString);
						_p = __tmp__0;
						_value = __tmp__1;
					};
					if (_p == ((Go.str("PM") : GoString))) {
						_pmSet = true;
					} else if (_p == ((Go.str("AM") : GoString))) {
						_amSet = true;
					} else {
						_err = _errBad;
					};
					break;
				} else if (_std & (65535 : GoInt) == ((534 : GoInt))) {
					if ((_value.length) < (2 : GoInt)) {
						_err = _errBad;
						break;
					};
					{
						final __tmp__0 = (_value.__slice__((0 : GoInt), (2 : GoInt)) : GoString);
						final __tmp__1 = (_value.__slice__((2 : GoInt)) : GoString);
						_p = __tmp__0;
						_value = __tmp__1;
					};
					if (_p == ((Go.str("pm") : GoString))) {
						_pmSet = true;
					} else if (_p == ((Go.str("am") : GoString))) {
						_amSet = true;
					} else {
						_err = _errBad;
					};
					break;
				} else if (_std & (65535 : GoInt) == ((24 : GoInt))
					|| _std & (65535 : GoInt) == ((27 : GoInt))
						|| _std & (65535 : GoInt) == ((25 : GoInt))
							|| _std & (65535 : GoInt) == ((26 : GoInt))
								|| _std & (65535 : GoInt) == ((28 : GoInt))
									|| _std & (65535 : GoInt) == ((29 : GoInt))
										|| _std & (65535 : GoInt) == ((31 : GoInt))
											|| _std & (65535 : GoInt) == ((32 : GoInt))
												|| _std & (65535 : GoInt) == ((30 : GoInt)) || _std & (65535 : GoInt) == ((33 : GoInt))) {
					if (((((_std == (24 : GoInt)) || (_std == (26 : GoInt))) || (_std == (27 : GoInt))) && (_value.length >= (1 : GoInt)))
						&& (_value[(0 : GoInt)] == ("Z".code : GoUInt8))) {
						_value = (_value.__slice__((1 : GoInt)) : GoString);
						_z = utc;
						break;
					};
					var _sign:GoString = ("" : GoString),
						_hour:GoString = ("" : GoString),
						_min:GoString = ("" : GoString),
						_seconds:GoString = ("" : GoString);
					if ((_std == (27 : GoInt)) || (_std == (32 : GoInt))) {
						if ((_value.length) < (6 : GoInt)) {
							_err = _errBad;
							break;
						};
						if (_value[(3 : GoInt)] != (":".code : GoUInt8)) {
							_err = _errBad;
							break;
						};
						{
							final __tmp__0 = (_value.__slice__((0 : GoInt), (1 : GoInt)) : GoString);
							final __tmp__1 = (_value.__slice__((1 : GoInt), (3 : GoInt)) : GoString);
							final __tmp__2 = (_value.__slice__((4 : GoInt), (6 : GoInt)) : GoString);
							final __tmp__3 = (Go.str("00") : GoString);
							final __tmp__4 = (_value.__slice__((6 : GoInt)) : GoString);
							_sign = __tmp__0;
							_hour = __tmp__1;
							_min = __tmp__2;
							_seconds = __tmp__3;
							_value = __tmp__4;
						};
					} else if ((_std == (31 : GoInt)) || (_std == (26 : GoInt))) {
						if ((_value.length) < (3 : GoInt)) {
							_err = _errBad;
							break;
						};
						{
							final __tmp__0 = (_value.__slice__((0 : GoInt), (1 : GoInt)) : GoString);
							final __tmp__1 = (_value.__slice__((1 : GoInt), (3 : GoInt)) : GoString);
							final __tmp__2 = (Go.str("00") : GoString);
							final __tmp__3 = (Go.str("00") : GoString);
							final __tmp__4 = (_value.__slice__((3 : GoInt)) : GoString);
							_sign = __tmp__0;
							_hour = __tmp__1;
							_min = __tmp__2;
							_seconds = __tmp__3;
							_value = __tmp__4;
						};
					} else if ((_std == (28 : GoInt)) || (_std == (33 : GoInt))) {
						if ((_value.length) < (9 : GoInt)) {
							_err = _errBad;
							break;
						};
						if ((_value[(3 : GoInt)] != (":".code : GoUInt8)) || (_value[(6 : GoInt)] != (":".code : GoUInt8))) {
							_err = _errBad;
							break;
						};
						{
							final __tmp__0 = (_value.__slice__((0 : GoInt), (1 : GoInt)) : GoString);
							final __tmp__1 = (_value.__slice__((1 : GoInt), (3 : GoInt)) : GoString);
							final __tmp__2 = (_value.__slice__((4 : GoInt), (6 : GoInt)) : GoString);
							final __tmp__3 = (_value.__slice__((7 : GoInt), (9 : GoInt)) : GoString);
							final __tmp__4 = (_value.__slice__((9 : GoInt)) : GoString);
							_sign = __tmp__0;
							_hour = __tmp__1;
							_min = __tmp__2;
							_seconds = __tmp__3;
							_value = __tmp__4;
						};
					} else if ((_std == (25 : GoInt)) || (_std == (30 : GoInt))) {
						if ((_value.length) < (7 : GoInt)) {
							_err = _errBad;
							break;
						};
						{
							final __tmp__0 = (_value.__slice__((0 : GoInt), (1 : GoInt)) : GoString);
							final __tmp__1 = (_value.__slice__((1 : GoInt), (3 : GoInt)) : GoString);
							final __tmp__2 = (_value.__slice__((3 : GoInt), (5 : GoInt)) : GoString);
							final __tmp__3 = (_value.__slice__((5 : GoInt), (7 : GoInt)) : GoString);
							final __tmp__4 = (_value.__slice__((7 : GoInt)) : GoString);
							_sign = __tmp__0;
							_hour = __tmp__1;
							_min = __tmp__2;
							_seconds = __tmp__3;
							_value = __tmp__4;
						};
					} else {
						if ((_value.length) < (5 : GoInt)) {
							_err = _errBad;
							break;
						};
						{
							final __tmp__0 = (_value.__slice__((0 : GoInt), (1 : GoInt)) : GoString);
							final __tmp__1 = (_value.__slice__((1 : GoInt), (3 : GoInt)) : GoString);
							final __tmp__2 = (_value.__slice__((3 : GoInt), (5 : GoInt)) : GoString);
							final __tmp__3 = (Go.str("00") : GoString);
							final __tmp__4 = (_value.__slice__((5 : GoInt)) : GoString);
							_sign = __tmp__0;
							_hour = __tmp__1;
							_min = __tmp__2;
							_seconds = __tmp__3;
							_value = __tmp__4;
						};
					};
					var _hr:GoInt = (0 : GoInt),
						_mm:GoInt = (0 : GoInt),
						_ss:GoInt = (0 : GoInt);
					{
						var __tmp__ = _atoi(_hour);
						_hr = __tmp__._0;
						_err = __tmp__._1;
					};
					if (_err == null) {
						{
							var __tmp__ = _atoi(_min);
							_mm = __tmp__._0;
							_err = __tmp__._1;
						};
					};
					if (_err == null) {
						{
							var __tmp__ = _atoi(_seconds);
							_ss = __tmp__._0;
							_err = __tmp__._1;
						};
					};
					_zoneOffset = (((_hr * (60 : GoInt)) + _mm) * (60 : GoInt)) + _ss;
					if (_sign[(0 : GoInt)] == (("+".code : GoUInt8))) {} else if (_sign[(0 : GoInt)] == (("-".code : GoUInt8))) {
						_zoneOffset = -_zoneOffset;
					} else {
						_err = _errBad;
					};
					break;
				} else if (_std & (65535 : GoInt) == ((23 : GoInt))) {
					if ((_value.length >= (3 : GoInt))
						&& ((_value.__slice__((0 : GoInt), (3 : GoInt)) : GoString) == (Go.str("UTC") : GoString))) {
						_z = utc;
						_value = (_value.__slice__((3 : GoInt)) : GoString);
						break;
					};
					var __tmp__ = _parseTimeZone(_value),
						_n:GoInt = __tmp__._0,
						_ok:Bool = __tmp__._1;
					if (!_ok) {
						_err = _errBad;
						break;
					};
					{
						final __tmp__0 = (_value.__slice__(0, _n) : GoString);
						final __tmp__1 = (_value.__slice__(_n) : GoString);
						_zoneName = __tmp__0;
						_value = __tmp__1;
					};
					break;
				} else if (_std & (65535 : GoInt) == ((34 : GoInt))) {
					var _ndigit:GoInt = (1 : GoInt) + _digitsLen(_std);
					if ((_value.length) < _ndigit) {
						_err = _errBad;
						break;
					};
					{
						var __tmp__ = _parseNanoseconds(_value, _ndigit);
						_nsec = __tmp__._0;
						_rangeErrString = __tmp__._1;
						_err = __tmp__._2;
					};
					_value = (_value.__slice__(_ndigit) : GoString);
					break;
				} else if (_std & (65535 : GoInt) == ((35 : GoInt))) {
					if ((((_value.length < (2:GoInt)) || !_commaOrPeriod(_value[(0 : GoInt)]))
						|| (_value[(1 : GoInt)] < ("0".code : GoUInt8)))
						|| (("9".code : GoUInt8) < _value[(1 : GoInt)])) {
						break;
					};
					var _i:GoInt = (0 : GoInt);
					while ((((_i < (9:GoInt)) && ((_i + (1 : GoInt)) < _value.length))
						&& (("0".code : GoUInt8) <= _value[_i + (1 : GoInt)]))
						&& (_value[_i + (1 : GoInt)] <= ("9".code : GoUInt8))) {
						_i++;
					};
					{
						var __tmp__ = _parseNanoseconds(_value, (1 : GoInt) + _i);
						_nsec = __tmp__._0;
						_rangeErrString = __tmp__._1;
						_err = __tmp__._2;
					};
					_value = (_value.__slice__((1 : GoInt) + _i) : GoString);
					break;
				};
				break;
			};
		};
		if (_rangeErrString != (Go.str() : GoString)) {
			return {
				_0: (new Time() : Time),
				_1: {
					final __self__ = new ParseError_asInterface((new ParseError(_alayout, _avalue, _stdstr, _value,
						((Go.str(": ") : GoString) + _rangeErrString) + (Go.str(" out of range") : GoString)) : ParseError));
					__self__.error = #if !macro function():GoString return (new ParseError(_alayout, _avalue, _stdstr, _value,
						((Go.str(": ") : GoString) + _rangeErrString) + (Go.str(" out of range") : GoString)) : ParseError).error() #else null #end;
					__self__;
				}
			};
		};
		if (_err != null) {
			return {
				_0: (new Time() : Time),
				_1: {
					final __self__ = new ParseError_asInterface((new ParseError(_alayout, _avalue, _stdstr, _value, (Go.str() : GoString)) : ParseError));
					__self__.error = #if !macro function():GoString return (new ParseError(_alayout, _avalue, _stdstr, _value,
						(Go.str() : GoString)) : ParseError).error() #else null #end;
					__self__;
				}
			};
		};
	};
	if (_pmSet && (_hour < (12:GoInt))) {
		_hour = _hour + ((12 : GoInt));
	} else if (_amSet && (_hour == (12 : GoInt))) {
		_hour = (0 : GoInt);
	};
	if (_yday >= (0 : GoInt)) {
		var _d:GoInt = (0 : GoInt);
		var _m:GoInt = (0 : GoInt);
		if (_isLeap(_year)) {
			if (_yday == (60 : GoInt)) {
				_m = ((2 : Month) : GoInt);
				_d = (29 : GoInt);
			} else if (_yday > (60 : GoInt)) {
				_yday--;
			};
		};
		if ((_yday < (1:GoInt)) || (_yday > (365 : GoInt))) {
			return {
				_0: (new Time() : Time),
				_1: {
					final __self__ = new ParseError_asInterface((new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
						(Go.str(": day-of-year out of range") : GoString)) : ParseError));
					__self__.error = #if !macro function():GoString return (new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
						(Go.str(": day-of-year out of range") : GoString)) : ParseError).error() #else null #end;
					__self__;
				}
			};
		};
		if (_m == (0 : GoInt)) {
			_m = ((_yday - (1 : GoInt)) / (31 : GoInt)) + (1 : GoInt);
			if ((_daysBefore[_m] : GoInt) < _yday) {
				_m++;
			};
			_d = _yday - (_daysBefore[_m - (1 : GoInt)] : GoInt);
		};
		if ((_month >= (0 : GoInt)) && (_month != _m)) {
			return {
				_0: (new Time() : Time),
				_1: {
					final __self__ = new ParseError_asInterface((new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
						(Go.str(": day-of-year does not match month") : GoString)) : ParseError));
					__self__.error = #if !macro function():GoString return (new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
						(Go.str(": day-of-year does not match month") : GoString)) : ParseError).error() #else null #end;
					__self__;
				}
			};
		};
		_month = _m;
		if ((_day >= (0 : GoInt)) && (_day != _d)) {
			return {
				_0: (new Time() : Time),
				_1: {
					final __self__ = new ParseError_asInterface((new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
						(Go.str(": day-of-year does not match day") : GoString)) : ParseError));
					__self__.error = #if !macro function():GoString return (new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
						(Go.str(": day-of-year does not match day") : GoString)) : ParseError).error() #else null #end;
					__self__;
				}
			};
		};
		_day = _d;
	} else {
		if (_month < (0:GoInt)) {
			_month = ((1 : Month) : GoInt);
		};
		if (_day < (0:GoInt)) {
			_day = (1 : GoInt);
		};
	};
	if ((_day < (1:GoInt)) || (_day > _daysIn((_month : Month), _year))) {
		return {
			_0: (new Time() : Time),
			_1: {
				final __self__ = new ParseError_asInterface((new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
					(Go.str(": day out of range") : GoString)) : ParseError));
				__self__.error = #if !macro function():GoString return (new ParseError(_alayout, _avalue, (Go.str() : GoString), _value,
					(Go.str(": day out of range") : GoString)) : ParseError).error() #else null #end;
				__self__;
			}
		};
	};
	if (_z != null) {
		return {_0: (date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec,
			_z) == null ? null : date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec, _z).__copy__()), _1: (null : stdgo.Error)};
	};
	if (_zoneOffset != (-1 : GoInt)) {
		var _t:Time = (date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec,
			utc) == null ? null : date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec, utc).__copy__());
		_t._addSec(-(_zoneOffset : GoInt64));
		var __tmp__ = _local._lookup(_t._unixSec()),
			_name:GoString = __tmp__._0,
			_offset:GoInt = __tmp__._1,
			_0:GoInt64 = __tmp__._2,
			_1:GoInt64 = __tmp__._3,
			_2:Bool = __tmp__._4;
		if ((_offset == _zoneOffset) && ((_zoneName == (Go.str() : GoString)) || (_name == _zoneName))) {
			_t._setLoc(_local);
			return {_0: (_t == null ? null : _t.__copy__()), _1: (null : stdgo.Error)};
		};
		_t._setLoc(fixedZone(_zoneName, _zoneOffset));
		return {_0: (_t == null ? null : _t.__copy__()), _1: (null : stdgo.Error)};
	};
	if (_zoneName != (Go.str() : GoString)) {
		var _t:Time = (date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec,
			utc) == null ? null : date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec, utc).__copy__());
		var __tmp__ = _local._lookupName(_zoneName, _t._unixSec()),
			_offset:GoInt = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok) {
			_t._addSec(-(_offset : GoInt64));
			_t._setLoc(_local);
			return {_0: (_t == null ? null : _t.__copy__()), _1: (null : stdgo.Error)};
		};
		if ((_zoneName.length > (3 : GoInt)) && ((_zoneName.__slice__(0, (3 : GoInt)) : GoString) == (Go.str("GMT") : GoString))) {
			{
				var __tmp__ = _atoi((_zoneName.__slice__((3 : GoInt)) : GoString));
				_offset = __tmp__._0;
			};
			_offset = _offset * ((3600 : GoInt));
		};
		_t._setLoc(fixedZone(_zoneName, _offset));
		return {_0: (_t == null ? null : _t.__copy__()), _1: (null : stdgo.Error)};
	};
	return {_0: (date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec,
		_defaultLocation) == null ? null : date(_year, (_month : Month), _day, _hour, _min, _sec, _nsec,
			_defaultLocation).__copy__()), _1: (null : stdgo.Error)};
}

/**
	// parseTimeZone parses a time zone string and returns its length. Time zones
	// are human-generated and unpredictable. We can't do precise error checking.
	// On the other hand, for a correct parse there must be a time zone at the
	// beginning of the string, so it's almost always true that there's one
	// there. We look at the beginning of the string for a run of upper-case letters.
	// If there are more than 5, it's an error.
	// If there are 4 or 5 and the last is a T, it's a time zone.
	// If there are 3, it's a time zone.
	// Otherwise, other than special cases, it's not a time zone.
	// GMT is special because it can have an hour offset.
**/
function _parseTimeZone(_value:GoString):{var _0:GoInt; var _1:Bool;} {
	var _length:GoInt = (0 : GoInt), _ok:Bool = false;
	if ((_value.length) < (3 : GoInt)) {
		return {_0: (0 : GoInt), _1: false};
	};
	if ((_value.length >= (4 : GoInt))
		&& (((_value.__slice__(0, (4 : GoInt)) : GoString) == (Go.str("ChST") : GoString))
			|| ((_value.__slice__(0, (4 : GoInt)) : GoString) == (Go.str("MeST") : GoString)))) {
		return {_0: (4 : GoInt), _1: true};
	};
	if ((_value.__slice__(0, (3 : GoInt)) : GoString) == (Go.str("GMT") : GoString)) {
		_length = _parseGMT(_value);
		return {_0: _length, _1: true};
	};
	if ((_value[(0 : GoInt)] == ("+".code : GoUInt8)) || (_value[(0 : GoInt)] == ("-".code : GoUInt8))) {
		_length = _parseSignedOffset(_value);
		var _ok:Bool = _length > (0 : GoInt);
		return {_0: _length, _1: _ok};
	};
	var _nUpper:GoInt = (0 : GoInt);
	{
		_nUpper = (0 : GoInt);
		Go.cfor(_nUpper < (6:GoInt), _nUpper++, {
			if (_nUpper >= (_value.length)) {
				break;
			};
			{
				var _c:GoUInt8 = _value[_nUpper];
				if ((_c < ("A".code:GoUInt8)) || (("Z".code : GoUInt8) < _c)) {
					break;
				};
			};
		});
	};
	if (_nUpper == ((0 : GoInt)) || _nUpper == ((1 : GoInt)) || _nUpper == ((2 : GoInt)) || _nUpper == ((6 : GoInt))) {
		return {_0: (0 : GoInt), _1: false};
	} else if (_nUpper == ((5 : GoInt))) {
		if (_value[(4 : GoInt)] == ("T".code : GoUInt8)) {
			return {_0: (5 : GoInt), _1: true};
		};
	} else if (_nUpper == ((4 : GoInt))) {
		if ((_value[(3 : GoInt)] == ("T".code : GoUInt8))
			|| ((_value.__slice__(0, (4 : GoInt)) : GoString) == (Go.str("WITA") : GoString))) {
			return {_0: (4 : GoInt), _1: true};
		};
	} else if (_nUpper == ((3 : GoInt))) {
		return {_0: (3 : GoInt), _1: true};
	};
	return {_0: (0 : GoInt), _1: false};
}

/**
	// parseGMT parses a GMT time zone. The input string is known to start "GMT".
	// The function checks whether that is followed by a sign and a number in the
	// range -23 through +23 excluding zero.
**/
function _parseGMT(_value:GoString):GoInt {
	_value = (_value.__slice__((3 : GoInt)) : GoString);
	if ((_value.length) == (0 : GoInt)) {
		return (3 : GoInt);
	};
	return (3 : GoInt) + _parseSignedOffset(_value);
}

/**
	// parseSignedOffset parses a signed timezone offset (e.g. "+03" or "-04").
	// The function checks for a signed number in the range -23 through +23 excluding zero.
	// Returns length of the found offset string or 0 otherwise
**/
function _parseSignedOffset(_value:GoString):GoInt {
	var _sign:GoUInt8 = _value[(0 : GoInt)];
	if ((_sign != ("-".code : GoUInt8)) && (_sign != ("+".code : GoUInt8))) {
		return (0 : GoInt);
	};
	var __tmp__ = _leadingInt((_value.__slice__((1 : GoInt)) : GoString)),
		_x:GoUInt64 = __tmp__._0,
		_rem:GoString = __tmp__._1,
		_err:stdgo.Error = __tmp__._2;
	if ((_err != null) || ((_value.__slice__((1 : GoInt)) : GoString) == _rem)) {
		return (0 : GoInt);
	};
	if (_x > (23 : GoUInt64)) {
		return (0 : GoInt);
	};
	return (_value.length) - (_rem.length);
}

function _commaOrPeriod(_b:GoByte):Bool {
	return (_b == (".".code : GoUInt8)) || (_b == (",".code : GoUInt8));
}

function _parseNanoseconds(_value:GoString, _nbytes:GoInt):{var _0:GoInt; var _1:GoString; var _2:Error;} {
	var _ns:GoInt = (0 : GoInt),
		_rangeErrString:GoString = ("" : GoString),
		_err:Error = (null : stdgo.Error);
	if (!_commaOrPeriod(_value[(0 : GoInt)])) {
		_err = _errBad;
		return {_0: _ns, _1: _rangeErrString, _2: _err};
	};
	if (_nbytes > (10 : GoInt)) {
		_value = (_value.__slice__(0, (10 : GoInt)) : GoString);
		_nbytes = (10 : GoInt);
	};
	{
		{
			var __tmp__ = _atoi((_value.__slice__((1 : GoInt), _nbytes) : GoString));
			_ns = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _ns, _1: _rangeErrString, _2: _err};
		};
	};
	if (_ns < (0:GoInt)) {
		_rangeErrString = (Go.str("fractional second") : GoString);
		return {_0: _ns, _1: _rangeErrString, _2: _err};
	};
	var _scaleDigits:GoInt = (10 : GoInt) - _nbytes;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _scaleDigits, _i++, {
			_ns = _ns * ((10 : GoInt));
		});
	};
	return {_0: _ns, _1: _rangeErrString, _2: _err};
}

/**
	// leadingInt consumes the leading [0-9]* from s.
**/
function _leadingInt(_s:GoString):{var _0:GoUInt64; var _1:GoString; var _2:Error;} {
	var _x:GoUInt64 = (0 : GoUInt64),
		_rem:GoString = ("" : GoString),
		_err:Error = (null : stdgo.Error);
	var _i:GoInt = (0 : GoInt);
	Go.cfor(_i < (_s.length), _i++, {
		var _c:GoUInt8 = _s[_i];
		if ((_c < ("0".code:GoUInt8)) || (_c > ("9".code : GoUInt8))) {
			break;
		};
		if (_x > ("922337203685477580" : GoUInt64)) {
			return {_0: (0 : GoUInt64), _1: (Go.str() : GoString), _2: _errLeadingInt};
		};
		_x = ((_x * (10 : GoUInt64)) + (_c : GoUInt64)) - ("0".code : GoUInt64);
		if (_x > ("9223372036854775808" : GoUInt64)) {
			return {_0: (0 : GoUInt64), _1: (Go.str() : GoString), _2: _errLeadingInt};
		};
	});
	return {_0: _x, _1: (_s.__slice__(_i) : GoString), _2: (null : stdgo.Error)};
}

/**
	// leadingFraction consumes the leading [0-9]* from s.
	// It is used only for fractions, so does not return an error on overflow,
	// it just stops accumulating precision.
**/
function _leadingFraction(_s:GoString):{var _0:GoUInt64; var _1:GoFloat64; var _2:GoString;} {
	var _x:GoUInt64 = (0 : GoUInt64),
		_scale:GoFloat64 = (0 : GoFloat64),
		_rem:GoString = ("" : GoString);
	var _i:GoInt = (0 : GoInt);
	_scale = (1 : GoFloat64);
	var _overflow:Bool = false;
	Go.cfor(_i < (_s.length), _i++, {
		var _c:GoUInt8 = _s[_i];
		if ((_c < ("0".code:GoUInt8)) || (_c > ("9".code : GoUInt8))) {
			break;
		};
		if (_overflow) {
			continue;
		};
		if (_x > ("922337203685477580" : GoUInt64)) {
			_overflow = true;
			continue;
		};
		var _y:GoUInt64 = ((_x * (10 : GoUInt64)) + (_c : GoUInt64)) - ("0".code : GoUInt64);
		if (_y > ("9223372036854775808" : GoUInt64)) {
			_overflow = true;
			continue;
		};
		_x = _y;
		_scale = _scale * ((10 : GoFloat64));
	});
	return {_0: _x, _1: _scale, _2: (_s.__slice__(_i) : GoString)};
}

/**
	// ParseDuration parses a duration string.
	// A duration string is a possibly signed sequence of
	// decimal numbers, each with optional fraction and a unit suffix,
	// such as "300ms", "-1.5h" or "2h45m".
	// Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".
**/
function parseDuration(_s:GoString):{var _0:Duration; var _1:Error;} {
	var _orig:GoString = _s;
	var _d:GoUInt64 = (0 : GoUInt64);
	var _neg:Bool = false;
	if (_s != (Go.str() : GoString)) {
		var _c:GoUInt8 = _s[(0 : GoInt)];
		if ((_c == ("-".code : GoUInt8)) || (_c == ("+".code : GoUInt8))) {
			_neg = _c == ("-".code : GoUInt8);
			_s = (_s.__slice__((1 : GoInt)) : GoString);
		};
	};
	if (_s == (Go.str("0") : GoString)) {
		return {_0: (0 : Duration), _1: (null : stdgo.Error)};
	};
	if (_s == (Go.str() : GoString)) {
		return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((Go.str("time: invalid duration ") : GoString) + _quote(_orig))};
	};
	while (_s != (Go.str() : GoString)) {
		var _v:GoUInt64 = (0 : GoUInt64),
			_f:GoUInt64 = (0 : GoUInt64),
			_scale:GoFloat64 = (1 : GoFloat64);
		var _err:Error = (null : stdgo.Error);
		if (!((_s[(0 : GoInt)] == (".".code : GoUInt8))
			|| ((("0".code : GoUInt8) <= _s[(0 : GoInt)]) && (_s[(0 : GoInt)] <= ("9".code : GoUInt8))))) {
			return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((Go.str("time: invalid duration ") : GoString) + _quote(_orig))};
		};
		var _pl:GoInt = (_s.length);
		{
			var __tmp__ = _leadingInt(_s);
			_v = __tmp__._0;
			_s = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err != null) {
			return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((Go.str("time: invalid duration ") : GoString) + _quote(_orig))};
		};
		var _pre:Bool = _pl != (_s.length);
		var _post:Bool = false;
		if ((_s != (Go.str() : GoString)) && (_s[(0 : GoInt)] == (".".code : GoUInt8))) {
			_s = (_s.__slice__((1 : GoInt)) : GoString);
			var _pl:GoInt = (_s.length);
			{
				var __tmp__ = _leadingFraction(_s);
				_f = __tmp__._0;
				_scale = __tmp__._1;
				_s = __tmp__._2;
			};
			_post = _pl != (_s.length);
		};
		if (!_pre && !_post) {
			return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((Go.str("time: invalid duration ") : GoString) + _quote(_orig))};
		};
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			var _c:GoUInt8 = _s[_i];
			if ((_c == (".".code : GoUInt8)) || ((("0".code : GoUInt8) <= _c) && (_c <= ("9".code : GoUInt8)))) {
				break;
			};
		});
		if (_i == (0 : GoInt)) {
			return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((Go.str("time: missing unit in duration ") : GoString) + _quote(_orig))};
		};
		var _u:GoString = (_s.__slice__(0, _i) : GoString);
		_s = (_s.__slice__(_i) : GoString);
		var __tmp__ = (_unitMap != null && _unitMap.__exists__(_u) ? {value: _unitMap[_u], ok: true} : {value: (0 : GoUInt64), ok: false}),
			_unit:GoUInt64 = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		if (!_ok) {
			return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((((Go.str("time: unknown unit ") : GoString) + _quote(_u))
				+ (Go.str(" in duration ") : GoString))
				+ _quote(_orig))};
		};
		if (_v > (("9223372036854775808" : GoUInt64) / _unit)) {
			return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((Go.str("time: invalid duration ") : GoString) + _quote(_orig))};
		};
		_v = _v * (_unit);
		if (_f > (0 : GoUInt64)) {
			_v = _v + (((_f : GoFloat64) * ((_unit : GoFloat64) / _scale) : GoUInt64));
			if (_v > ("9223372036854775808" : GoUInt64)) {
				return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((Go.str("time: invalid duration ") : GoString) + _quote(_orig))};
			};
		};
		_d = _d + (_v);
		if (_d > ("9223372036854775808" : GoUInt64)) {
			return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((Go.str("time: invalid duration ") : GoString) + _quote(_orig))};
		};
	};
	if (_neg) {
		return {_0: -(_d : Duration), _1: (null : stdgo.Error)};
	};
	if (_d > ("9223372036854775807" : GoUInt64)) {
		return {_0: (0 : Duration), _1: stdgo.errors.Errors.new_((Go.str("time: invalid duration ") : GoString) + _quote(_orig))};
	};
	return {_0: (_d : Duration), _1: (null : stdgo.Error)};
}

function _initTestingZone():Void {
	var _sources = (new Slice<GoString>(0, 0, (Go.str("../../lib/time/zoneinfo.zip") : GoString)) : Slice<GoString>);
	var __tmp__ = _loadLocation((Go.str("America/Los_Angeles") : GoString), _sources),
		_z:Ref<Location> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		throw Go.toInterface(((Go.str("cannot load America/Los_Angeles for testing: ") : GoString) + _err.error())
			+ (Go.str("; you may want to use -tags=timetzdata") : GoString));
	};
	_z._name = (Go.str("Local") : GoString);
	_localLoc = (_z == null ? null : _z.__copy__());
}

function _disablePlatformSources():() -> Void {
	var _undo:() -> Void = null;
	_platformZoneSources = (null : Slice<GoString>);
	return function():Void {
		_platformZoneSources = _origPlatformZoneSources;
	};
}

function _empty(_arg:AnyInterface, _seq:GoUIntptr):Void {}

/**
	// Test that a runtimeTimer with a period that would overflow when on
	// expiration does not throw or cause other timers to hang.
	//
	// This test has to be in internal_test.go since it fiddles with
	// unexported data structures.
**/
function checkRuntimeTimerPeriodOverflow():Void {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	try {
		var _r = ({
			_when: _runtimeNano(),
			_period: ("9223372036854775807" : GoInt64),
			_f: _empty,
			_arg: (null : AnyInterface)
		} : T_runtimeTimer);
		_startTimer(_r);
		{
			var _a0 = _r;
			__deferstack__.unshift(() -> _stopTimer(_a0));
		};
		after((25000000 : Duration)).__get__();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return;
	};
}

/**
	// Sleep pauses the current goroutine for at least the duration d.
	// A negative or zero duration causes Sleep to return immediately.
**/
function sleep(_d:Duration):Void {}

/**
	// when is a helper function for setting the 'when' field of a runtimeTimer.
	// It returns what the time will be, in nanoseconds, Duration d in the future.
	// If d is negative, it is ignored. If the returned value would be less than
	// zero because of an overflow, MaxInt64 is returned.
**/
function _when(_d:Duration):GoInt64 {
	if (_d <= (0 : Duration)) {
		return _runtimeNano();
	};
	var _t:GoInt64 = _runtimeNano() + (_d : GoInt64);
	if (_t < (0:GoInt64)) {
		_t = ("9223372036854775807" : GoInt64);
	};
	return _t;
}

function _startTimer(_0:T_runtimeTimer):Void {
	final t = _0;
	t._status = 1;
	var diff = (t._when - Time._runtimeNano()) / (1000 * 1000);
	if (diff > 1 << 31 - 1)
		return;
	if (diff < 0)
		diff = 0;
	final d = (diff : GoInt).toBasic() + 1;
	final timer = new haxe.Timer(d);
	timer.run = () -> {
		timer.stop();
		t._status = 0;
		if (t._period != (0 : GoInt64)) {
			t._when += t._period;
			_startTimer(t);
		};
		Go.routine(() -> t._f(t._arg, 0));
	};
	t._pp = (timer : GoUIntptr);
}

function _stopTimer(_0:T_runtimeTimer):Bool {
	final t:Dynamic = _0;
	if ((t._pp : GoUIntptr) != (0 : GoUIntptr)) {
		final timer:haxe.Timer = t._pp;
		timer.stop();
	};
	final wasActive = t._status == 1;
	t._status = 0;
	return wasActive;
}

function _resetTimer(_0:T_runtimeTimer, _1:GoInt64):Bool {
	final t = _0;
	final when = _1;
	final wasActive = t._status == 1;
	return wasActive;
}

function _modTimer(_t:T_runtimeTimer, _when:GoInt64, _period:GoInt64, _f:(AnyInterface, GoUIntptr) -> Void, _arg:AnyInterface, _seq:GoUIntptr):Void {
	_stopTimer(_t);
	_t._when = _when;
	_t._period = _period;
	_t._f = _f;
	_t._arg = _arg;
	_t._seq = _seq;
	_startTimer(_t);
}

/**
	// NewTimer creates a new Timer that will send
	// the current time on its channel after at least duration d.
**/
function newTimer(_d:Duration):Timer {
	var _c = new Chan<Time>((1 : GoInt).toBasic(), () -> ({} : Time));
	var _t = ({c: _c, _r: ({_when: _when(_d), _f: _sendTime, _arg: Go.toInterface(_c)} : T_runtimeTimer)} : Timer);
	_startTimer(_t._r);
	return _t;
}

/**
	// sendTime does a non-blocking send of the current time on c.
**/
function _sendTime(_c:AnyInterface, _seq:GoUIntptr):Void {
	Go.select([(_c.value : Chan<Time>).__send__(now()) => {}, {}]);
}

/**
	// After waits for the duration to elapse and then sends the current time
	// on the returned channel.
	// It is equivalent to NewTimer(d).C.
	// The underlying Timer is not recovered by the garbage collector
	// until the timer fires. If efficiency is a concern, use NewTimer
	// instead and call Timer.Stop if the timer is no longer needed.
**/
function after(_d:Duration):Chan<Time> {
	return newTimer(_d).c;
}

/**
	// AfterFunc waits for the duration to elapse and then calls f
	// in its own goroutine. It returns a Timer that can
	// be used to cancel the call using its Stop method.
**/
function afterFunc(_d:Duration, _f:() -> Void):Timer {
	var _t = ({_r: ({_when: _when(_d), _f: _goFunc, _arg: Go.toInterface(_f)} : T_runtimeTimer)} : Timer);
	_startTimer(_t._r);
	return _t;
}

function _goFunc(_arg:AnyInterface, _seq:GoUIntptr):Void {
	Go.routine(() -> (_arg.value : () -> Void)());
}

/**
	// for testing: whatever interrupts a sleep
**/
function _interrupt():Void {
	stdgo.syscall.Syscall.kill(stdgo.syscall.Syscall.getpid(), (1 : stdgo.syscall.Syscall.Signal));
}

function _open(_name:GoString):{var _0:GoUIntptr; var _1:Error;} {
	var __tmp__ = stdgo.syscall.Syscall.open(_name, (0 : GoInt), (0 : GoUInt32)),
		_fd:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: (0 : GoUIntptr), _1: _err};
	};
	return {_0: (_fd : GoUIntptr), _1: (null : stdgo.Error)};
}

function _read(_fd:GoUIntptr, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
	return stdgo.syscall.Syscall.read((_fd : GoInt), _buf);
}

function _closefd(_fd:GoUIntptr):Void {
	stdgo.syscall.Syscall.close((_fd : GoInt));
}

function _preadn(_fd:GoUIntptr, _buf:Slice<GoByte>, _off:GoInt):Error {
	var _whence:GoInt = (0 : GoInt);
	if (_off < (0:GoInt)) {
		_whence = (2 : GoInt);
	};
	{
		var __tmp__ = stdgo.syscall.Syscall.seek((_fd : GoInt), (_off : GoInt64), _whence),
			_0:GoInt64 = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
	};
	while ((_buf.length) > (0 : GoInt)) {
		var __tmp__ = stdgo.syscall.Syscall.read((_fd : GoInt), _buf),
			_m:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_m <= (0 : GoInt)) {
			if (_err == null) {
				return stdgo.errors.Errors.new_((Go.str("short read") : GoString));
			};
			return _err;
		};
		_buf = (_buf.__slice__(_m) : Slice<GoUInt8>);
	};
	return (null : stdgo.Error);
}

/**
	// NewTicker returns a new Ticker containing a channel that will send
	// the current time on the channel after each tick. The period of the
	// ticks is specified by the duration argument. The ticker will adjust
	// the time interval or drop ticks to make up for slow receivers.
	// The duration d must be greater than zero; if not, NewTicker will
	// panic. Stop the ticker to release associated resources.
**/
function newTicker(_d:Duration):Ticker {
	if (_d <= (0 : Duration)) {
		throw Go.toInterface(stdgo.errors.Errors.new_((Go.str("non-positive interval for NewTicker") : GoString)));
	};
	var _c = new Chan<Time>((1 : GoInt).toBasic(), () -> ({} : Time));
	var _t = ({c: _c, _r: ({
		_when: _when(_d),
		_period: (_d : GoInt64),
		_f: _sendTime,
		_arg: Go.toInterface(_c)
	} : T_runtimeTimer)} : Ticker);
	_startTimer(_t._r);
	return _t;
}

/**
	// Tick is a convenience wrapper for NewTicker providing access to the ticking
	// channel only. While Tick is useful for clients that have no need to shut down
	// the Ticker, be aware that without a way to shut it down the underlying
	// Ticker cannot be recovered by the garbage collector; it "leaks".
	// Unlike NewTicker, Tick will return nil if d <= 0.
**/
function tick(_d:Duration):Chan<Time> {
	if (_d <= (0 : Duration)) {
		return (null : Chan<Time>);
	};
	return newTicker(_d).c;
}

/**
	// absWeekday is like Weekday but operates on an absolute time.
**/
function _absWeekday(_abs:GoUInt64):Weekday {
	var _sec:GoUInt64 = (_abs + (86400 : GoUInt64)) % (604800 : GoUInt64);
	return ((_sec : GoInt) / (86400 : GoInt) : Weekday);
}

/**
	// absClock is like clock but operates on an absolute time.
**/
function _absClock(_abs:GoUInt64):{var _0:GoInt; var _1:GoInt; var _2:GoInt;} {
	var _hour:GoInt = (0 : GoInt),
		_min:GoInt = (0 : GoInt),
		_sec:GoInt = (0 : GoInt);
	_sec = (_abs % (86400 : GoUInt64) : GoInt);
	_hour = _sec / (3600 : GoInt);
	_sec = _sec - (_hour * (3600 : GoInt));
	_min = _sec / (60 : GoInt);
	_sec = _sec - (_min * (60 : GoInt));
	return {_0: _hour, _1: _min, _2: _sec};
}

/**
	// fmtFrac formats the fraction of v/10**prec (e.g., ".12345") into the
	// tail of buf, omitting trailing zeros. It omits the decimal
	// point too when the fraction is 0. It returns the index where the
	// output bytes begin and the value v/10**prec.
**/
function _fmtFrac(_buf:Slice<GoByte>, _v:GoUInt64, _prec:GoInt):{var _0:GoInt; var _1:GoUInt64;} {
	var _nw:GoInt = (0 : GoInt), _nv:GoUInt64 = (0 : GoUInt64);
	var _w:GoInt = (_buf.length);
	var _print:Bool = false;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _prec, _i++, {
			var _digit:GoUInt64 = _v % (10 : GoUInt64);
			_print = _print || (_digit != (0 : GoUInt64));
			if (_print) {
				_w--;
				_buf[_w] = (_digit : GoByte) + ("0".code : GoUInt8);
			};
			_v = _v / ((10 : GoUInt64));
		});
	};
	if (_print) {
		_w--;
		_buf[_w] = (".".code : GoUInt8);
	};
	return {_0: _w, _1: _v};
}

/**
	// fmtInt formats v into the tail of buf.
	// It returns the index where the output begins.
**/
function _fmtInt(_buf:Slice<GoByte>, _v:GoUInt64):GoInt {
	var _w:GoInt = (_buf.length);
	if (_v == (0 : GoUInt64)) {
		_w--;
		_buf[_w] = ("0".code : GoUInt8);
	} else {
		while (_v > (0 : GoUInt64)) {
			_w--;
			_buf[_w] = (_v % (10 : GoUInt64) : GoByte) + ("0".code : GoUInt8);
			_v = _v / ((10 : GoUInt64));
		};
	};
	return _w;
}

/**
	// lessThanHalf reports whether x+x < y but avoids overflow,
	// assuming x and y are both positive (Duration is signed).
**/
function _lessThanHalf(_x:Duration, _y:Duration):Bool {
	return ((_x : GoUInt64) + (_x : GoUInt64)) < (_y : GoUInt64);
}

/**
	// Since returns the time elapsed since t.
	// It is shorthand for time.Now().Sub(t).
**/
function since(_t:Time):Duration {
	var _now:Time = ({} : Time);
	if ((_t._wall & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
		_now = (new Time(("9223372036854775808" : GoUInt64), _runtimeNano() - _startNano, null) : Time);
	} else {
		_now = (now() == null ? null : now().__copy__());
	};
	return _now.sub((_t == null ? null : _t.__copy__()));
}

/**
	// Until returns the duration until t.
	// It is shorthand for t.Sub(time.Now()).
**/
function until(_t:Time):Duration {
	var _now:Time = ({} : Time);
	if ((_t._wall & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
		_now = (new Time(("9223372036854775808" : GoUInt64), _runtimeNano() - _startNano, null) : Time);
	} else {
		_now = (now() == null ? null : now().__copy__());
	};
	return _t.sub((_now == null ? null : _now.__copy__()));
}

/**
	// absDate is like date but operates on an absolute time.
**/
function _absDate(_abs:GoUInt64, _full:Bool):{
	var _0:GoInt;
	var _1:Month;
	var _2:GoInt;
	var _3:GoInt;
} {
	var _year:GoInt = (0 : GoInt),
		_month:Month = ((0 : GoInt) : Month),
		_day:GoInt = (0 : GoInt),
		_yday:GoInt = (0 : GoInt);
	var _d:GoUInt64 = _abs / (86400 : GoUInt64);
	var _n:GoUInt64 = _d / (146097 : GoUInt64);
	var _y:GoUInt64 = (400 : GoUInt64) * _n;
	_d = _d - ((146097 : GoUInt64) * _n);
	_n = _d / (36524 : GoUInt64);
	_n = _n - (_n >> (2 : GoUnTypedInt));
	_y = _y + ((100 : GoUInt64) * _n);
	_d = _d - ((36524 : GoUInt64) * _n);
	_n = _d / (1461 : GoUInt64);
	_y = _y + ((4 : GoUInt64) * _n);
	_d = _d - ((1461 : GoUInt64) * _n);
	_n = _d / (365 : GoUInt64);
	_n = _n - (_n >> (2 : GoUnTypedInt));
	_y = _y + (_n);
	_d = _d - ((365 : GoUInt64) * _n);
	_year = ((_y : GoInt64) + ("-292277022399" : GoInt64) : GoInt);
	_yday = (_d : GoInt);
	if (!_full) {
		return {
			_0: _year,
			_1: _month,
			_2: _day,
			_3: _yday
		};
	};
	_day = _yday;
	if (_isLeap(_year)) {
		if (_day > (59 : GoInt)) {
			_day--;
		} else if (_day == (59 : GoInt)) {
			_month = (2 : Month);
			_day = (29 : GoInt);
			return {
				_0: _year,
				_1: _month,
				_2: _day,
				_3: _yday
			};
		};
	};
	_month = (_day / (31 : GoInt) : Month);
	var _end:GoInt = (_daysBefore[_month + (1 : Month)] : GoInt);
	var _begin:GoInt = (0 : GoInt);
	if (_day >= _end) {
		_month++;
		_begin = _end;
	} else {
		_begin = (_daysBefore[_month] : GoInt);
	};
	_month++;
	_day = (_day - _begin) + (1 : GoInt);
	return {
		_0: _year,
		_1: _month,
		_2: _day,
		_3: _yday
	};
}

function _daysIn(_m:Month, _year:GoInt):GoInt {
	if ((_m == (2 : Month)) && _isLeap(_year)) {
		return (29 : GoInt);
	};
	return (_daysBefore[_m] - _daysBefore[_m - (1 : Month)]: GoInt);
}

/**
	// daysSinceEpoch takes a year and returns the number of days from
	// the absolute epoch to the start of that year.
	// This is basically (year - zeroYear) * 365, but accounting for leap days.
**/
function _daysSinceEpoch(_year:GoInt):GoUInt64 {
	var _y:GoUInt64 = ((_year : GoInt64) - ("-292277022399" : GoInt64) : GoUInt64);
	var _n:GoUInt64 = _y / (400 : GoUInt64);
	_y = _y - ((400 : GoUInt64) * _n);
	var _d:GoUInt64 = (146097 : GoUInt64) * _n;
	_n = _y / (100 : GoUInt64);
	_y = _y - ((100 : GoUInt64) * _n);
	_d = _d + ((36524 : GoUInt64) * _n);
	_n = _y / (4 : GoUInt64);
	_y = _y - ((4 : GoUInt64) * _n);
	_d = _d + ((1461 : GoUInt64) * _n);
	_n = _y;
	_d = _d + ((365 : GoUInt64) * _n);
	return _d;
}

/**
	// Provided by package runtime.
**/
function _now():{var _0:GoInt64; var _1:GoInt32; var _2:GoInt64;} {
	final n = _runtimeNano();
	return {_0: n / 1000000000, _1: n % 1000000000, _2: n};
}

/**
	// runtimeNano returns the current value of the runtime clock in nanoseconds.
	//
	//go:linkname runtimeNano runtime.nanotime
**/
function _runtimeNano():GoInt64 {
	final x = ((Sys.time() * 1000000 * 1000) - Date.now().getTimezoneOffset() * 60000000000 : GoInt64);
	return x;
}

/**
	// Now returns the current local time.
**/
function now():Time {
	var __tmp__ = _now(),
		_sec:GoInt64 = __tmp__._0,
		_nsec:GoInt32 = __tmp__._1,
		_mono:GoInt64 = __tmp__._2;
	_mono = _mono - (_startNano);
	_sec = _sec + (("2682288000" : GoInt64));
	if (((_sec : GoUInt64) >> (33 : GoUnTypedInt)) != (0 : GoUInt64)) {
		return (new Time((_nsec : GoUInt64), _sec + ("59453308800" : GoInt64), local) : Time);
	};
	return (new Time((("9223372036854775808" : GoUInt64) | ((_sec : GoUInt64) << (30 : GoUnTypedInt))) | (_nsec : GoUInt64), _mono, local) : Time);
}

function _unixTime(_sec:GoInt64, _nsec:GoInt32):Time {
	return (new Time((_nsec : GoUInt64), _sec + ("62135596800" : GoInt64), local) : Time);
}

/**
	// Unix returns the local Time corresponding to the given Unix time,
	// sec seconds and nsec nanoseconds since January 1, 1970 UTC.
	// It is valid to pass nsec outside the range [0, 999999999].
	// Not all sec values have a corresponding time value. One such
	// value is 1<<63-1 (the largest int64 value).
**/
function unix(_sec:GoInt64, _nsec:GoInt64):Time {
	if ((_nsec < (0:GoInt64)) || (_nsec >= (1e+09 : GoInt64))) {
		var _n:GoInt64 = _nsec / (1e+09 : GoInt64);
		_sec = _sec + (_n);
		_nsec = _nsec - (_n * (1e+09 : GoInt64));
		if (_nsec < (0:GoInt64)) {
			_nsec = _nsec + ((1e+09 : GoInt64));
			_sec--;
		};
	};
	return (_unixTime(_sec, (_nsec : GoInt32)) == null ? null : _unixTime(_sec, (_nsec : GoInt32)).__copy__());
}

/**
	// UnixMilli returns the local Time corresponding to the given Unix time,
	// msec milliseconds since January 1, 1970 UTC.
**/
function unixMilli(_msec:GoInt64):Time {
	return (unix(_msec / (1000 : GoInt64),
		(_msec % (1000 : GoInt64)) * (1e+06 : GoInt64)) == null ? null : unix(_msec / (1000 : GoInt64),
			(_msec % (1000 : GoInt64)) * (1e+06 : GoInt64)).__copy__());
}

/**
	// UnixMicro returns the local Time corresponding to the given Unix time,
	// usec microseconds since January 1, 1970 UTC.
**/
function unixMicro(_usec:GoInt64):Time {
	return (unix(_usec / (1e+06 : GoInt64),
		(_usec % (1e+06 : GoInt64)) * (1000 : GoInt64)) == null ? null : unix(_usec / (1e+06 : GoInt64),
			(_usec % (1e+06 : GoInt64)) * (1000 : GoInt64)).__copy__());
}

function _isLeap(_year:GoInt):Bool {
	return ((_year % (4 : GoInt)) == (0 : GoInt))
		&& (((_year % (100 : GoInt)) != (0 : GoInt)) || ((_year % (400 : GoInt)) == (0 : GoInt)));
}

/**
	// norm returns nhi, nlo such that
	//
	//	hi * base + lo == nhi * base + nlo
	//	0 <= nlo < base
**/
function _norm(_hi:GoInt, _lo:GoInt, _base:GoInt):{var _0:GoInt; var _1:GoInt;} {
	var _nhi:GoInt = (0 : GoInt), _nlo:GoInt = (0 : GoInt);
	if (_lo < (0:GoInt)) {
		var _n:GoInt = ((-_lo - (1 : GoInt)) / _base) + (1 : GoInt);
		_hi = _hi - (_n);
		_lo = _lo + (_n * _base);
	};
	if (_lo >= _base) {
		var _n:GoInt = _lo / _base;
		_hi = _hi + (_n);
		_lo = _lo - (_n * _base);
	};
	return {_0: _hi, _1: _lo};
}

/**
	// Date returns the Time corresponding to
	//
	//	yyyy-mm-dd hh:mm:ss + nsec nanoseconds
	//
	// in the appropriate zone for that time in the given location.
	//
	// The month, day, hour, min, sec, and nsec values may be outside
	// their usual ranges and will be normalized during the conversion.
	// For example, October 32 converts to November 1.
	//
	// A daylight savings time transition skips or repeats times.
	// For example, in the United States, March 13, 2011 2:15am never occurred,
	// while November 6, 2011 1:15am occurred twice. In such cases, the
	// choice of time zone, and therefore the time, is not well-defined.
	// Date returns a time that is correct in one of the two zones involved
	// in the transition, but it does not guarantee which.
	//
	// Date panics if loc is nil.
**/
function date(_year:GoInt, _month:Month, _day:GoInt, _hour:GoInt, _min:GoInt, _sec:GoInt, _nsec:GoInt, _loc:Location):Time {
	if (_loc == null) {
		throw Go.toInterface((Go.str("time: missing Location in call to Date") : GoString));
	};
	var _m:GoInt = (_month : GoInt) - (1 : GoInt);
	{
		var __tmp__ = _norm(_year, _m, (12 : GoInt));
		_year = __tmp__._0;
		_m = __tmp__._1;
	};
	_month = (_m : Month) + (1 : Month);
	{
		var __tmp__ = _norm(_sec, _nsec, (1e+09 : GoInt));
		_sec = __tmp__._0;
		_nsec = __tmp__._1;
	};
	{
		var __tmp__ = _norm(_min, _sec, (60 : GoInt));
		_min = __tmp__._0;
		_sec = __tmp__._1;
	};
	{
		var __tmp__ = _norm(_hour, _min, (60 : GoInt));
		_hour = __tmp__._0;
		_min = __tmp__._1;
	};
	{
		var __tmp__ = _norm(_day, _hour, (24 : GoInt));
		_day = __tmp__._0;
		_hour = __tmp__._1;
	};
	var _d:GoUInt64 = _daysSinceEpoch(_year);
	_d = _d + ((_daysBefore[_month - (1 : Month)] : GoUInt64));
	if (_isLeap(_year) && (_month >= (3 : Month))) {
		_d++;
	};
	_d = _d + ((_day - (1 : GoInt) : GoUInt64));
	var _abs:GoUInt64 = _d * (86400 : GoUInt64);
	_abs = _abs + ((((_hour * (3600 : GoInt)) + (_min * (60 : GoInt))) + _sec : GoUInt64));
	var _unix:GoInt64 = (_abs : GoInt64) + ("-9223372028715321600" : GoInt64);
	var __tmp__ = _loc._lookup(_unix),
		_0:GoString = __tmp__._0,
		_offset:GoInt = __tmp__._1,
		_start:GoInt64 = __tmp__._2,
		_end:GoInt64 = __tmp__._3,
		_1:Bool = __tmp__._4;
	if (_offset != (0 : GoInt)) {
		var _utc:GoInt64 = _unix - (_offset : GoInt64);
		if ((_utc < _start) || (_utc >= _end)) {
			{
				var __tmp__ = _loc._lookup(_utc);
				_offset = __tmp__._1;
			};
		};
		_unix = _unix - ((_offset : GoInt64));
	};
	var _t:Time = (_unixTime(_unix, (_nsec : GoInt32)) == null ? null : _unixTime(_unix, (_nsec : GoInt32)).__copy__());
	_t._setLoc(_loc);
	return (_t == null ? null : _t.__copy__());
}

/**
	// div divides t by d and returns the quotient parity and remainder.
	// We don't use the quotient parity anymore (round half up instead of round to even)
	// but it's still here in case we change our minds.
**/
function _div(_t:Time, _d:Duration):{var _0:GoInt; var _1:Duration;} {
	var _qmod2:GoInt = (0 : GoInt), _r:Duration = ((0 : GoInt64) : Duration);
	var _neg:Bool = false;
	var _nsec:GoInt32 = _t._nsec();
	var _sec:GoInt64 = _t._sec();
	if (_sec < (0:GoInt64)) {
		_neg = true;
		_sec = -_sec;
		_nsec = -_nsec;
		if (_nsec < (0:GoInt32)) {
			_nsec = _nsec + ((1e+09 : GoInt32));
			_sec--;
		};
	};
	{
		var __switchIndex__ = -1;
		while (true) {
			if ((_d < (1000000000:Duration)) && (((1000000000 : Duration) % (_d + _d)) == (0 : Duration))) {
				_qmod2 = (_nsec / (_d : GoInt32) : GoInt) & (1 : GoInt);
				_r = (_nsec % (_d : GoInt32) : Duration);
				break;
			} else if ((_d % (1000000000 : Duration)) == (0 : Duration)) {
				var _d1:GoInt64 = (_d / (1000000000 : Duration) : GoInt64);
				_qmod2 = (_sec / _d1 : GoInt) & (1 : GoInt);
				_r = ((_sec % _d1 : Duration) * (1000000000 : Duration)) + (_nsec : Duration);
				break;
			} else {
				var _sec:GoUInt64 = (_sec : GoUInt64);
				var _tmp:GoUInt64 = (_sec >> (32 : GoUnTypedInt)) * (1e+09 : GoUInt64);
				var _u1:GoUInt64 = _tmp >> (32 : GoUnTypedInt);
				var _u0:GoUInt64 = _tmp << (32 : GoUnTypedInt);
				_tmp = (_sec & ("4294967295" : GoUInt64)) * (1e+09 : GoUInt64);
				var _u0x:GoUInt64 = _u0, _u0:GoUInt64 = _u0 + _tmp;
				if (_u0 < _u0x) {
					_u1++;
				};
				{
					final __tmp__0 = _u0;
					final __tmp__1 = _u0 + (_nsec : GoUInt64);
					_u0x = __tmp__0;
					_u0 = __tmp__1;
				};
				if (_u0 < _u0x) {
					_u1++;
				};
				var _d1:GoUInt64 = (_d : GoUInt64);
				while ((_d1 >> (63 : GoUnTypedInt)) != (1 : GoUInt64)) {
					_d1 = _d1 << ((1 : GoUnTypedInt));
				};
				var _d0:GoUInt64 = (0 : GoUInt64);
				while (true) {
					_qmod2 = (0 : GoInt);
					if ((_u1 > _d1) || ((_u1 == _d1) && (_u0 >= _d0))) {
						_qmod2 = (1 : GoInt);
						{
							final __tmp__0 = _u0;
							final __tmp__1 = _u0 - _d0;
							_u0x = __tmp__0;
							_u0 = __tmp__1;
						};
						if (_u0 > _u0x) {
							_u1--;
						};
						_u1 = _u1 - (_d1);
					};
					if ((_d1 == (0 : GoUInt64)) && (_d0 == (_d : GoUInt64))) {
						break;
					};
					_d0 = _d0 >> ((1 : GoUnTypedInt));
					_d0 = _d0 | ((_d1 & (1 : GoUInt64)) << (63 : GoUnTypedInt));
					_d1 = _d1 >> ((1 : GoUnTypedInt));
				};
				_r = (_u0 : Duration);
			};
			break;
		};
	};
	if (_neg && (_r != (0 : Duration))) {
		_qmod2 = _qmod2 ^ ((1 : GoInt));
		_r = _d - _r;
	};
	return {_0: _qmod2, _1: _r};
}

/**
	// FixedZone returns a Location that always uses
	// the given zone name and offset (seconds east of UTC).
**/
function fixedZone(_name:GoString, _offset:GoInt):Location {
	var _l = ({
		_name: _name,
		_zone: (new Slice<T_zone>(0, 0, (new T_zone(_name, _offset, false) : T_zone)) : Slice<T_zone>),
		_tx: (new Slice<T_zoneTrans>(0, 0,
			(new T_zoneTrans(("-9223372036854775808" : GoInt64), (0 : GoUInt8), false, false) : T_zoneTrans)) : Slice<T_zoneTrans>),
		_cacheStart: ("-9223372036854775808" : GoInt64),
		_cacheEnd: ("9223372036854775807" : GoInt64)
	} : Location);
	_l._cacheZone = _l._zone[(0 : GoInt)];
	return _l;
}

/**
	// tzset takes a timezone string like the one found in the TZ environment
	// variable, the end of the last time zone transition expressed as seconds
	// since January 1, 1970 00:00:00 UTC, and a time expressed the same way.
	// We call this a tzset string since in C the function tzset reads TZ.
	// The return values are as for lookup, plus ok which reports whether the
	// parse succeeded.
**/
function _tzset(_s:GoString, _initEnd:GoInt64, _sec:GoInt64):{
	var _0:GoString;
	var _1:GoInt;
	var _2:GoInt64;
	var _3:GoInt64;
	var _4:Bool;
	var _5:Bool;
} {
	var _name:GoString = ("" : GoString),
		_offset:GoInt = (0 : GoInt),
		_start:GoInt64 = (0 : GoInt64),
		_end:GoInt64 = (0 : GoInt64),
		_isDST:Bool = false,
		_ok:Bool = false;
	var _stdName:GoString = ("" : GoString),
		_dstName:GoString = ("" : GoString),
		_stdOffset:GoInt = (0 : GoInt),
		_dstOffset:GoInt = (0 : GoInt);
	{
		var __tmp__ = _tzsetName(_s);
		_stdName = __tmp__._0;
		_s = __tmp__._1;
		_ok = __tmp__._2;
	};
	if (_ok) {
		{
			var __tmp__ = _tzsetOffset(_s);
			_stdOffset = __tmp__._0;
			_s = __tmp__._1;
			_ok = __tmp__._2;
		};
	};
	if (!_ok) {
		return {
			_0: (Go.str() : GoString),
			_1: (0 : GoInt),
			_2: (0 : GoInt64),
			_3: (0 : GoInt64),
			_4: false,
			_5: false
		};
	};
	_stdOffset = -_stdOffset;
	if ((_s.length == (0 : GoInt)) || (_s[(0 : GoInt)] == (",".code : GoUInt8))) {
		return {
			_0: _stdName,
			_1: _stdOffset,
			_2: _initEnd,
			_3: ("9223372036854775807" : GoInt64),
			_4: false,
			_5: true
		};
	};
	{
		var __tmp__ = _tzsetName(_s);
		_dstName = __tmp__._0;
		_s = __tmp__._1;
		_ok = __tmp__._2;
	};
	if (_ok) {
		if ((_s.length == (0 : GoInt)) || (_s[(0 : GoInt)] == (",".code : GoUInt8))) {
			_dstOffset = _stdOffset + (3600 : GoInt);
		} else {
			{
				var __tmp__ = _tzsetOffset(_s);
				_dstOffset = __tmp__._0;
				_s = __tmp__._1;
				_ok = __tmp__._2;
			};
			_dstOffset = -_dstOffset;
		};
	};
	if (!_ok) {
		return {
			_0: (Go.str() : GoString),
			_1: (0 : GoInt),
			_2: (0 : GoInt64),
			_3: (0 : GoInt64),
			_4: false,
			_5: false
		};
	};
	if ((_s.length) == (0 : GoInt)) {
		_s = (Go.str(",M3.2.0,M11.1.0") : GoString);
	};
	if ((_s[(0 : GoInt)] != (",".code : GoUInt8)) && (_s[(0 : GoInt)] != (";".code : GoUInt8))) {
		return {
			_0: (Go.str() : GoString),
			_1: (0 : GoInt),
			_2: (0 : GoInt64),
			_3: (0 : GoInt64),
			_4: false,
			_5: false
		};
	};
	_s = (_s.__slice__((1 : GoInt)) : GoString);
	var _startRule:T_rule = ({} : T_rule), _endRule:T_rule = ({} : T_rule);
	{
		var __tmp__ = _tzsetRule(_s);
		_startRule = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
		_s = __tmp__._1;
		_ok = __tmp__._2;
	};
	if ((!_ok || (_s.length == (0 : GoInt))) || (_s[(0 : GoInt)] != (",".code : GoUInt8))) {
		return {
			_0: (Go.str() : GoString),
			_1: (0 : GoInt),
			_2: (0 : GoInt64),
			_3: (0 : GoInt64),
			_4: false,
			_5: false
		};
	};
	_s = (_s.__slice__((1 : GoInt)) : GoString);
	{
		var __tmp__ = _tzsetRule(_s);
		_endRule = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
		_s = __tmp__._1;
		_ok = __tmp__._2;
	};
	if (!_ok || (_s.length > (0 : GoInt))) {
		return {
			_0: (Go.str() : GoString),
			_1: (0 : GoInt),
			_2: (0 : GoInt64),
			_3: (0 : GoInt64),
			_4: false,
			_5: false
		};
	};
	var __tmp__ = _absDate(((_sec + ("62135596800" : GoInt64)) + ("9223371966579724800" : GoInt64) : GoUInt64), false),
		_year:GoInt = __tmp__._0,
		_0:Month = __tmp__._1,
		_1:GoInt = __tmp__._2,
		_yday:GoInt = __tmp__._3;
	var _ysec:GoInt64 = (_yday * (86400 : GoInt) : GoInt64) + (_sec % (86400 : GoInt64));
	var _d:GoUInt64 = _daysSinceEpoch(_year);
	var _abs:GoInt64 = (_d * (86400 : GoUInt64) : GoInt64);
	_abs = _abs + (("-9223372028715321600" : GoInt64));
	var _startSec:GoInt64 = (_tzruleTime(_year, (_startRule == null ? null : _startRule.__copy__()), _stdOffset) : GoInt64);
	var _endSec:GoInt64 = (_tzruleTime(_year, (_endRule == null ? null : _endRule.__copy__()), _dstOffset) : GoInt64);
	var _dstIsDST:Bool = true, _stdIsDST:Bool = false;
	if (_endSec < _startSec) {
		{
			final __tmp__0 = _endSec;
			final __tmp__1 = _startSec;
			_startSec = __tmp__0;
			_endSec = __tmp__1;
		};
		{
			final __tmp__0 = _dstName;
			final __tmp__1 = _stdName;
			_stdName = __tmp__0;
			_dstName = __tmp__1;
		};
		{
			final __tmp__0 = _dstOffset;
			final __tmp__1 = _stdOffset;
			_stdOffset = __tmp__0;
			_dstOffset = __tmp__1;
		};
		{
			final __tmp__0 = _dstIsDST;
			final __tmp__1 = _stdIsDST;
			_stdIsDST = __tmp__0;
			_dstIsDST = __tmp__1;
		};
	};
	if (_ysec < _startSec) {
		return {
			_0: _stdName,
			_1: _stdOffset,
			_2: _abs,
			_3: _startSec + _abs,
			_4: _stdIsDST,
			_5: true
		};
	} else if (_ysec >= _endSec) {
		return {
			_0: _stdName,
			_1: _stdOffset,
			_2: _endSec + _abs,
			_3: _abs + (31536000 : GoInt64),
			_4: _stdIsDST,
			_5: true
		};
	} else {
		return {
			_0: _dstName,
			_1: _dstOffset,
			_2: _startSec + _abs,
			_3: _endSec + _abs,
			_4: _dstIsDST,
			_5: true
		};
	};
}

/**
	// tzsetName returns the timezone name at the start of the tzset string s,
	// and the remainder of s, and reports whether the parsing is OK.
**/
function _tzsetName(_s:GoString):{var _0:GoString; var _1:GoString; var _2:Bool;} {
	if ((_s.length) == (0 : GoInt)) {
		return {_0: (Go.str() : GoString), _1: (Go.str() : GoString), _2: false};
	};
	if (_s[(0 : GoInt)] != ("<".code : GoUInt8)) {
		for (_i => _r in _s) {
			if (_r == (("0".code : GoInt32)) || _r == (("1".code : GoInt32)) || _r == (("2".code : GoInt32)) || _r == (("3".code : GoInt32))
				|| _r == (("4".code : GoInt32)) || _r == (("5".code : GoInt32)) || _r == (("6".code : GoInt32)) || _r == (("7".code : GoInt32))
				|| _r == (("8".code : GoInt32)) || _r == (("9".code : GoInt32)) || _r == ((",".code : GoInt32)) || _r == (("-".code : GoInt32))
				|| _r == (("+".code : GoInt32))) {
				if (_i < (3:GoInt)) {
					return {_0: (Go.str() : GoString), _1: (Go.str() : GoString), _2: false};
				};
				return {_0: (_s.__slice__(0, _i) : GoString), _1: (_s.__slice__(_i) : GoString), _2: true};
			};
		};
		if ((_s.length) < (3 : GoInt)) {
			return {_0: (Go.str() : GoString), _1: (Go.str() : GoString), _2: false};
		};
		return {_0: _s, _1: (Go.str() : GoString), _2: true};
	} else {
		for (_i => _r in _s) {
			if (_r == (">".code : GoInt32)) {
				return {_0: (_s.__slice__((1 : GoInt), _i) : GoString), _1: (_s.__slice__(_i + (1 : GoInt)) : GoString), _2: true};
			};
		};
		return {_0: (Go.str() : GoString), _1: (Go.str() : GoString), _2: false};
	};
}

/**
	// tzsetOffset returns the timezone offset at the start of the tzset string s,
	// and the remainder of s, and reports whether the parsing is OK.
	// The timezone offset is returned as a number of seconds.
**/
function _tzsetOffset(_s:GoString):{var _0:GoInt; var _1:GoString; var _2:Bool;} {
	var _offset:GoInt = (0 : GoInt),
		_rest:GoString = ("" : GoString),
		_ok:Bool = false;
	if ((_s.length) == (0 : GoInt)) {
		return {_0: (0 : GoInt), _1: (Go.str() : GoString), _2: false};
	};
	var _neg:Bool = false;
	if (_s[(0 : GoInt)] == ("+".code : GoUInt8)) {
		_s = (_s.__slice__((1 : GoInt)) : GoString);
	} else if (_s[(0 : GoInt)] == ("-".code : GoUInt8)) {
		_s = (_s.__slice__((1 : GoInt)) : GoString);
		_neg = true;
	};
	var _hours:GoInt = (0 : GoInt);
	{
		var __tmp__ = _tzsetNum(_s, (0 : GoInt), (168 : GoInt));
		_hours = __tmp__._0;
		_s = __tmp__._1;
		_ok = __tmp__._2;
	};
	if (!_ok) {
		return {_0: (0 : GoInt), _1: (Go.str() : GoString), _2: false};
	};
	var _off:GoInt = _hours * (3600 : GoInt);
	if ((_s.length == (0 : GoInt)) || (_s[(0 : GoInt)] != (":".code : GoUInt8))) {
		if (_neg) {
			_off = -_off;
		};
		return {_0: _off, _1: _s, _2: true};
	};
	var _mins:GoInt = (0 : GoInt);
	{
		var __tmp__ = _tzsetNum((_s.__slice__((1 : GoInt)) : GoString), (0 : GoInt), (59 : GoInt));
		_mins = __tmp__._0;
		_s = __tmp__._1;
		_ok = __tmp__._2;
	};
	if (!_ok) {
		return {_0: (0 : GoInt), _1: (Go.str() : GoString), _2: false};
	};
	_off = _off + (_mins * (60 : GoInt));
	if ((_s.length == (0 : GoInt)) || (_s[(0 : GoInt)] != (":".code : GoUInt8))) {
		if (_neg) {
			_off = -_off;
		};
		return {_0: _off, _1: _s, _2: true};
	};
	var _secs:GoInt = (0 : GoInt);
	{
		var __tmp__ = _tzsetNum((_s.__slice__((1 : GoInt)) : GoString), (0 : GoInt), (59 : GoInt));
		_secs = __tmp__._0;
		_s = __tmp__._1;
		_ok = __tmp__._2;
	};
	if (!_ok) {
		return {_0: (0 : GoInt), _1: (Go.str() : GoString), _2: false};
	};
	_off = _off + (_secs);
	if (_neg) {
		_off = -_off;
	};
	return {_0: _off, _1: _s, _2: true};
}

/**
	// tzsetRule parses a rule from a tzset string.
	// It returns the rule, and the remainder of the string, and reports success.
**/
function _tzsetRule(_s:GoString):{var _0:T_rule; var _1:GoString; var _2:Bool;} {
	var _r:T_rule = ({} : T_rule);
	if ((_s.length) == (0 : GoInt)) {
		return {_0: (new T_rule() : T_rule), _1: (Go.str() : GoString), _2: false};
	};
	var _ok:Bool = false;
	if (_s[(0 : GoInt)] == ("J".code : GoUInt8)) {
		var _jday:GoInt = (0 : GoInt);
		{
			var __tmp__ = _tzsetNum((_s.__slice__((1 : GoInt)) : GoString), (1 : GoInt), (365 : GoInt));
			_jday = __tmp__._0;
			_s = __tmp__._1;
			_ok = __tmp__._2;
		};
		if (!_ok) {
			return {_0: (new T_rule() : T_rule), _1: (Go.str() : GoString), _2: false};
		};
		_r._kind = (0 : T_ruleKind);
		_r._day = _jday;
	} else if (_s[(0 : GoInt)] == ("M".code : GoUInt8)) {
		var _mon:GoInt = (0 : GoInt);
		{
			var __tmp__ = _tzsetNum((_s.__slice__((1 : GoInt)) : GoString), (1 : GoInt), (12 : GoInt));
			_mon = __tmp__._0;
			_s = __tmp__._1;
			_ok = __tmp__._2;
		};
		if ((!_ok || (_s.length == (0 : GoInt))) || (_s[(0 : GoInt)] != (".".code : GoUInt8))) {
			return {_0: (new T_rule() : T_rule), _1: (Go.str() : GoString), _2: false};
		};
		var _week:GoInt = (0 : GoInt);
		{
			var __tmp__ = _tzsetNum((_s.__slice__((1 : GoInt)) : GoString), (1 : GoInt), (5 : GoInt));
			_week = __tmp__._0;
			_s = __tmp__._1;
			_ok = __tmp__._2;
		};
		if ((!_ok || (_s.length == (0 : GoInt))) || (_s[(0 : GoInt)] != (".".code : GoUInt8))) {
			return {_0: (new T_rule() : T_rule), _1: (Go.str() : GoString), _2: false};
		};
		var _day:GoInt = (0 : GoInt);
		{
			var __tmp__ = _tzsetNum((_s.__slice__((1 : GoInt)) : GoString), (0 : GoInt), (6 : GoInt));
			_day = __tmp__._0;
			_s = __tmp__._1;
			_ok = __tmp__._2;
		};
		if (!_ok) {
			return {_0: (new T_rule() : T_rule), _1: (Go.str() : GoString), _2: false};
		};
		_r._kind = (2 : T_ruleKind);
		_r._day = _day;
		_r._week = _week;
		_r._mon = _mon;
	} else {
		var _day:GoInt = (0 : GoInt);
		{
			var __tmp__ = _tzsetNum(_s, (0 : GoInt), (365 : GoInt));
			_day = __tmp__._0;
			_s = __tmp__._1;
			_ok = __tmp__._2;
		};
		if (!_ok) {
			return {_0: (new T_rule() : T_rule), _1: (Go.str() : GoString), _2: false};
		};
		_r._kind = (1 : T_ruleKind);
		_r._day = _day;
	};
	if ((_s.length == (0 : GoInt)) || (_s[(0 : GoInt)] != ("/".code : GoUInt8))) {
		_r._time = (7200 : GoInt);
		return {_0: (_r == null ? null : _r.__copy__()), _1: _s, _2: true};
	};
	var __tmp__ = _tzsetOffset((_s.__slice__((1 : GoInt)) : GoString)),
		_offset:GoInt = __tmp__._0,
		_s:GoString = __tmp__._1,
		_ok:Bool = __tmp__._2;
	if (!_ok) {
		return {_0: (new T_rule() : T_rule), _1: (Go.str() : GoString), _2: false};
	};
	_r._time = _offset;
	return {_0: (_r == null ? null : _r.__copy__()), _1: _s, _2: true};
}

/**
	// tzsetNum parses a number from a tzset string.
	// It returns the number, and the remainder of the string, and reports success.
	// The number must be between min and max.
**/
function _tzsetNum(_s:GoString, _min:GoInt, _max:GoInt):{var _0:GoInt; var _1:GoString; var _2:Bool;} {
	var _num:GoInt = (0 : GoInt),
		_rest:GoString = ("" : GoString),
		_ok:Bool = false;
	if ((_s.length) == (0 : GoInt)) {
		return {_0: (0 : GoInt), _1: (Go.str() : GoString), _2: false};
	};
	_num = (0 : GoInt);
	for (_i => _r in _s) {
		if ((_r < ("0".code:GoInt32)) || (_r > ("9".code : GoInt32))) {
			if ((_i == (0 : GoInt)) || (_num < _min)) {
				return {_0: (0 : GoInt), _1: (Go.str() : GoString), _2: false};
			};
			return {_0: _num, _1: (_s.__slice__(_i) : GoString), _2: true};
		};
		_num = _num * ((10 : GoInt));
		_num = _num + ((_r : GoInt) - ("0".code : GoInt));
		if (_num > _max) {
			return {_0: (0 : GoInt), _1: (Go.str() : GoString), _2: false};
		};
	};
	if (_num < _min) {
		return {_0: (0 : GoInt), _1: (Go.str() : GoString), _2: false};
	};
	return {_0: _num, _1: (Go.str() : GoString), _2: true};
}

/**
	// tzruleTime takes a year, a rule, and a timezone offset,
	// and returns the number of seconds since the start of the year
	// that the rule takes effect.
**/
function _tzruleTime(_year:GoInt, _r:T_rule, _off:GoInt):GoInt {
	var _s:GoInt = (0 : GoInt);
	{
		var __switchIndex__ = -1;
		while (true) {
			if (_r._kind == ((0 : T_ruleKind))) {
				_s = (_r._day - (1 : GoInt)) * (86400 : GoInt);
				if (_isLeap(_year) && (_r._day >= (60 : GoInt))) {
					_s = _s + ((86400 : GoInt));
				};
				break;
			} else if (_r._kind == ((1 : T_ruleKind))) {
				_s = _r._day * (86400 : GoInt);
				break;
			} else if (_r._kind == ((2 : T_ruleKind))) {
				var _m1:GoInt = ((_r._mon + (9 : GoInt)) % (12 : GoInt)) + (1 : GoInt);
				var _yy0:GoInt = _year;
				if (_r._mon <= (2 : GoInt)) {
					_yy0--;
				};
				var _yy1:GoInt = _yy0 / (100 : GoInt);
				var _yy2:GoInt = _yy0 % (100 : GoInt);
				var _dow:GoInt = (((((((((26 : GoInt) * _m1) - (2 : GoInt)) / (10 : GoInt)) + (1 : GoInt)) + _yy2) + (_yy2 / (4 : GoInt)))
					+ (_yy1 / (4 : GoInt)))
					- ((2 : GoInt) * _yy1)) % (7 : GoInt);
				if (_dow < (0:GoInt)) {
					_dow = _dow + ((7 : GoInt));
				};
				var _d:GoInt = _r._day - _dow;
				if (_d < (0:GoInt)) {
					_d = _d + ((7 : GoInt));
				};
				{
					var _i:GoInt = (1 : GoInt);
					Go.cfor(_i < _r._week, _i++, {
						if ((_d + (7 : GoInt)) >= _daysIn((_r._mon : Month), _year)) {
							break;
						};
						_d = _d + ((7 : GoInt));
					});
				};
				_d = _d + ((_daysBefore[_r._mon - (1 : GoInt)] : GoInt));
				if (_isLeap(_year) && (_r._mon > (2 : GoInt))) {
					_d++;
				};
				_s = _d * (86400 : GoInt);
				break;
			};
			break;
		};
	};
	return (_s + _r._time) - _off;
}

/**
	// LoadLocation returns the Location with the given name.
	//
	// If the name is "" or "UTC", LoadLocation returns UTC.
	// If the name is "Local", LoadLocation returns Local.
	//
	// Otherwise, the name is taken to be a location name corresponding to a file
	// in the IANA Time Zone database, such as "America/New_York".
	//
	// LoadLocation looks for the IANA Time Zone database in the following
	// locations in order:
	//
	// - the directory or uncompressed zip file named by the ZONEINFO environment variable
	// - on a Unix system, the system standard installation location
	// - $GOROOT/lib/time/zoneinfo.zip
	// - the time/tzdata package, if it was imported
**/
function loadLocation(_name:GoString):{var _0:Location; var _1:Error;} {
	if ((_name == (Go.str() : GoString)) || (_name == (Go.str("UTC") : GoString))) {
		return {_0: utc, _1: (null : stdgo.Error)};
	};
	if (_name == (Go.str("Local") : GoString)) {
		return {_0: local, _1: (null : stdgo.Error)};
	};
	if ((_containsDotDot(_name) || (_name[(0 : GoInt)] == ("/".code : GoUInt8))) || (_name[(0 : GoInt)] == ("\\".code : GoUInt8))) {
		return {_0: null, _1: _errLocation};
	};
	_zoneinfoOnce.do_(function():Void {
		var __tmp__ = stdgo.syscall.Syscall.getenv((Go.str("ZONEINFO") : GoString)),
			_env:GoString = __tmp__._0,
			_0:Bool = __tmp__._1;
		_zoneinfo = Go.pointer(_env);
	});
	var _firstErr:Error = (null : stdgo.Error);
	if (_zoneinfo.value != (Go.str() : GoString)) {
		{
			var __tmp__ = _loadTzinfoFromDirOrZip(_zoneinfo.value, _name),
				_zoneData:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null) {
				{
					var __tmp__ = loadLocationFromTZData(_name, _zoneData),
						_z:Ref<Location> = __tmp__._0,
						_err:stdgo.Error = __tmp__._1;
					if (_err == null) {
						return {_0: _z, _1: (null : stdgo.Error)};
					};
				};
				_firstErr = _err;
			} else if (_err != (2 : stdgo.syscall.Syscall.Errno)) {
				_firstErr = _err;
			};
		};
	};
	{
		var __tmp__ = _loadLocation(_name, _platformZoneSources),
			_z:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null) {
			return {_0: _z, _1: (null : stdgo.Error)};
		} else if (_firstErr == null) {
			_firstErr = _err;
		};
	};
	return {_0: null, _1: _firstErr};
}

/**
	// containsDotDot reports whether s contains "..".
**/
function _containsDotDot(_s:GoString):Bool {
	if ((_s.length) < (2 : GoInt)) {
		return false;
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length - (1 : GoInt)), _i++, {
			if ((_s[_i] == (".".code : GoUInt8)) && (_s[_i + (1 : GoInt)] == (".".code : GoUInt8))) {
				return true;
			};
		});
	};
	return false;
}

function _gorootZoneSource(_goroot:GoString):{var _0:GoString; var _1:Bool;} {
	if (_goroot == (Go.str() : GoString)) {
		return {_0: (Go.str() : GoString), _1: false};
	};
	return {_0: _goroot + (Go.str("/lib/time/zoneinfo.zip") : GoString), _1: true};
}

function _initLocal():Void {
	_localLoc._name = ("Local" : GoString);
	final d = new Date(0, 0, 0, 0, 0, 0);
	var offset = d.getTimezoneOffset() * -1;
	offset *= 60;
	var name = "UTC";
	if (offset < 0) {
		name += "-";
		offset *= -1;
	} else {
		name += "+";
	};
	name += Std.string(offset / 60);
	final min = offset % 60;
	if (min != 0) {
		name += ":" + Std.string(min);
	};
	_localLoc._zone = new Slice<T_zone>(0, 0, ...[{_name: (name : GoString), _offset: offset, _isDST: false}]);
}

/**
	// itoa is like strconv.Itoa but only works for values of i in range [0,99].
	// It panics if i is out of range.
**/
function _itoa(_i:GoInt):GoString {
	if (_i < (10:GoInt)) {
		return ((Go.str("0123456789") : GoString).__slice__(_i, _i + (1 : GoInt)) : GoString);
	};
	return
		((Go.str("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899") : GoString)
			.__slice__(_i * (2 : GoInt), (_i * (2 : GoInt))
		+ (2 : GoInt)) : GoString);
}

/**
	// registerLoadFromEmbeddedTZData is called by the time/tzdata package,
	// if it is imported.
**/
function _registerLoadFromEmbeddedTZData(_f:GoString -> {
	var _0:GoString;
	var _1:Error;
}):Void {
	_loadFromEmbeddedTZData = _f;
}

/**
	// Make a string by stopping at the first NUL
**/
function _byteString(_p:Slice<GoByte>):GoString {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_p.length), _i++, {
			if (_p[_i] == (0 : GoUInt8)) {
				return ((_p.__slice__((0 : GoInt), _i) : Slice<GoUInt8>) : GoString);
			};
		});
	};
	return (_p : GoString);
}

/**
	// LoadLocationFromTZData returns a Location with the given name
	// initialized from the IANA Time Zone database-formatted data.
	// The data should be in the format of a standard IANA time zone file
	// (for example, the content of /etc/localtime on Unix systems).
**/
function loadLocationFromTZData(_name:GoString, _data:Slice<GoByte>):{var _0:Location; var _1:Error;} {
	var _d:T_dataIO = (new T_dataIO(_data, false) : T_dataIO);
	{
		var _magic = _d._read((4 : GoInt));
		if ((_magic : GoString) != (Go.str("TZif") : GoString)) {
			return {_0: null, _1: _badData};
		};
	};
	var _version:GoInt = (0 : GoInt);
	var _p:Slice<GoByte> = (null : Slice<GoUInt8>);
	{
		_p = _d._read((16 : GoInt));
		if ((_p.length) != (16 : GoInt)) {
			return {_0: null, _1: _badData};
		} else {
			if (_p[(0 : GoInt)] == ((0 : GoUInt8))) {
				_version = (1 : GoInt);
			} else if (_p[(0 : GoInt)] == (("2".code : GoUInt8))) {
				_version = (2 : GoInt);
			} else if (_p[(0 : GoInt)] == (("3".code : GoUInt8))) {
				_version = (3 : GoInt);
			} else {
				return {_0: null, _1: _badData};
			};
		};
	};
	var nutclocal:GoUnTypedInt = (5 : GoUnTypedInt),
		nstdWall:GoUnTypedInt = (5 : GoUnTypedInt),
		nleap:GoUnTypedInt = (5 : GoUnTypedInt),
		ntime:GoUnTypedInt = (5 : GoUnTypedInt),
		nzone:GoUnTypedInt = (5 : GoUnTypedInt),
		nchar:GoUnTypedInt = (5 : GoUnTypedInt);
	var _n:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...6) (0 : GoInt)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (6:GoInt), _i++, {
			var __tmp__ = _d._big4(),
				_nn:GoUInt32 = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (!_ok) {
				return {_0: null, _1: _badData};
			};
			if (((_nn : GoInt) : GoUInt32) != _nn) {
				return {_0: null, _1: _badData};
			};
			_n[_i] = (_nn : GoInt);
		});
	};
	var _is64:Bool = false;
	if (_version > (1 : GoInt)) {
		var _skip:GoInt = ((((((_n[(3 : GoInt)] * (4 : GoInt)) + _n[(3 : GoInt)]) + (_n[(4 : GoInt)] * (6 : GoInt))) + _n[(5 : GoInt)])
			+ (_n[(2 : GoInt)] * (8 : GoInt)))
			+ _n[(1 : GoInt)])
			+ _n[(0 : GoInt)];
		_skip = _skip + ((20 : GoInt));
		_d._read(_skip);
		_is64 = true;
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (6:GoInt), _i++, {
				var __tmp__ = _d._big4(),
					_nn:GoUInt32 = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (!_ok) {
					return {_0: null, _1: _badData};
				};
				if (((_nn : GoInt) : GoUInt32) != _nn) {
					return {_0: null, _1: _badData};
				};
				_n[_i] = (_nn : GoInt);
			});
		};
	};
	var _size:GoInt = (4 : GoInt);
	if (_is64) {
		_size = (8 : GoInt);
	};
	var _txtimes:T_dataIO = (new T_dataIO(_d._read(_n[(3 : GoInt)] * _size), false) : T_dataIO);
	var _txzones = _d._read(_n[(3 : GoInt)]);
	var _zonedata:T_dataIO = (new T_dataIO(_d._read(_n[(4 : GoInt)] * (6 : GoInt)), false) : T_dataIO);
	var _abbrev = _d._read(_n[(5 : GoInt)]);
	_d._read(_n[(2 : GoInt)] * (_size + (4 : GoInt)));
	var _isstd = _d._read(_n[(1 : GoInt)]);
	var _isutc = _d._read(_n[(0 : GoInt)]);
	if (_d._error) {
		return {_0: null, _1: _badData};
	};
	var _extend:GoString = ("" : GoString);
	var _rest = _d._rest();
	if (((_rest.length > (2 : GoInt)) && (_rest[(0 : GoInt)] == ("\n".code : GoUInt8)))
		&& (_rest[(_rest.length) - (1 : GoInt)] == ("\n".code : GoUInt8))) {
		_extend = ((_rest.__slice__((1 : GoInt), (_rest.length) - (1 : GoInt)) : Slice<GoUInt8>) : GoString);
	};
	var _nzone:GoInt = _n[(4 : GoInt)];
	if (_nzone == (0 : GoInt)) {
		return {_0: null, _1: _badData};
	};
	var _zones = new Slice<T_zone>((_nzone : GoInt).toBasic(), 0, ...[for (i in 0...(_nzone : GoInt).toBasic()) ({} : T_zone)]);
	for (_i => _ in _zones) {
		var _ok:Bool = false;
		var _n:GoUInt32 = (0 : GoUInt32);
		{
			{
				var __tmp__ = _zonedata._big4();
				_n = __tmp__._0;
				_ok = __tmp__._1;
			};
			if (!_ok) {
				return {_0: null, _1: _badData};
			};
		};
		if (((_n : GoInt) : GoUInt32) != _n) {
			return {_0: null, _1: _badData};
		};
		_zones[_i]._offset = ((_n : GoInt32) : GoInt);
		var _b:GoByte = (0 : GoUInt8);
		{
			{
				var __tmp__ = _zonedata._byte();
				_b = __tmp__._0;
				_ok = __tmp__._1;
			};
			if (!_ok) {
				return {_0: null, _1: _badData};
			};
		};
		_zones[_i]._isDST = _b != (0 : GoUInt8);
		{
			{
				var __tmp__ = _zonedata._byte();
				_b = __tmp__._0;
				_ok = __tmp__._1;
			};
			if (!_ok || ((_b : GoInt) >= _abbrev.length)) {
				return {_0: null, _1: _badData};
			};
		};
		_zones[_i]._name = _byteString((_abbrev.__slice__(_b) : Slice<GoUInt8>));
		if ((false && (_name.length > (8 : GoInt)))
			&& (((_name.__slice__(0, (8 : GoInt)) : GoString) == (Go.str("Etc/GMT+") : GoString))
				|| ((_name.__slice__(0, (8 : GoInt)) : GoString) == (Go.str("Etc/GMT-") : GoString)))) {
			if (_name != (Go.str("Etc/GMT+0") : GoString)) {
				_zones[_i]._name = (_name.__slice__((4 : GoInt)) : GoString);
			};
		};
	};
	var _tx = new Slice<T_zoneTrans>((_n[(3 : GoInt)] : GoInt).toBasic(), 0, ...[for (i in 0...(_n[(3 : GoInt)] : GoInt).toBasic()) ({} : T_zoneTrans)]);
	for (_i => _ in _tx) {
		var _n:GoInt64 = (0 : GoInt64);
		if (!_is64) {
			{
				var __tmp__ = _txtimes._big4(),
					_n4:GoUInt32 = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (!_ok) {
					return {_0: null, _1: _badData};
				} else {
					_n = ((_n4 : GoInt32) : GoInt64);
				};
			};
		} else {
			{
				var __tmp__ = _txtimes._big8(),
					_n8:GoUInt64 = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (!_ok) {
					return {_0: null, _1: _badData};
				} else {
					_n = (_n8 : GoInt64);
				};
			};
		};
		_tx[_i]._when = _n;
		if ((_txzones[_i] : GoInt) >= (_zones.length)) {
			return {_0: null, _1: _badData};
		};
		_tx[_i]._index = _txzones[_i];
		if (_i < (_isstd.length)) {
			_tx[_i]._isstd = _isstd[_i] != (0 : GoUInt8);
		};
		if (_i < (_isutc.length)) {
			_tx[_i]._isutc = _isutc[_i] != (0 : GoUInt8);
		};
	};
	if ((_tx.length) == (0 : GoInt)) {
		_tx = (_tx.__append__(({_when: ("-9223372036854775808" : GoInt64), _index: (0 : GoUInt8)} : T_zoneTrans)));
	};
	var _l = ({
		_zone: _zones,
		_tx: _tx,
		_name: _name,
		_extend: _extend
	} : Location);
	var __tmp__ = _now(),
		_sec:GoInt64 = __tmp__._0,
		_0:GoInt32 = __tmp__._1,
		_1:GoInt64 = __tmp__._2;
	for (_i => _ in _tx) {
		if ((_tx[_i]._when <= _sec) && (((_i + (1 : GoInt)) == _tx.length) || (_sec < _tx[_i + (1 : GoInt)]._when))) {
			_l._cacheStart = _tx[_i]._when;
			_l._cacheEnd = ("9223372036854775807" : GoInt64);
			_l._cacheZone = _l._zone[_tx[_i]._index];
			if ((_i + (1 : GoInt)) < (_tx.length)) {
				_l._cacheEnd = _tx[_i + (1 : GoInt)]._when;
			} else if (_l._extend != (Go.str() : GoString)) {
				{
					var __tmp__ = _tzset(_l._extend, _l._cacheEnd, _sec),
						_name:GoString = __tmp__._0,
						_offset:GoInt = __tmp__._1,
						_estart:GoInt64 = __tmp__._2,
						_eend:GoInt64 = __tmp__._3,
						_isDST:Bool = __tmp__._4,
						_ok:Bool = __tmp__._5;
					if (_ok) {
						_l._cacheStart = _estart;
						_l._cacheEnd = _eend;
						{
							var _zoneIdx:GoInt = _findZone(_l._zone, _name, _offset, _isDST);
							if (_zoneIdx != (-1 : GoInt)) {
								_l._cacheZone = _l._zone[_zoneIdx];
							} else {
								_l._cacheZone = ({_name: _name, _offset: _offset, _isDST: _isDST} : T_zone);
							};
						};
					};
				};
			};
			break;
		};
	};
	return {_0: _l, _1: (null : stdgo.Error)};
}

function _findZone(_zones:Slice<T_zone>, _name:GoString, _offset:GoInt, _isDST:Bool):GoInt {
	for (_i => _z in _zones) {
		if (((_z._name == _name) && (_z._offset == _offset)) && (_z._isDST == _isDST)) {
			return _i;
		};
	};
	return (-1 : GoInt);
}

/**
	// loadTzinfoFromDirOrZip returns the contents of the file with the given name
	// in dir. dir can either be an uncompressed zip file, or a directory.
**/
function _loadTzinfoFromDirOrZip(_dir:GoString, _name:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
	if ((_dir.length > (4 : GoInt)) && ((_dir.__slice__((_dir.length) - (4 : GoInt)) : GoString) == (Go.str(".zip") : GoString))) {
		return _loadTzinfoFromZip(_dir, _name);
	};
	if (_dir != (Go.str() : GoString)) {
		_name = (_dir + (Go.str("/") : GoString)) + _name;
	};
	return _readFile(_name);
}

/**
	// get4 returns the little-endian 32-bit value in b.
**/
function _get4(_b:Slice<GoByte>):GoInt {
	if ((_b.length) < (4 : GoInt)) {
		return (0 : GoInt);
	};
	return
		(((_b[(0 : GoInt)] : GoInt) | ((_b[(1 : GoInt)] : GoInt) << (8 : GoUnTypedInt))) | ((_b[(2 : GoInt)] : GoInt) << (16 : GoUnTypedInt))) | ((_b[(3 : GoInt)] : GoInt) << (24 : GoUnTypedInt));
}

/**
	// get2 returns the little-endian 16-bit value in b.
**/
function _get2(_b:Slice<GoByte>):GoInt {
	if ((_b.length) < (2 : GoInt)) {
		return (0 : GoInt);
	};
	return (_b[(0 : GoInt)] : GoInt) | ((_b[(1 : GoInt)] : GoInt) << (8 : GoUnTypedInt));
}

/**
	// loadTzinfoFromZip returns the contents of the file with the given name
	// in the given uncompressed zip file.
**/
function _loadTzinfoFromZip(_zipfile:GoString, _name:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = _open(_zipfile),
		_fd:GoUIntptr = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: (null : Slice<GoUInt8>), _1: _err};
	};
	try {
		{
			var _a0 = _fd;
			__deferstack__.unshift(() -> _closefd(_a0));
		};
		var _zecheader:GoUnTypedInt = (101010256 : GoUnTypedInt),
			_zcheader:GoUnTypedInt = (33639248 : GoUnTypedInt),
			_ztailsize:GoUnTypedInt = (22 : GoUnTypedInt),
			_zheadersize:GoUnTypedInt = (30 : GoUnTypedInt),
			_zheader:GoUnTypedInt = (67324752 : GoUnTypedInt);
		var _buf = new Slice<GoUInt8>((22 : GoInt).toBasic(), 0, ...[for (i in 0...(22 : GoInt).toBasic()) (0 : GoUInt8)]);
		{
			var _err:stdgo.Error = _preadn(_fd, _buf, (-22 : GoInt));
			if ((_err != null) || (_get4(_buf) != (101010256 : GoInt))) {
				{
					for (defer in __deferstack__) {
						defer();
					};
					return {_0: (null : Slice<GoUInt8>), _1: stdgo.errors.Errors.new_((Go.str("corrupt zip file ") : GoString) + _zipfile)};
				};
			};
		};
		var _n:GoInt = _get2((_buf.__slice__((10 : GoInt)) : Slice<GoUInt8>));
		var _size:GoInt = _get4((_buf.__slice__((12 : GoInt)) : Slice<GoUInt8>));
		var _off:GoInt = _get4((_buf.__slice__((16 : GoInt)) : Slice<GoUInt8>));
		_buf = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0, ...[for (i in 0...(_size : GoInt).toBasic()) (0 : GoUInt8)]);
		{
			var _err:stdgo.Error = _preadn(_fd, _buf, _off);
			if (_err != null) {
				{
					for (defer in __deferstack__) {
						defer();
					};
					return {_0: (null : Slice<GoUInt8>), _1: stdgo.errors.Errors.new_((Go.str("corrupt zip file ") : GoString) + _zipfile)};
				};
			};
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				if (_get4(_buf) != (33639248 : GoInt)) {
					break;
				};
				var _meth:GoInt = _get2((_buf.__slice__((10 : GoInt)) : Slice<GoUInt8>));
				var _size:GoInt = _get4((_buf.__slice__((24 : GoInt)) : Slice<GoUInt8>));
				var _namelen:GoInt = _get2((_buf.__slice__((28 : GoInt)) : Slice<GoUInt8>));
				var _xlen:GoInt = _get2((_buf.__slice__((30 : GoInt)) : Slice<GoUInt8>));
				var _fclen:GoInt = _get2((_buf.__slice__((32 : GoInt)) : Slice<GoUInt8>));
				var _off:GoInt = _get4((_buf.__slice__((42 : GoInt)) : Slice<GoUInt8>));
				var _zname = (_buf.__slice__((46 : GoInt), (46 : GoInt) + _namelen) : Slice<GoUInt8>);
				_buf = (_buf.__slice__((((46 : GoInt) + _namelen) + _xlen) + _fclen) : Slice<GoUInt8>);
				if ((_zname : GoString) != _name) {
					continue;
				};
				if (_meth != (0 : GoInt)) {
					{
						for (defer in __deferstack__) {
							defer();
						};
						return {_0: (null : Slice<GoUInt8>), _1: stdgo.errors.Errors.new_((((Go.str("unsupported compression for ") : GoString) + _name)
							+ (Go.str(" in ") : GoString))
							+ _zipfile)};
					};
				};
				_buf = new Slice<GoUInt8>(((30 : GoInt) + _namelen : GoInt).toBasic(), 0,
					...[for (i in 0...((30 : GoInt) + _namelen : GoInt).toBasic()) (0 : GoUInt8)]);
				{
					var _err:stdgo.Error = _preadn(_fd, _buf, _off);
					if (((((_err != null) || (_get4(_buf) != (67324752 : GoInt)))
						|| (_get2((_buf.__slice__((8 : GoInt)) : Slice<GoUInt8>)) != _meth))
						|| (_get2((_buf.__slice__((26 : GoInt)) : Slice<GoUInt8>)) != _namelen))
						|| (((_buf.__slice__((30 : GoInt), (30 : GoInt) + _namelen) : Slice<GoUInt8>) : GoString) != _name)) {
						{
							for (defer in __deferstack__) {
								defer();
							};
							return {_0: (null : Slice<GoUInt8>), _1: stdgo.errors.Errors.new_((Go.str("corrupt zip file ") : GoString) + _zipfile)};
						};
					};
				};
				_xlen = _get2((_buf.__slice__((28 : GoInt)) : Slice<GoUInt8>));
				_buf = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0, ...[for (i in 0...(_size : GoInt).toBasic()) (0 : GoUInt8)]);
				{
					var _err:stdgo.Error = _preadn(_fd, _buf, ((_off + (30 : GoInt)) + _namelen) + _xlen);
					if (_err != null) {
						{
							for (defer in __deferstack__) {
								defer();
							};
							return {_0: (null : Slice<GoUInt8>), _1: stdgo.errors.Errors.new_((Go.str("corrupt zip file ") : GoString) + _zipfile)};
						};
					};
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					return {_0: _buf, _1: (null : stdgo.Error)};
				};
			});
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			return {
				_0: (null : Slice<GoUInt8>),
				_1: {
					final __self__ = new stdgo.syscall.Syscall.Errno_asInterface((2 : stdgo.syscall.Syscall.Errno));
					__self__.error = #if !macro function():GoString return (2 : stdgo.syscall.Syscall.Errno).error() #else null #end;
					__self__.is_ = #if !macro function(__0:stdgo.Error):Bool return (2 : stdgo.syscall.Syscall.Errno).is_(__0) #else null #end;
					__self__.temporary = #if !macro function():Bool return (2 : stdgo.syscall.Syscall.Errno).temporary() #else null #end;
					__self__.timeout = #if !macro function():Bool return (2 : stdgo.syscall.Syscall.Errno).timeout() #else null #end;
					__self__;
				}
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return {_0: (null : Slice<GoUInt8>), _1: (null : stdgo.Error)};
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return {_0: (null : Slice<GoUInt8>), _1: (null : stdgo.Error)};
	};
}

/**
	// loadTzinfo returns the time zone information of the time zone
	// with the given name, from a given source. A source may be a
	// timezone database directory, tzdata database file or an uncompressed
	// zip file, containing the contents of such a directory.
**/
function _loadTzinfo(_name:GoString, _source:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
	if ((_source.length >= (6 : GoInt))
		&& ((_source.__slice__((_source.length) - (6 : GoInt)) : GoString) == (Go.str("tzdata") : GoString))) {
		return _loadTzinfoFromTzdata(_source, _name);
	};
	return _loadTzinfoFromDirOrZip(_source, _name);
}

/**
	// loadLocation returns the Location with the given name from one of
	// the specified sources. See loadTzinfo for a list of supported sources.
	// The first timezone data matching the given name that is successfully loaded
	// and parsed is returned as a Location.
**/
function _loadLocation(_name:GoString, _sources:Slice<GoString>):{var _0:Location; var _1:Error;} {
	var _z:Location = (null : Location),
		_firstErr:Error = (null : stdgo.Error);
	for (_0 => _source in _sources) {
		var __tmp__ = _loadTzinfo(_name, _source),
			_zoneData:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null) {
			{
				{
					var __tmp__ = loadLocationFromTZData(_name, _zoneData);
					_z = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err == null) {
					return {_0: _z, _1: (null : stdgo.Error)};
				};
			};
		};
		if ((_firstErr == null) && (_err != (2 : stdgo.syscall.Syscall.Errno))) {
			_firstErr = _err;
		};
	};
	if (_loadFromEmbeddedTZData != null) {
		var __tmp__ = _loadFromEmbeddedTZData(_name),
			_zoneData:GoString = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null) {
			{
				{
					var __tmp__ = loadLocationFromTZData(_name, (_zoneData : Slice<GoByte>));
					_z = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err == null) {
					return {_0: _z, _1: (null : stdgo.Error)};
				};
			};
		};
		if ((_firstErr == null) && (_err != (2 : stdgo.syscall.Syscall.Errno))) {
			_firstErr = _err;
		};
	};
	{
		var __tmp__ = _gorootZoneSource(stdgo.runtime.Runtime.goroot()),
			_source:GoString = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok) {
			var __tmp__ = _loadTzinfo(_name, _source),
				_zoneData:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err == null) {
				{
					{
						var __tmp__ = loadLocationFromTZData(_name, _zoneData);
						_z = __tmp__._0;
						_err = __tmp__._1;
					};
					if (_err == null) {
						return {_0: _z, _1: (null : stdgo.Error)};
					};
				};
			};
			if ((_firstErr == null) && (_err != (2 : stdgo.syscall.Syscall.Errno))) {
				_firstErr = _err;
			};
		};
	};
	if (_firstErr != null) {
		return {_0: null, _1: _firstErr};
	};
	return {_0: null, _1: stdgo.errors.Errors.new_((Go.str("unknown time zone ") : GoString) + _name)};
}

/**
	// readFile reads and returns the content of the named file.
	// It is a trivial implementation of os.ReadFile, reimplemented
	// here to avoid depending on io/ioutil or os.
	// It returns an error if name exceeds maxFileSize bytes.
**/
function _readFile(_name:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
	var __recover_exception__:AnyInterface = null;
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = _open(_name),
		_f:GoUIntptr = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: (null : Slice<GoUInt8>), _1: _err};
	};
	try {
		{
			var _a0 = _f;
			__deferstack__.unshift(() -> _closefd(_a0));
		};
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4096) (0 : GoUInt8)]),
			_ret:Slice<GoByte> = (null : Slice<GoUInt8>),
			_n:GoInt = (0 : GoInt);
		while (true) {
			{
				var __tmp__ = _read(_f, (_buf.__slice__(0) : Slice<GoUInt8>));
				_n = __tmp__._0;
				_err = __tmp__._1;
			};
			if (_n > (0 : GoInt)) {
				_ret = (_ret.__append__(...(_buf.__slice__(0, _n) : Slice<GoUInt8>).__toArray__()));
			};
			if ((_n == (0 : GoInt)) || (_err != null)) {
				break;
			};
			if ((_ret.length) > (10485760 : GoInt)) {
				{
					for (defer in __deferstack__) {
						defer();
					};
					return {
						_0: (null : Slice<GoUInt8>),
						_1: {
							final __self__ = new T_fileSizeError_asInterface((_name : T_fileSizeError));
							__self__.error = #if !macro function():GoString return (_name : T_fileSizeError).error() #else null #end;
							__self__;
						}
					};
				};
			};
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			return {_0: _ret, _1: _err};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (__recover_exception__ != null)
				throw __recover_exception__;
			return {_0: (null : Slice<GoUInt8>), _1: (null : stdgo.Error)};
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		__recover_exception__ = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (__recover_exception__ != null)
			throw __recover_exception__;
		return {_0: (null : Slice<GoUInt8>), _1: (null : stdgo.Error)};
	};
}

@:keep var _ = {
	try {
		forceUSPacificForTesting();
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

@:keep class ParseError_static_extension {
	/**
		// Error returns the string representation of a ParseError.
	**/
	@:keep
	static public function error(_e:ParseError):GoString {
		if (_e.message == (Go.str() : GoString)) {
			return (((((((Go.str("parsing time ") : GoString) + _quote(_e.value)) + (Go.str(" as ") : GoString)) + _quote(_e.layout))
				+ (Go.str(": cannot parse ") : GoString))
				+ _quote(_e.valueElem))
				+ (Go.str(" as ") : GoString))
				+ _quote(_e.layoutElem);
		};
		return ((Go.str("parsing time ") : GoString) + _quote(_e.value)) + _e.message;
	}
}

class ParseError_asInterface {
	/**
		// Error returns the string representation of a ParseError.
	**/
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:ParseError;
}

@:keep class Timer_static_extension {
	/**
		// Reset changes the timer to expire after duration d.
		// It returns true if the timer had been active, false if the timer had
		// expired or been stopped.
		//
		// For a Timer created with NewTimer, Reset should be invoked only on
		// stopped or expired timers with drained channels.
		//
		// If a program has already received a value from t.C, the timer is known
		// to have expired and the channel drained, so t.Reset can be used directly.
		// If a program has not yet received a value from t.C, however,
		// the timer must be stopped and—if Stop reports that the timer expired
		// before being stopped—the channel explicitly drained:
		//
		//	if !t.Stop() {
		//		<-t.C
		//	}
		//	t.Reset(d)
		//
		// This should not be done concurrent to other receives from the Timer's
		// channel.
		//
		// Note that it is not possible to use Reset's return value correctly, as there
		// is a race condition between draining the channel and the new timer expiring.
		// Reset should always be invoked on stopped or expired channels, as described above.
		// The return value exists to preserve compatibility with existing programs.
		//
		// For a Timer created with AfterFunc(d, f), Reset either reschedules
		// when f will run, in which case Reset returns true, or schedules f
		// to run again, in which case it returns false.
		// When Reset returns false, Reset neither waits for the prior f to
		// complete before returning nor does it guarantee that the subsequent
		// goroutine running f does not run concurrently with the prior
		// one. If the caller needs to know whether the prior execution of
		// f is completed, it must coordinate with f explicitly.
	**/
	@:keep
	static public function reset(_t:Timer, _d:Duration):Bool {
		if (_t._r._f == null) {
			throw Go.toInterface((Go.str("time: Reset called on uninitialized Timer") : GoString));
		};
		var _w:GoInt64 = _when(_d);
		return _resetTimer(_t._r, _w);
	}

	/**
		// Stop prevents the Timer from firing.
		// It returns true if the call stops the timer, false if the timer has already
		// expired or been stopped.
		// Stop does not close the channel, to prevent a read from the channel succeeding
		// incorrectly.
		//
		// To ensure the channel is empty after a call to Stop, check the
		// return value and drain the channel.
		// For example, assuming the program has not received from t.C already:
		//
		//	if !t.Stop() {
		//		<-t.C
		//	}
		//
		// This cannot be done concurrent to other receives from the Timer's
		// channel or other calls to the Timer's Stop method.
		//
		// For a timer created with AfterFunc(d, f), if t.Stop returns false, then the timer
		// has already expired and the function f has been started in its own goroutine;
		// Stop does not wait for f to complete before returning.
		// If the caller needs to know whether f is completed, it must coordinate
		// with f explicitly.
	**/
	@:keep
	static public function stop(_t:Timer):Bool {
		if (_t._r._f == null) {
			throw Go.toInterface((Go.str("time: Stop called on uninitialized Timer") : GoString));
		};
		return _stopTimer(_t._r);
	}
}

class Timer_asInterface {
	/**
		// Reset changes the timer to expire after duration d.
		// It returns true if the timer had been active, false if the timer had
		// expired or been stopped.
		//
		// For a Timer created with NewTimer, Reset should be invoked only on
		// stopped or expired timers with drained channels.
		//
		// If a program has already received a value from t.C, the timer is known
		// to have expired and the channel drained, so t.Reset can be used directly.
		// If a program has not yet received a value from t.C, however,
		// the timer must be stopped and—if Stop reports that the timer expired
		// before being stopped—the channel explicitly drained:
		//
		//	if !t.Stop() {
		//		<-t.C
		//	}
		//	t.Reset(d)
		//
		// This should not be done concurrent to other receives from the Timer's
		// channel.
		//
		// Note that it is not possible to use Reset's return value correctly, as there
		// is a race condition between draining the channel and the new timer expiring.
		// Reset should always be invoked on stopped or expired channels, as described above.
		// The return value exists to preserve compatibility with existing programs.
		//
		// For a Timer created with AfterFunc(d, f), Reset either reschedules
		// when f will run, in which case Reset returns true, or schedules f
		// to run again, in which case it returns false.
		// When Reset returns false, Reset neither waits for the prior f to
		// complete before returning nor does it guarantee that the subsequent
		// goroutine running f does not run concurrently with the prior
		// one. If the caller needs to know whether the prior execution of
		// f is completed, it must coordinate with f explicitly.
	**/
	@:keep
	public var reset:Duration->Bool = null;

	/**
		// Stop prevents the Timer from firing.
		// It returns true if the call stops the timer, false if the timer has already
		// expired or been stopped.
		// Stop does not close the channel, to prevent a read from the channel succeeding
		// incorrectly.
		//
		// To ensure the channel is empty after a call to Stop, check the
		// return value and drain the channel.
		// For example, assuming the program has not received from t.C already:
		//
		//	if !t.Stop() {
		//		<-t.C
		//	}
		//
		// This cannot be done concurrent to other receives from the Timer's
		// channel or other calls to the Timer's Stop method.
		//
		// For a timer created with AfterFunc(d, f), if t.Stop returns false, then the timer
		// has already expired and the function f has been started in its own goroutine;
		// Stop does not wait for f to complete before returning.
		// If the caller needs to know whether f is completed, it must coordinate
		// with f explicitly.
	**/
	@:keep
	public var stop:() -> Bool = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Timer;
}

@:keep class Ticker_static_extension {
	/**
		// Reset stops a ticker and resets its period to the specified duration.
		// The next tick will arrive after the new period elapses. The duration d
		// must be greater than zero; if not, Reset will panic.
	**/
	@:keep
	static public function reset(_t:Ticker, _d:Duration):Void {
		if (_d <= (0 : Duration)) {
			throw Go.toInterface((Go.str("non-positive interval for Ticker.Reset") : GoString));
		};
		if (_t._r._f == null) {
			throw Go.toInterface((Go.str("time: Reset called on uninitialized Ticker") : GoString));
		};
		_modTimer(_t._r, _when(_d), (_d : GoInt64), _t._r._f, Go.toInterface(_t._r._arg), _t._r._seq);
	}

	/**
		// Stop turns off a ticker. After Stop, no more ticks will be sent.
		// Stop does not close the channel, to prevent a concurrent goroutine
		// reading from the channel from seeing an erroneous "tick".
	**/
	@:keep
	static public function stop(_t:Ticker):Void {
		_stopTimer(_t._r);
	}
}

class Ticker_asInterface {
	/**
		// Reset stops a ticker and resets its period to the specified duration.
		// The next tick will arrive after the new period elapses. The duration d
		// must be greater than zero; if not, Reset will panic.
	**/
	@:keep
	public var reset:Duration->Void = null;

	/**
		// Stop turns off a ticker. After Stop, no more ticks will be sent.
		// Stop does not close the channel, to prevent a concurrent goroutine
		// reading from the channel from seeing an erroneous "tick".
	**/
	@:keep
	public var stop:() -> Void = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Ticker;
}

@:keep class Time_static_extension {
	/**
		// Round returns the result of rounding t to the nearest multiple of d (since the zero time).
		// The rounding behavior for halfway values is to round up.
		// If d <= 0, Round returns t stripped of any monotonic clock reading but otherwise unchanged.
		//
		// Round operates on the time as an absolute duration since the
		// zero time; it does not operate on the presentation form of the
		// time. Thus, Round(Hour) may return a time with a non-zero
		// minute, depending on the time's Location.
	**/
	@:keep
	static public function round(_t:Time, _d:Duration):Time {
		_t._stripMono();
		if (_d <= (0 : Duration)) {
			return (_t == null ? null : _t.__copy__());
		};
		var __tmp__ = _div((_t == null ? null : _t.__copy__()), _d),
			_0:GoInt = __tmp__._0,
			_r:Duration = __tmp__._1;
		if (_lessThanHalf(_r, _d)) {
			return (_t.add(-_r) == null ? null : _t.add(-_r).__copy__());
		};
		return (_t.add(_d - _r) == null ? null : _t.add(_d - _r).__copy__());
	}

	/**
		// Truncate returns the result of rounding t down to a multiple of d (since the zero time).
		// If d <= 0, Truncate returns t stripped of any monotonic clock reading but otherwise unchanged.
		//
		// Truncate operates on the time as an absolute duration since the
		// zero time; it does not operate on the presentation form of the
		// time. Thus, Truncate(Hour) may return a time with a non-zero
		// minute, depending on the time's Location.
	**/
	@:keep
	static public function truncate(_t:Time, _d:Duration):Time {
		_t._stripMono();
		if (_d <= (0 : Duration)) {
			return (_t == null ? null : _t.__copy__());
		};
		var __tmp__ = _div((_t == null ? null : _t.__copy__()), _d),
			_0:GoInt = __tmp__._0,
			_r:Duration = __tmp__._1;
		return (_t.add(-_r) == null ? null : _t.add(-_r).__copy__());
	}

	/**
		// IsDST reports whether the time in the configured location is in Daylight Savings Time.
	**/
	@:keep
	static public function isDST(_t:Time):Bool {
		var __tmp__ = _t._loc._lookup(_t.unix()),
			_0:GoString = __tmp__._0,
			_1:GoInt = __tmp__._1,
			_2:GoInt64 = __tmp__._2,
			_3:GoInt64 = __tmp__._3,
			_isDST:Bool = __tmp__._4;
		return _isDST;
	}

	/**
		// UnmarshalText implements the encoding.TextUnmarshaler interface.
		// The time is expected to be in RFC 3339 format.
	**/
	@:keep
	static public function unmarshalText(_t:Time, _data:Slice<GoByte>):Error {
		var _err:Error = (null : stdgo.Error);
		{
			var __tmp__ = parse((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (_data : GoString));
			_t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
			_err = __tmp__._1;
		};
		return _err;
	}

	/**
		// MarshalText implements the encoding.TextMarshaler interface.
		// The time is formatted in RFC 3339 format, with sub-second precision added if present.
	**/
	@:keep
	static public function marshalText(_t:Time):{var _0:Slice<GoByte>; var _1:Error;} {
		{
			var _y:GoInt = _t.year();
			if ((_y < (0:GoInt)) || (_y >= (10000 : GoInt))) {
				return {_0: (null : Slice<GoUInt8>), _1: stdgo.errors.Errors.new_((Go.str("Time.MarshalText: year outside of range [0,9999]") : GoString))};
			};
		};
		var _b = new Slice<GoUInt8>((0 : GoInt).toBasic(), ((Go.str("2006-01-02T15:04:05.999999999Z07:00") : GoString).length),
			...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
		return {_0: _t.appendFormat(_b, (Go.str("2006-01-02T15:04:05.999999999Z07:00") : GoString)), _1: (null : stdgo.Error)};
	}

	/**
		// UnmarshalJSON implements the json.Unmarshaler interface.
		// The time is expected to be a quoted string in RFC 3339 format.
	**/
	@:keep
	static public function unmarshalJSON(_t:Time, _data:Slice<GoByte>):Error {
		if ((_data : GoString) == (Go.str("null") : GoString)) {
			return (null : stdgo.Error);
		};
		var _err:Error = (null : stdgo.Error);
		{
			var __tmp__ = parse((Go.str("\"2006-01-02T15:04:05Z07:00\"") : GoString), (_data : GoString));
			_t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
			_err = __tmp__._1;
		};
		return _err;
	}

	/**
		// MarshalJSON implements the json.Marshaler interface.
		// The time is a quoted string in RFC 3339 format, with sub-second precision added if present.
	**/
	@:keep
	static public function marshalJSON(_t:Time):{var _0:Slice<GoByte>; var _1:Error;} {
		{
			var _y:GoInt = _t.year();
			if ((_y < (0:GoInt)) || (_y >= (10000 : GoInt))) {
				return {_0: (null : Slice<GoUInt8>), _1: stdgo.errors.Errors.new_((Go.str("Time.MarshalJSON: year outside of range [0,9999]") : GoString))};
			};
		};
		var _b = new Slice<GoUInt8>((0 : GoInt).toBasic(), (37 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
		_b = (_b.__append__(("\"".code : GoUInt8)));
		_b = _t.appendFormat(_b, (Go.str("2006-01-02T15:04:05.999999999Z07:00") : GoString));
		_b = (_b.__append__(("\"".code : GoUInt8)));
		return {_0: _b, _1: (null : stdgo.Error)};
	}

	/**
		// GobDecode implements the gob.GobDecoder interface.
	**/
	@:keep
	static public function gobDecode(_t:Time, _data:Slice<GoByte>):Error {
		return _t.unmarshalBinary(_data);
	}

	/**
		// GobEncode implements the gob.GobEncoder interface.
	**/
	@:keep
	static public function gobEncode(_t:Time):{var _0:Slice<GoByte>; var _1:Error;} {
		return _t.marshalBinary();
	}

	/**
		// UnmarshalBinary implements the encoding.BinaryUnmarshaler interface.
	**/
	@:keep
	static public function unmarshalBinary(_t:Time, _data:Slice<GoByte>):Error {
		var _buf = _data;
		if ((_buf.length) == (0 : GoInt)) {
			return stdgo.errors.Errors.new_((Go.str("Time.UnmarshalBinary: no data") : GoString));
		};
		var _version:GoUInt8 = _buf[(0 : GoInt)];
		if ((_version != (1 : GoUInt8)) && (_version != (2 : GoUInt8))) {
			return stdgo.errors.Errors.new_((Go.str("Time.UnmarshalBinary: unsupported version") : GoString));
		};
		var _wantLen:GoInt = (15 : GoInt);
		if (_version == (2 : GoUInt8)) {
			_wantLen++;
		};
		if ((_buf.length) != _wantLen) {
			return stdgo.errors.Errors.new_((Go.str("Time.UnmarshalBinary: invalid length") : GoString));
		};
		_buf = (_buf.__slice__((1 : GoInt)) : Slice<GoUInt8>);
		var _sec:GoInt64 = (((((((_buf[(7 : GoInt)] : GoInt64) | ((_buf[(6 : GoInt)] : GoInt64) << (8 : GoUnTypedInt))) | ((_buf[(5 : GoInt)] : GoInt64) << (16 : GoUnTypedInt))) | ((_buf[(4 : GoInt)] : GoInt64) << (24 : GoUnTypedInt))) | ((_buf[(3 : GoInt)] : GoInt64) << (32 : GoUnTypedInt))) | ((_buf[(2 : GoInt)] : GoInt64) << (40 : GoUnTypedInt))) | ((_buf[(1 : GoInt)] : GoInt64) << (48 : GoUnTypedInt))) | ((_buf[(0 : GoInt)] : GoInt64) << (56 : GoUnTypedInt));
		_buf = (_buf.__slice__((8 : GoInt)) : Slice<GoUInt8>);
		var _nsec:GoInt32 = (((_buf[(3 : GoInt)] : GoInt32) | ((_buf[(2 : GoInt)] : GoInt32) << (8 : GoUnTypedInt))) | ((_buf[(1 : GoInt)] : GoInt32) << (16 : GoUnTypedInt))) | ((_buf[(0 : GoInt)] : GoInt32) << (24 : GoUnTypedInt));
		_buf = (_buf.__slice__((4 : GoInt)) : Slice<GoUInt8>);
		var _offset:GoInt = ((_buf[(1 : GoInt)] : GoInt16) | ((_buf[(0 : GoInt)] : GoInt16) << (8 : GoUnTypedInt)) : GoInt) * (60 : GoInt);
		if (_version == (2 : GoUInt8)) {
			_offset = _offset + ((_buf[(2 : GoInt)] : GoInt));
		};
		{
			var __tmp__ = (new Time() : Time);
			_t._wall = __tmp__._wall;
			_t._ext = __tmp__._ext;
			_t._loc = __tmp__._loc;
		};
		_t._wall = (_nsec : GoUInt64);
		_t._ext = _sec;
		if (_offset == (-60 : GoInt)) {
			_t._setLoc(_utcLoc);
		} else {
			var __tmp__ = stdgo.time.Time.local._lookup(_t._unixSec()),
				_0:GoString = __tmp__._0,
				_localoff:GoInt = __tmp__._1,
				_1:GoInt64 = __tmp__._2,
				_2:GoInt64 = __tmp__._3,
				_3:Bool = __tmp__._4;
			if (_offset == _localoff) {
				_t._setLoc(stdgo.time.Time.local);
			} else {
				_t._setLoc(fixedZone((Go.str() : GoString), _offset));
			};
		};
		return (null : stdgo.Error);
	}

	/**
		// MarshalBinary implements the encoding.BinaryMarshaler interface.
	**/
	@:keep
	static public function marshalBinary(_t:Time):{var _0:Slice<GoByte>; var _1:Error;} {
		var _offsetMin:GoInt16 = (0 : GoInt16);
		var _offsetSec:GoInt8 = (0 : GoInt8);
		var _version:GoUInt8 = (1 : GoUInt8);
		if (_t.location() == stdgo.time.Time.utc) {
			_offsetMin = (-1 : GoInt16);
		} else {
			var __tmp__ = _t.zone(),
				_0:GoString = __tmp__._0,
				_offset:GoInt = __tmp__._1;
			if ((_offset % (60 : GoInt)) != (0 : GoInt)) {
				_version = (2 : GoUInt8);
				_offsetSec = (_offset % (60 : GoInt) : GoInt8);
			};
			_offset = _offset / ((60 : GoInt));
			if (((_offset < (-32768:GoInt)) || (_offset == (-1 : GoInt))) || (_offset > (32767 : GoInt))) {
				return {_0: (null : Slice<GoUInt8>), _1: stdgo.errors.Errors.new_((Go.str("Time.MarshalBinary: unexpected zone offset") : GoString))};
			};
			_offsetMin = (_offset : GoInt16);
		};
		var _sec:GoInt64 = _t._sec();
		var _nsec:GoInt32 = _t._nsec();
		var _enc = (new Slice<GoUInt8>(0, 0, _version, (_sec >> (56 : GoUnTypedInt) : GoByte), (_sec >> (48 : GoUnTypedInt) : GoByte),
			(_sec >> (40 : GoUnTypedInt) : GoByte), (_sec >> (32 : GoUnTypedInt) : GoByte), (_sec >> (24 : GoUnTypedInt) : GoByte),
			(_sec >> (16 : GoUnTypedInt) : GoByte), (_sec >> (8 : GoUnTypedInt) : GoByte), (_sec : GoByte), (_nsec >> (24 : GoUnTypedInt) : GoByte),
			(_nsec >> (16 : GoUnTypedInt) : GoByte), (_nsec >> (8 : GoUnTypedInt) : GoByte), (_nsec : GoByte), (_offsetMin >> (8 : GoUnTypedInt) : GoByte),
			(_offsetMin : GoByte)) : Slice<GoUInt8>);
		if (_version == (2 : GoUInt8)) {
			_enc = (_enc.__append__((_offsetSec : GoByte)));
		};
		return {_0: _enc, _1: (null : stdgo.Error)};
	}

	/**
		// UnixNano returns t as a Unix time, the number of nanoseconds elapsed
		// since January 1, 1970 UTC. The result is undefined if the Unix time
		// in nanoseconds cannot be represented by an int64 (a date before the year
		// 1678 or after 2262). Note that this means the result of calling UnixNano
		// on the zero Time is undefined. The result does not depend on the
		// location associated with t.
	**/
	@:keep
	static public function unixNano(_t:Time):GoInt64 {
		return (_t._unixSec() * (1e+09 : GoInt64)) + (_t._nsec() : GoInt64);
	}

	/**
		// UnixMicro returns t as a Unix time, the number of microseconds elapsed since
		// January 1, 1970 UTC. The result is undefined if the Unix time in
		// microseconds cannot be represented by an int64 (a date before year -290307 or
		// after year 294246). The result does not depend on the location associated
		// with t.
	**/
	@:keep
	static public function unixMicro(_t:Time):GoInt64 {
		return (_t._unixSec() * (1e+06 : GoInt64)) + ((_t._nsec() : GoInt64) / (1000 : GoInt64));
	}

	/**
		// UnixMilli returns t as a Unix time, the number of milliseconds elapsed since
		// January 1, 1970 UTC. The result is undefined if the Unix time in
		// milliseconds cannot be represented by an int64 (a date more than 292 million
		// years before or after 1970). The result does not depend on the
		// location associated with t.
	**/
	@:keep
	static public function unixMilli(_t:Time):GoInt64 {
		return (_t._unixSec() * (1000 : GoInt64)) + ((_t._nsec() : GoInt64) / (1e+06 : GoInt64));
	}

	/**
		// Unix returns t as a Unix time, the number of seconds elapsed
		// since January 1, 1970 UTC. The result does not depend on the
		// location associated with t.
		// Unix-like operating systems often record time as a 32-bit
		// count of seconds, but since the method here returns a 64-bit
		// value it is valid for billions of years into the past or future.
	**/
	@:keep
	static public function unix(_t:Time):GoInt64 {
		return _t._unixSec();
	}

	/**
		// ZoneBounds returns the bounds of the time zone in effect at time t.
		// The zone begins at start and the next zone begins at end.
		// If the zone begins at the beginning of time, start will be returned as a zero Time.
		// If the zone goes on forever, end will be returned as a zero Time.
		// The Location of the returned times will be the same as t.
	**/
	@:keep
	static public function zoneBounds(_t:Time):{var _0:Time; var _1:Time;} {
		var _start:Time = ({} : Time), _end:Time = ({} : Time);
		var __tmp__ = _t._loc._lookup(_t._unixSec()),
			_0:GoString = __tmp__._0,
			_1:GoInt = __tmp__._1,
			_startSec:GoInt64 = __tmp__._2,
			_endSec:GoInt64 = __tmp__._3,
			_2:Bool = __tmp__._4;
		if (_startSec != ("-9223372036854775808" : GoInt64)) {
			_start = (_unixTime(_startSec, (0 : GoInt32)) == null ? null : _unixTime(_startSec, (0 : GoInt32)).__copy__());
			_start._setLoc(_t._loc);
		};
		if (_endSec != ("9223372036854775807" : GoInt64)) {
			_end = (_unixTime(_endSec, (0 : GoInt32)) == null ? null : _unixTime(_endSec, (0 : GoInt32)).__copy__());
			_end._setLoc(_t._loc);
		};
		return {_0: _start, _1: _end};
	}

	/**
		// Zone computes the time zone in effect at time t, returning the abbreviated
		// name of the zone (such as "CET") and its offset in seconds east of UTC.
	**/
	@:keep
	static public function zone(_t:Time):{var _0:GoString; var _1:GoInt;} {
		var _name:GoString = ("" : GoString), _offset:GoInt = (0 : GoInt);
		{
			var __tmp__ = _t._loc._lookup(_t._unixSec());
			_name = __tmp__._0;
			_offset = __tmp__._1;
		};
		return {_0: _name, _1: _offset};
	}

	/**
		// Location returns the time zone information associated with t.
	**/
	@:keep
	static public function location(_t:Time):Location {
		var _l = _t._loc;
		if (_l == null) {
			_l = stdgo.time.Time.utc;
		};
		return _l;
	}

	/**
		// In returns a copy of t representing the same time instant, but
		// with the copy's location information set to loc for display
		// purposes.
		//
		// In panics if loc is nil.
	**/
	@:keep
	static public function in_(_t:Time, _loc:Location):Time {
		if (_loc == null) {
			throw Go.toInterface((Go.str("time: missing Location in call to Time.In") : GoString));
		};
		_t._setLoc(_loc);
		return (_t == null ? null : _t.__copy__());
	}

	/**
		// Local returns t with the location set to local time.
	**/
	@:keep
	static public function local(_t:Time):Time {
		_t._setLoc(stdgo.time.Time.local);
		return (_t == null ? null : _t.__copy__());
	}

	/**
		// UTC returns t with the location set to UTC.
	**/
	@:keep
	static public function utc(_t:Time):Time {
		_t._setLoc(_utcLoc);
		return (_t == null ? null : _t.__copy__());
	}

	/**
		// date computes the year, day of year, and when full=true,
		// the month and day in which t occurs.
	**/
	@:keep
	static public function _date(_t:Time, _full:Bool):{
		var _0:GoInt;
		var _1:Month;
		var _2:GoInt;
		var _3:GoInt;
	} {
		var _year:GoInt = (0 : GoInt),
			_month:Month = ((0 : GoInt) : Month),
			_day:GoInt = (0 : GoInt),
			_yday:GoInt = (0 : GoInt);
		return _absDate(_t._abs(), _full);
	}

	/**
		// AddDate returns the time corresponding to adding the
		// given number of years, months, and days to t.
		// For example, AddDate(-1, 2, 3) applied to January 1, 2011
		// returns March 4, 2010.
		//
		// AddDate normalizes its result in the same way that Date does,
		// so, for example, adding one month to October 31 yields
		// December 1, the normalized form for November 31.
	**/
	@:keep
	static public function addDate(_t:Time, _years:GoInt, _months:GoInt, _days:GoInt):Time {
		var __tmp__ = _t.date(),
			_year:GoInt = __tmp__._0,
			_month:Month = __tmp__._1,
			_day:GoInt = __tmp__._2;
		var __tmp__ = _t.clock(),
			_hour:GoInt = __tmp__._0,
			_min:GoInt = __tmp__._1,
			_sec:GoInt = __tmp__._2;
		return (stdgo.time.Time.date(_year + _years, _month + (_months : Month), _day + _days, _hour, _min, _sec, (_t._nsec() : GoInt),
			_t.location()) == null ? null : stdgo.time.Time.date(_year + _years, _month + (_months : Month), _day + _days, _hour, _min, _sec,
				(_t._nsec() : GoInt), _t.location())
			.__copy__());
	}

	/**
		// Sub returns the duration t-u. If the result exceeds the maximum (or minimum)
		// value that can be stored in a Duration, the maximum (or minimum) duration
		// will be returned.
		// To compute t-d for a duration d, use t.Add(-d).
	**/
	@:keep
	static public function sub(_t:Time, _u:Time):Duration {
		if (((_t._wall & _u._wall) & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
			var _te:GoInt64 = _t._ext;
			var _ue:GoInt64 = _u._ext;
			var _d:Duration = (_te - _ue : Duration);
			if ((_d < (0:Duration)) && (_te > _ue)) {
				return ("9223372036854775807" : Duration);
			};
			if ((_d > (0 : Duration)) && (_te < _ue)) {
				return ("-9223372036854775808" : Duration);
			};
			return _d;
		};
		var _d:Duration = ((_t._sec() - _u._sec():Duration) * (1000000000 : Duration)) + (_t._nsec() - _u._nsec():Duration);
		if (_u.add(_d).equal((_t == null ? null : _t.__copy__()))) {
			return _d;
		} else if (_t.before((_u == null ? null : _u.__copy__()))) {
			return ("-9223372036854775808" : Duration);
		} else {
			return ("9223372036854775807" : Duration);
		};
	}

	/**
		// Add returns the time t+d.
	**/
	@:keep
	static public function add(_t:Time, _d:Duration):Time {
		var _dsec:GoInt64 = (_d / (1e+09 : Duration) : GoInt64);
		var _nsec:GoInt32 = _t._nsec() + (_d % (1e+09 : Duration) : GoInt32);
		if (_nsec >= (1e+09 : GoInt32)) {
			_dsec++;
			_nsec = _nsec - ((1e+09 : GoInt32));
		} else if (_nsec < (0:GoInt32)) {
			_dsec--;
			_nsec = _nsec + ((1e+09 : GoInt32));
		};
		_t._wall = (_t._wall & ((1073741823 : GoUInt64) ^ (-1 : GoUnTypedInt))) | (_nsec : GoUInt64);
		_t._addSec(_dsec);
		if ((_t._wall & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
			var _te:GoInt64 = _t._ext + (_d : GoInt64);
			if (((_d < (0:Duration)) && (_te > _t._ext)) || ((_d > (0 : Duration)) && (_te < _t._ext))) {
				_t._stripMono();
			} else {
				_t._ext = _te;
			};
		};
		return (_t == null ? null : _t.__copy__());
	}

	/**
		// YearDay returns the day of the year specified by t, in the range [1,365] for non-leap years,
		// and [1,366] in leap years.
	**/
	@:keep
	static public function yearDay(_t:Time):GoInt {
		var __tmp__ = _t._date(false),
			_0:GoInt = __tmp__._0,
			_1:Month = __tmp__._1,
			_2:GoInt = __tmp__._2,
			_yday:GoInt = __tmp__._3;
		return _yday + (1 : GoInt);
	}

	/**
		// Nanosecond returns the nanosecond offset within the second specified by t,
		// in the range [0, 999999999].
	**/
	@:keep
	static public function nanosecond(_t:Time):GoInt {
		return (_t._nsec() : GoInt);
	}

	/**
		// Second returns the second offset within the minute specified by t, in the range [0, 59].
	**/
	@:keep
	static public function second(_t:Time):GoInt {
		return (_t._abs() % (60 : GoUInt64):GoInt);
	}

	/**
		// Minute returns the minute offset within the hour specified by t, in the range [0, 59].
	**/
	@:keep
	static public function minute(_t:Time):GoInt {
		return (_t._abs() % (3600 : GoUInt64):GoInt) / (60 : GoInt);
	}

	/**
		// Hour returns the hour within the day specified by t, in the range [0, 23].
	**/
	@:keep
	static public function hour(_t:Time):GoInt {
		return (_t._abs() % (86400 : GoUInt64):GoInt) / (3600 : GoInt);
	}

	/**
		// Clock returns the hour, minute, and second within the day specified by t.
	**/
	@:keep
	static public function clock(_t:Time):{var _0:GoInt; var _1:GoInt; var _2:GoInt;} {
		var _hour:GoInt = (0 : GoInt),
			_min:GoInt = (0 : GoInt),
			_sec:GoInt = (0 : GoInt);
		return _absClock(_t._abs());
	}

	/**
		// ISOWeek returns the ISO 8601 year and week number in which t occurs.
		// Week ranges from 1 to 53. Jan 01 to Jan 03 of year n might belong to
		// week 52 or 53 of year n-1, and Dec 29 to Dec 31 might belong to week 1
		// of year n+1.
	**/
	@:keep
	static public function isoweek(_t:Time):{var _0:GoInt; var _1:GoInt;} {
		var _year:GoInt = (0 : GoInt), _week:GoInt = (0 : GoInt);
		var _abs:GoUInt64 = _t._abs();
		var _d:Weekday = (4 : Weekday) - _absWeekday(_abs);
		if (_d == (4 : Weekday)) {
			_d = (-3 : Weekday);
		};
		_abs = _abs + ((_d : GoUInt64) * (86400 : GoUInt64));
		var __tmp__ = _absDate(_abs, false),
			_year:GoInt = __tmp__._0,
			_0:Month = __tmp__._1,
			_1:GoInt = __tmp__._2,
			_yday:GoInt = __tmp__._3;
		return {_0: _year, _1: (_yday / (7 : GoInt)) + (1 : GoInt)};
	}

	/**
		// Weekday returns the day of the week specified by t.
	**/
	@:keep
	static public function weekday(_t:Time):Weekday {
		return _absWeekday(_t._abs());
	}

	/**
		// Day returns the day of the month specified by t.
	**/
	@:keep
	static public function day(_t:Time):GoInt {
		var __tmp__ = _t._date(true),
			_0:GoInt = __tmp__._0,
			_1:Month = __tmp__._1,
			_day:GoInt = __tmp__._2,
			_2:GoInt = __tmp__._3;
		return _day;
	}

	/**
		// Month returns the month of the year specified by t.
	**/
	@:keep
	static public function month(_t:Time):Month {
		var __tmp__ = _t._date(true),
			_0:GoInt = __tmp__._0,
			_month:Month = __tmp__._1,
			_1:GoInt = __tmp__._2,
			_2:GoInt = __tmp__._3;
		return _month;
	}

	/**
		// Year returns the year in which t occurs.
	**/
	@:keep
	static public function year(_t:Time):GoInt {
		var __tmp__ = _t._date(false),
			_year:GoInt = __tmp__._0,
			_0:Month = __tmp__._1,
			_1:GoInt = __tmp__._2,
			_2:GoInt = __tmp__._3;
		return _year;
	}

	/**
		// Date returns the year, month, and day in which t occurs.
	**/
	@:keep
	static public function date(_t:Time):{var _0:GoInt; var _1:Month; var _2:GoInt;} {
		var _year:GoInt = (0 : GoInt),
			_month:Month = ((0 : GoInt) : Month),
			_day:GoInt = (0 : GoInt);
		{
			var __tmp__ = _t._date(true);
			_year = __tmp__._0;
			_month = __tmp__._1;
			_day = __tmp__._2;
		};
		return {_0: _year, _1: _month, _2: _day};
	}

	/**
		// locabs is a combination of the Zone and abs methods,
		// extracting both return values from a single zone lookup.
	**/
	@:keep
	static public function _locabs(_t:Time):{var _0:GoString; var _1:GoInt; var _2:GoUInt64;} {
		var _name:GoString = ("" : GoString),
			_offset:GoInt = (0 : GoInt),
			_abs:GoUInt64 = (0 : GoUInt64);
		var _l = _t._loc;
		if ((_l == null) || (_l == _localLoc)) {
			_l = _l._get();
		};
		var _sec:GoInt64 = _t._unixSec();
		if (_l != _utcLoc) {
			if (((_l._cacheZone != null) && (_l._cacheStart <= _sec)) && (_sec < _l._cacheEnd)) {
				_name = _l._cacheZone._name;
				_offset = _l._cacheZone._offset;
			} else {
				{
					var __tmp__ = _l._lookup(_sec);
					_name = __tmp__._0;
					_offset = __tmp__._1;
				};
			};
			_sec = _sec + ((_offset : GoInt64));
		} else {
			_name = (Go.str("UTC") : GoString);
		};
		_abs = (_sec + ("9223372028715321600" : GoInt64) : GoUInt64);
		return {_0: _name, _1: _offset, _2: _abs};
	}

	/**
		// abs returns the time t as an absolute time, adjusted by the zone offset.
		// It is called when computing a presentation property like Month or Hour.
	**/
	@:keep
	static public function _abs(_t:Time):GoUInt64 {
		var _l = _t._loc;
		if ((_l == null) || (_l == _localLoc)) {
			_l = _l._get();
		};
		var _sec:GoInt64 = _t._unixSec();
		if (_l != _utcLoc) {
			if (((_l._cacheZone != null) && (_l._cacheStart <= _sec)) && (_sec < _l._cacheEnd)) {
				_sec = _sec + ((_l._cacheZone._offset : GoInt64));
			} else {
				var __tmp__ = _l._lookup(_sec),
					_0:GoString = __tmp__._0,
					_offset:GoInt = __tmp__._1,
					_1:GoInt64 = __tmp__._2,
					_2:GoInt64 = __tmp__._3,
					_3:Bool = __tmp__._4;
				_sec = _sec + ((_offset : GoInt64));
			};
		};
		return (_sec + ("9223372028715321600" : GoInt64) : GoUInt64);
	}

	/**
		// IsZero reports whether t represents the zero time instant,
		// January 1, year 1, 00:00:00 UTC.
	**/
	@:keep
	static public function isZero(_t:Time):Bool {
		return (_t._sec() == (0 : GoInt64)) && (_t._nsec() == (0 : GoInt32));
	}

	/**
		// Equal reports whether t and u represent the same time instant.
		// Two times can be equal even if they are in different locations.
		// For example, 6:00 +0200 and 4:00 UTC are Equal.
		// See the documentation on the Time type for the pitfalls of using == with
		// Time values; most code should use Equal instead.
	**/
	@:keep
	static public function equal(_t:Time, _u:Time):Bool {
		if (((_t._wall & _u._wall) & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
			return _t._ext == _u._ext;
		};
		return (_t._sec() == _u._sec()) && (_t._nsec() == _u._nsec());
	}

	/**
		// Before reports whether the time instant t is before u.
	**/
	@:keep
	static public function before(_t:Time, _u:Time):Bool {
		if (((_t._wall & _u._wall) & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
			return _t._ext < _u._ext;
		};
		var _ts:GoInt64 = _t._sec();
		var _us:GoInt64 = _u._sec();
		return (_ts < _us) || ((_ts == _us) && (_t._nsec() < _u._nsec()));
	}

	/**
		// After reports whether the time instant t is after u.
	**/
	@:keep
	static public function after(_t:Time, _u:Time):Bool {
		if (((_t._wall & _u._wall) & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
			return _t._ext > _u._ext;
		};
		var _ts:GoInt64 = _t._sec();
		var _us:GoInt64 = _u._sec();
		return (_ts > _us) || ((_ts == _us) && (_t._nsec() > _u._nsec()));
	}

	/**
		// mono returns t's monotonic clock reading.
		// It returns 0 for a missing reading.
		// This function is used only for testing,
		// so it's OK that technically 0 is a valid
		// monotonic clock reading as well.
	**/
	@:keep
	static public function _mono(_t:Time):GoInt64 {
		if ((_t._wall & ("9223372036854775808" : GoUInt64)) == (0 : GoUInt64)) {
			return (0 : GoInt64);
		};
		return _t._ext;
	}

	/**
		// setMono sets the monotonic clock reading in t.
		// If t cannot hold a monotonic clock reading,
		// because its wall time is too large,
		// setMono is a no-op.
	**/
	@:keep
	static public function _setMono(_t:Time, _m:GoInt64):Void {
		if ((_t._wall & ("9223372036854775808" : GoUInt64)) == (0 : GoUInt64)) {
			var _sec:GoInt64 = _t._ext;
			if ((_sec < ("59453308800":GoInt64)) || (("68043243391" : GoInt64) < _sec)) {
				return;
			};
			_t._wall = _t._wall | (("9223372036854775808" : GoUInt64) | ((_sec - ("59453308800" : GoInt64) : GoUInt64) << (30 : GoUnTypedInt)));
		};
		_t._ext = _m;
	}

	/**
		// stripMono strips the monotonic clock reading in t.
	**/
	@:keep
	static public function _stripMono(_t:Time):Void {
		if ((_t._wall & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
			_t._ext = _t._sec();
			_t._wall = _t._wall & ((1073741823 : GoUInt64));
		};
	}

	/**
		// setLoc sets the location associated with the time.
	**/
	@:keep
	static public function _setLoc(_t:Time, _loc:Location):Void {
		if (_loc == _utcLoc) {
			_loc = null;
		};
		_t._stripMono();
		_t._loc = _loc;
	}

	/**
		// addSec adds d seconds to the time.
	**/
	@:keep
	static public function _addSec(_t:Time, _d:GoInt64):Void {
		if ((_t._wall & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
			var _sec:GoInt64 = ((_t._wall << (1 : GoUnTypedInt)) >> (31 : GoUnTypedInt) : GoInt64);
			var _dsec:GoInt64 = _sec + _d;
			if (((0 : GoInt64) <= _dsec) && (_dsec <= ("8589934591" : GoInt64))) {
				_t._wall = ((_t._wall & (1073741823 : GoUInt64)) | ((_dsec : GoUInt64) << (30 : GoUnTypedInt))) | ("9223372036854775808" : GoUInt64);
				return;
			};
			_t._stripMono();
		};
		var _sum:GoInt64 = _t._ext + _d;
		if ((_sum > _t._ext) == (_d > (0 : GoInt64))) {
			_t._ext = _sum;
		} else if (_d > (0 : GoInt64)) {
			_t._ext = ("9223372036854775807" : GoInt64);
		} else {
			_t._ext = ("-9223372036854775807" : GoInt64);
		};
	}

	/**
		// unixSec returns the time's seconds since Jan 1 1970 (Unix time).
	**/
	@:keep
	static public function _unixSec(_t:Time):GoInt64 {
		return _t._sec() + ("-62135596800" : GoInt64);
	}

	/**
		// sec returns the time's seconds since Jan 1 year 1.
	**/
	@:keep
	static public function _sec(_t:Time):GoInt64 {
		if ((_t._wall & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
			return ("59453308800" : GoInt64) + ((_t._wall << (1 : GoUnTypedInt)) >> (31 : GoUnTypedInt) : GoInt64);
		};
		return _t._ext;
	}

	/**
		// nsec returns the time's nanoseconds.
	**/
	@:keep
	static public function _nsec(_t:Time):GoInt32 {
		return (_t._wall & (1073741823 : GoUInt64):GoInt32);
	}

	/**
		// AppendFormat is like Format but appends the textual
		// representation to b and returns the extended buffer.
	**/
	@:keep
	static public function appendFormat(_t:Time, _b:Slice<GoByte>, _layout:GoString):Slice<GoByte> {
		var __tmp__ = _t._locabs(),
			_name:GoString = __tmp__._0,
			_offset:GoInt = __tmp__._1,
			_abs:GoUInt64 = __tmp__._2,
			_year:GoInt = (-1 : GoInt),
			_month:Month = ((0 : GoInt) : Month),
			_day:GoInt = (0 : GoInt),
			_yday:GoInt = (0 : GoInt),
			_hour:GoInt = (-1 : GoInt),
			_min:GoInt = (0 : GoInt),
			_sec:GoInt = (0 : GoInt);
		while (_layout != (Go.str() : GoString)) {
			var __tmp__ = _nextStdChunk(_layout),
				_prefix:GoString = __tmp__._0,
				_std:GoInt = __tmp__._1,
				_suffix:GoString = __tmp__._2;
			if (_prefix != (Go.str() : GoString)) {
				_b = (_b.__append__(..._prefix.__toArray__()));
			};
			if (_std == (0 : GoInt)) {
				break;
			};
			_layout = _suffix;
			if ((_year < (0:GoInt)) && ((_std & (256 : GoInt)) != (0 : GoInt))) {
				{
					var __tmp__ = _absDate(_abs, true);
					_year = __tmp__._0;
					_month = __tmp__._1;
					_day = __tmp__._2;
					_yday = __tmp__._3;
				};
				_yday++;
			};
			if ((_hour < (0:GoInt)) && ((_std & (512 : GoInt)) != (0 : GoInt))) {
				{
					var __tmp__ = _absClock(_abs);
					_hour = __tmp__._0;
					_min = __tmp__._1;
					_sec = __tmp__._2;
				};
			};
			{
				var __switchIndex__ = -1;
				while (true) {
					if (_std & (65535 : GoInt) == ((276 : GoInt))) {
						var _y:GoInt = _year;
						if (_y < (0:GoInt)) {
							_y = -_y;
						};
						_b = _appendInt(_b, _y % (100 : GoInt), (2 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((275 : GoInt))) {
						_b = _appendInt(_b, _year, (4 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((258 : GoInt))) {
						_b = (_b.__append__(...((_month.string() : GoString).__slice__(0, (3 : GoInt)) : GoString).__toArray__()));
						break;
					} else if (_std & (65535 : GoInt) == ((257 : GoInt))) {
						var _m:GoString = (_month.string() : GoString);
						_b = (_b.__append__(..._m.__toArray__()));
						break;
					} else if (_std & (65535 : GoInt) == ((259 : GoInt))) {
						_b = _appendInt(_b, (_month : GoInt), (0 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((260 : GoInt))) {
						_b = _appendInt(_b, (_month : GoInt), (2 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((262 : GoInt))) {
						_b = (_b.__append__(...((_absWeekday(_abs).string() : GoString).__slice__(0, (3 : GoInt)) : GoString).__toArray__()));
						break;
					} else if (_std & (65535 : GoInt) == ((261 : GoInt))) {
						var _s:GoString = (_absWeekday(_abs).string() : GoString);
						_b = (_b.__append__(..._s.__toArray__()));
						break;
					} else if (_std & (65535 : GoInt) == ((263 : GoInt))) {
						_b = _appendInt(_b, _day, (0 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((264 : GoInt))) {
						if (_day < (10:GoInt)) {
							_b = (_b.__append__((" ".code : GoUInt8)));
						};
						_b = _appendInt(_b, _day, (0 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((265 : GoInt))) {
						_b = _appendInt(_b, _day, (2 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((266 : GoInt))) {
						if (_yday < (100:GoInt)) {
							_b = (_b.__append__((" ".code : GoUInt8)));
							if (_yday < (10:GoInt)) {
								_b = (_b.__append__((" ".code : GoUInt8)));
							};
						};
						_b = _appendInt(_b, _yday, (0 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((267 : GoInt))) {
						_b = _appendInt(_b, _yday, (3 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((524 : GoInt))) {
						_b = _appendInt(_b, _hour, (2 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((525 : GoInt))) {
						var _hr:GoInt = _hour % (12 : GoInt);
						if (_hr == (0 : GoInt)) {
							_hr = (12 : GoInt);
						};
						_b = _appendInt(_b, _hr, (0 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((526 : GoInt))) {
						var _hr:GoInt = _hour % (12 : GoInt);
						if (_hr == (0 : GoInt)) {
							_hr = (12 : GoInt);
						};
						_b = _appendInt(_b, _hr, (2 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((527 : GoInt))) {
						_b = _appendInt(_b, _min, (0 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((528 : GoInt))) {
						_b = _appendInt(_b, _min, (2 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((529 : GoInt))) {
						_b = _appendInt(_b, _sec, (0 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((530 : GoInt))) {
						_b = _appendInt(_b, _sec, (2 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((533 : GoInt))) {
						if (_hour >= (12 : GoInt)) {
							_b = (_b.__append__(...(Go.str("PM") : GoString).__toArray__()));
						} else {
							_b = (_b.__append__(...(Go.str("AM") : GoString).__toArray__()));
						};
						break;
					} else if (_std & (65535 : GoInt) == ((534 : GoInt))) {
						if (_hour >= (12 : GoInt)) {
							_b = (_b.__append__(...(Go.str("pm") : GoString).__toArray__()));
						} else {
							_b = (_b.__append__(...(Go.str("am") : GoString).__toArray__()));
						};
						break;
					} else if (_std & (65535 : GoInt) == ((24 : GoInt))
						|| _std & (65535 : GoInt) == ((27 : GoInt))
							|| _std & (65535 : GoInt) == ((25 : GoInt))
								|| _std & (65535 : GoInt) == ((26 : GoInt))
									|| _std & (65535 : GoInt) == ((28 : GoInt))
										|| _std & (65535 : GoInt) == ((29 : GoInt))
											|| _std & (65535 : GoInt) == ((32 : GoInt))
												|| _std & (65535 : GoInt) == ((30 : GoInt))
													|| _std & (65535 : GoInt) == ((31 : GoInt))
														|| _std & (65535 : GoInt) == ((33 : GoInt))) {
						if ((_offset == (0 : GoInt))
							&& (((((_std == (24 : GoInt)) || (_std == (27 : GoInt))) || (_std == (25 : GoInt))) || (_std == (26 : GoInt)))
								|| (_std == (28 : GoInt)))) {
							_b = (_b.__append__(("Z".code : GoUInt8)));
							break;
						};
						var _zone:GoInt = _offset / (60 : GoInt);
						var _absoffset:GoInt = _offset;
						if (_zone < (0:GoInt)) {
							_b = (_b.__append__(("-".code : GoUInt8)));
							_zone = -_zone;
							_absoffset = -_absoffset;
						} else {
							_b = (_b.__append__(("+".code : GoUInt8)));
						};
						_b = _appendInt(_b, _zone / (60 : GoInt), (2 : GoInt));
						if ((((_std == (27 : GoInt)) || (_std == (32 : GoInt))) || (_std == (28 : GoInt))) || (_std == (33 : GoInt))) {
							_b = (_b.__append__((":".code : GoUInt8)));
						};
						if ((_std != (31 : GoInt)) && (_std != (26 : GoInt))) {
							_b = _appendInt(_b, _zone % (60 : GoInt), (2 : GoInt));
						};
						if ((((_std == (25 : GoInt)) || (_std == (30 : GoInt))) || (_std == (33 : GoInt))) || (_std == (28 : GoInt))) {
							if ((_std == (33 : GoInt)) || (_std == (28 : GoInt))) {
								_b = (_b.__append__((":".code : GoUInt8)));
							};
							_b = _appendInt(_b, _absoffset % (60 : GoInt), (2 : GoInt));
						};
						break;
					} else if (_std & (65535 : GoInt) == ((23 : GoInt))) {
						if (_name != (Go.str() : GoString)) {
							_b = (_b.__append__(..._name.__toArray__()));
							break;
						};
						var _zone:GoInt = _offset / (60 : GoInt);
						if (_zone < (0:GoInt)) {
							_b = (_b.__append__(("-".code : GoUInt8)));
							_zone = -_zone;
						} else {
							_b = (_b.__append__(("+".code : GoUInt8)));
						};
						_b = _appendInt(_b, _zone / (60 : GoInt), (2 : GoInt));
						_b = _appendInt(_b, _zone % (60 : GoInt), (2 : GoInt));
						break;
					} else if (_std & (65535 : GoInt) == ((34 : GoInt)) || _std & (65535 : GoInt) == ((35 : GoInt))) {
						_b = _formatNano(_b, (_t.nanosecond() : GoUInt), _std);
						break;
					};
					break;
				};
			};
		};
		return _b;
	}

	/**
		// Format returns a textual representation of the time value formatted according
		// to the layout defined by the argument. See the documentation for the
		// constant called Layout to see how to represent the layout format.
		//
		// The executable example for Time.Format demonstrates the working
		// of the layout string in detail and is a good reference.
	**/
	@:keep
	static public function format(_t:Time, _layout:GoString):GoString {
		var _bufSize:GoUnTypedInt = (64 : GoUnTypedInt);
		var _b:Slice<GoByte> = (null : Slice<GoUInt8>);
		var _max:GoInt = (_layout.length) + (10 : GoInt);
		if (_max < (64:GoInt)) {
			var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...64) (0 : GoUInt8)]);
			_b = (_buf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>);
		} else {
			_b = new Slice<GoUInt8>((0 : GoInt).toBasic(), _max, ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
		};
		_b = _t.appendFormat(_b, _layout);
		return (_b : GoString);
	}

	/**
		// GoString implements fmt.GoStringer and formats t to be printed in Go source
		// code.
	**/
	@:keep
	static public function goString(_t:Time):GoString {
		var _buf = new Slice<GoUInt8>((0 : GoInt).toBasic(), (70 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
		_buf = (_buf.__append__(...(Go.str("time.Date(") : GoString).__toArray__()));
		_buf = _appendInt(_buf, _t.year(), (0 : GoInt));
		var _month:Month = _t.month();
		if (((1 : Month) <= _month) && (_month <= (12 : Month))) {
			_buf = (_buf.__append__(...(Go.str(", time.") : GoString).__toArray__()));
			_buf = (_buf.__append__(...(_t.month().string() : GoString).__toArray__()));
		} else {
			_buf = _appendInt(_buf, (_month : GoInt), (0 : GoInt));
		};
		_buf = (_buf.__append__(...(Go.str(", ") : GoString).__toArray__()));
		_buf = _appendInt(_buf, _t.day(), (0 : GoInt));
		_buf = (_buf.__append__(...(Go.str(", ") : GoString).__toArray__()));
		_buf = _appendInt(_buf, _t.hour(), (0 : GoInt));
		_buf = (_buf.__append__(...(Go.str(", ") : GoString).__toArray__()));
		_buf = _appendInt(_buf, _t.minute(), (0 : GoInt));
		_buf = (_buf.__append__(...(Go.str(", ") : GoString).__toArray__()));
		_buf = _appendInt(_buf, _t.second(), (0 : GoInt));
		_buf = (_buf.__append__(...(Go.str(", ") : GoString).__toArray__()));
		_buf = _appendInt(_buf, _t.nanosecond(), (0 : GoInt));
		_buf = (_buf.__append__(...(Go.str(", ") : GoString).__toArray__()));
		{
			var _loc = _t.location();
			if (Go.toInterface(_loc) == Go.toInterface(stdgo.time.Time.utc) || _loc == null) {
				_buf = (_buf.__append__(...(Go.str("time.UTC") : GoString).__toArray__()));
			} else if (Go.toInterface(_loc) == Go.toInterface(stdgo.time.Time.local)) {
				_buf = (_buf.__append__(...(Go.str("time.Local") : GoString).__toArray__()));
			} else {
				_buf = (_buf.__append__(...("time.Location(" : GoString).__toArray__()));
				_buf = (_buf.__append__(...(_quote(_loc._name) : Slice<GoByte>).__toArray__()));
				_buf = (_buf.__append__(...(")" : GoString).__toArray__()));
			};
		};
		_buf = (_buf.__append__((")".code : GoUInt8)));
		return (_buf : GoString);
	}

	/**
		// String returns the time formatted using the format string
		//
		//	"2006-01-02 15:04:05.999999999 -0700 MST"
		//
		// If the time has a monotonic clock reading, the returned string
		// includes a final field "m=±<value>", where value is the monotonic
		// clock reading formatted as a decimal number of seconds.
		//
		// The returned string is meant for debugging; for a stable serialized
		// representation, use t.MarshalText, t.MarshalBinary, or t.Format
		// with an explicit format string.
	**/
	@:keep
	static public function string(_t:Time):GoString {
		var _s:GoString = _t.format((Go.str("2006-01-02 15:04:05.999999999 -0700 MST") : GoString));
		if ((_t._wall & ("9223372036854775808" : GoUInt64)) != (0 : GoUInt64)) {
			var _m2:GoUInt64 = (_t._ext : GoUInt64);
			var _sign:GoUInt8 = (("+".code : GoUInt8) : GoByte);
			if (_t._ext < (0:GoInt64)) {
				_sign = ("-".code : GoUInt8);
				_m2 = -_m2;
			};
			var _m1:GoUInt64 = _m2 / (1e+09 : GoUInt64),
				_m2:GoUInt64 = _m2 % (1e+09 : GoUInt64);
			var _m0:GoUInt64 = _m1 / (1e+09 : GoUInt64),
				_m1:GoUInt64 = _m1 % (1e+09 : GoUInt64);
			var _buf = new Slice<GoUInt8>((0 : GoInt).toBasic(), (24 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
			_buf = (_buf.__append__(...(Go.str(" m=") : GoString).__toArray__()));
			_buf = (_buf.__append__(_sign));
			var _wid:GoInt = (0 : GoInt);
			if (_m0 != (0 : GoUInt64)) {
				_buf = _appendInt(_buf, (_m0 : GoInt), (0 : GoInt));
				_wid = (9 : GoInt);
			};
			_buf = _appendInt(_buf, (_m1 : GoInt), _wid);
			_buf = (_buf.__append__((".".code : GoUInt8)));
			_buf = _appendInt(_buf, (_m2 : GoInt), (9 : GoInt));
			_s = _s + ((_buf : GoString));
		};
		return _s;
	}
}

class Time_asInterface {
	/**
		// Round returns the result of rounding t to the nearest multiple of d (since the zero time).
		// The rounding behavior for halfway values is to round up.
		// If d <= 0, Round returns t stripped of any monotonic clock reading but otherwise unchanged.
		//
		// Round operates on the time as an absolute duration since the
		// zero time; it does not operate on the presentation form of the
		// time. Thus, Round(Hour) may return a time with a non-zero
		// minute, depending on the time's Location.
	**/
	@:keep
	public var round:Duration->Time = null;

	/**
		// Truncate returns the result of rounding t down to a multiple of d (since the zero time).
		// If d <= 0, Truncate returns t stripped of any monotonic clock reading but otherwise unchanged.
		//
		// Truncate operates on the time as an absolute duration since the
		// zero time; it does not operate on the presentation form of the
		// time. Thus, Truncate(Hour) may return a time with a non-zero
		// minute, depending on the time's Location.
	**/
	@:keep
	public var truncate:Duration->Time = null;

	/**
		// IsDST reports whether the time in the configured location is in Daylight Savings Time.
	**/
	@:keep
	public var isDST:() -> Bool = null;

	/**
		// UnmarshalText implements the encoding.TextUnmarshaler interface.
		// The time is expected to be in RFC 3339 format.
	**/
	@:keep
	public var unmarshalText:Slice<GoByte>->Error = null;

	/**
		// MarshalText implements the encoding.TextMarshaler interface.
		// The time is formatted in RFC 3339 format, with sub-second precision added if present.
	**/
	@:keep
	public var marshalText:() -> {
		var _0:Slice<GoByte>;
		var _1:Error;
	} = null;

	/**
		// UnmarshalJSON implements the json.Unmarshaler interface.
		// The time is expected to be a quoted string in RFC 3339 format.
	**/
	@:keep
	public var unmarshalJSON:Slice<GoByte>->Error = null;

	/**
		// MarshalJSON implements the json.Marshaler interface.
		// The time is a quoted string in RFC 3339 format, with sub-second precision added if present.
	**/
	@:keep
	public var marshalJSON:() -> {
		var _0:Slice<GoByte>;
		var _1:Error;
	} = null;

	/**
		// GobDecode implements the gob.GobDecoder interface.
	**/
	@:keep
	public var gobDecode:Slice<GoByte>->Error = null;

	/**
		// GobEncode implements the gob.GobEncoder interface.
	**/
	@:keep
	public var gobEncode:() -> {
		var _0:Slice<GoByte>;
		var _1:Error;
	} = null;

	/**
		// UnmarshalBinary implements the encoding.BinaryUnmarshaler interface.
	**/
	@:keep
	public var unmarshalBinary:Slice<GoByte>->Error = null;

	/**
		// MarshalBinary implements the encoding.BinaryMarshaler interface.
	**/
	@:keep
	public var marshalBinary:() -> {
		var _0:Slice<GoByte>;
		var _1:Error;
	} = null;

	/**
		// UnixNano returns t as a Unix time, the number of nanoseconds elapsed
		// since January 1, 1970 UTC. The result is undefined if the Unix time
		// in nanoseconds cannot be represented by an int64 (a date before the year
		// 1678 or after 2262). Note that this means the result of calling UnixNano
		// on the zero Time is undefined. The result does not depend on the
		// location associated with t.
	**/
	@:keep
	public var unixNano:() -> GoInt64 = null;

	/**
		// UnixMicro returns t as a Unix time, the number of microseconds elapsed since
		// January 1, 1970 UTC. The result is undefined if the Unix time in
		// microseconds cannot be represented by an int64 (a date before year -290307 or
		// after year 294246). The result does not depend on the location associated
		// with t.
	**/
	@:keep
	public var unixMicro:() -> GoInt64 = null;

	/**
		// UnixMilli returns t as a Unix time, the number of milliseconds elapsed since
		// January 1, 1970 UTC. The result is undefined if the Unix time in
		// milliseconds cannot be represented by an int64 (a date more than 292 million
		// years before or after 1970). The result does not depend on the
		// location associated with t.
	**/
	@:keep
	public var unixMilli:() -> GoInt64 = null;

	/**
		// Unix returns t as a Unix time, the number of seconds elapsed
		// since January 1, 1970 UTC. The result does not depend on the
		// location associated with t.
		// Unix-like operating systems often record time as a 32-bit
		// count of seconds, but since the method here returns a 64-bit
		// value it is valid for billions of years into the past or future.
	**/
	@:keep
	public var unix:() -> GoInt64 = null;

	/**
		// ZoneBounds returns the bounds of the time zone in effect at time t.
		// The zone begins at start and the next zone begins at end.
		// If the zone begins at the beginning of time, start will be returned as a zero Time.
		// If the zone goes on forever, end will be returned as a zero Time.
		// The Location of the returned times will be the same as t.
	**/
	@:keep
	public var zoneBounds:() -> {
		var _0:Time;
		var _1:Time;
	} = null;

	/**
		// Zone computes the time zone in effect at time t, returning the abbreviated
		// name of the zone (such as "CET") and its offset in seconds east of UTC.
	**/
	@:keep
	public var zone:() -> {
		var _0:GoString;
		var _1:GoInt;
	} = null;

	/**
		// Location returns the time zone information associated with t.
	**/
	@:keep
	public var location:() -> Location = null;

	/**
		// In returns a copy of t representing the same time instant, but
		// with the copy's location information set to loc for display
		// purposes.
		//
		// In panics if loc is nil.
	**/
	@:keep
	public var in_:Location->Time = null;

	/**
		// Local returns t with the location set to local time.
	**/
	@:keep
	public var local:() -> Time = null;

	/**
		// UTC returns t with the location set to UTC.
	**/
	@:keep
	public var utc:() -> Time = null;

	/**
		// date computes the year, day of year, and when full=true,
		// the month and day in which t occurs.
	**/
	@:keep
	public var _date:Bool -> {
		var _0:GoInt;
		var _1:Month;
		var _2:GoInt;
		var _3:GoInt;
	} = null;

	/**
		// AddDate returns the time corresponding to adding the
		// given number of years, months, and days to t.
		// For example, AddDate(-1, 2, 3) applied to January 1, 2011
		// returns March 4, 2010.
		//
		// AddDate normalizes its result in the same way that Date does,
		// so, for example, adding one month to October 31 yields
		// December 1, the normalized form for November 31.
	**/
	@:keep
	public var addDate:(GoInt, GoInt, GoInt) -> Time = null;

	/**
		// Sub returns the duration t-u. If the result exceeds the maximum (or minimum)
		// value that can be stored in a Duration, the maximum (or minimum) duration
		// will be returned.
		// To compute t-d for a duration d, use t.Add(-d).
	**/
	@:keep
	public var sub:Time->Duration = null;

	/**
		// Add returns the time t+d.
	**/
	@:keep
	public var add:Duration->Time = null;

	/**
		// YearDay returns the day of the year specified by t, in the range [1,365] for non-leap years,
		// and [1,366] in leap years.
	**/
	@:keep
	public var yearDay:() -> GoInt = null;

	/**
		// Nanosecond returns the nanosecond offset within the second specified by t,
		// in the range [0, 999999999].
	**/
	@:keep
	public var nanosecond:() -> GoInt = null;

	/**
		// Second returns the second offset within the minute specified by t, in the range [0, 59].
	**/
	@:keep
	public var second:() -> GoInt = null;

	/**
		// Minute returns the minute offset within the hour specified by t, in the range [0, 59].
	**/
	@:keep
	public var minute:() -> GoInt = null;

	/**
		// Hour returns the hour within the day specified by t, in the range [0, 23].
	**/
	@:keep
	public var hour:() -> GoInt = null;

	/**
		// Clock returns the hour, minute, and second within the day specified by t.
	**/
	@:keep
	public var clock:() -> {
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoInt;
	} = null;

	/**
		// ISOWeek returns the ISO 8601 year and week number in which t occurs.
		// Week ranges from 1 to 53. Jan 01 to Jan 03 of year n might belong to
		// week 52 or 53 of year n-1, and Dec 29 to Dec 31 might belong to week 1
		// of year n+1.
	**/
	@:keep
	public var isoweek:() -> {
		var _0:GoInt;
		var _1:GoInt;
	} = null;

	/**
		// Weekday returns the day of the week specified by t.
	**/
	@:keep
	public var weekday:() -> Weekday = null;

	/**
		// Day returns the day of the month specified by t.
	**/
	@:keep
	public var day:() -> GoInt = null;

	/**
		// Month returns the month of the year specified by t.
	**/
	@:keep
	public var month:() -> Month = null;

	/**
		// Year returns the year in which t occurs.
	**/
	@:keep
	public var year:() -> GoInt = null;

	/**
		// Date returns the year, month, and day in which t occurs.
	**/
	@:keep
	public var date:() -> {
		var _0:GoInt;
		var _1:Month;
		var _2:GoInt;
	} = null;

	/**
		// locabs is a combination of the Zone and abs methods,
		// extracting both return values from a single zone lookup.
	**/
	@:keep
	public var _locabs:() -> {
		var _0:GoString;
		var _1:GoInt;
		var _2:GoUInt64;
	} = null;

	/**
		// abs returns the time t as an absolute time, adjusted by the zone offset.
		// It is called when computing a presentation property like Month or Hour.
	**/
	@:keep
	public var _abs:() -> GoUInt64 = null;

	/**
		// IsZero reports whether t represents the zero time instant,
		// January 1, year 1, 00:00:00 UTC.
	**/
	@:keep
	public var isZero:() -> Bool = null;

	/**
		// Equal reports whether t and u represent the same time instant.
		// Two times can be equal even if they are in different locations.
		// For example, 6:00 +0200 and 4:00 UTC are Equal.
		// See the documentation on the Time type for the pitfalls of using == with
		// Time values; most code should use Equal instead.
	**/
	@:keep
	public var equal:Time->Bool = null;

	/**
		// Before reports whether the time instant t is before u.
	**/
	@:keep
	public var before:Time->Bool = null;

	/**
		// After reports whether the time instant t is after u.
	**/
	@:keep
	public var after:Time->Bool = null;

	/**
		// mono returns t's monotonic clock reading.
		// It returns 0 for a missing reading.
		// This function is used only for testing,
		// so it's OK that technically 0 is a valid
		// monotonic clock reading as well.
	**/
	@:keep
	public var _mono:() -> GoInt64 = null;

	/**
		// setMono sets the monotonic clock reading in t.
		// If t cannot hold a monotonic clock reading,
		// because its wall time is too large,
		// setMono is a no-op.
	**/
	@:keep
	public var _setMono:GoInt64->Void = null;

	/**
		// stripMono strips the monotonic clock reading in t.
	**/
	@:keep
	public var _stripMono:() -> Void = null;

	/**
		// setLoc sets the location associated with the time.
	**/
	@:keep
	public var _setLoc:Location->Void = null;

	/**
		// addSec adds d seconds to the time.
	**/
	@:keep
	public var _addSec:GoInt64->Void = null;

	/**
		// unixSec returns the time's seconds since Jan 1 1970 (Unix time).
	**/
	@:keep
	public var _unixSec:() -> GoInt64 = null;

	/**
		// sec returns the time's seconds since Jan 1 year 1.
	**/
	@:keep
	public var _sec:() -> GoInt64 = null;

	/**
		// nsec returns the time's nanoseconds.
	**/
	@:keep
	public var _nsec:() -> GoInt32 = null;

	/**
		// AppendFormat is like Format but appends the textual
		// representation to b and returns the extended buffer.
	**/
	@:keep
	public var appendFormat:(Slice<GoByte>, GoString) -> Slice<GoByte> = null;

	/**
		// Format returns a textual representation of the time value formatted according
		// to the layout defined by the argument. See the documentation for the
		// constant called Layout to see how to represent the layout format.
		//
		// The executable example for Time.Format demonstrates the working
		// of the layout string in detail and is a good reference.
	**/
	@:keep
	public var format:GoString->GoString = null;

	/**
		// GoString implements fmt.GoStringer and formats t to be printed in Go source
		// code.
	**/
	@:keep
	public var goString:() -> GoString = null;

	/**
		// String returns the time formatted using the format string
		//
		//	"2006-01-02 15:04:05.999999999 -0700 MST"
		//
		// If the time has a monotonic clock reading, the returned string
		// includes a final field "m=±<value>", where value is the monotonic
		// clock reading formatted as a decimal number of seconds.
		//
		// The returned string is meant for debugging; for a stable serialized
		// representation, use t.MarshalText, t.MarshalBinary, or t.Format
		// with an explicit format string.
	**/
	@:keep
	public var string:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Time;
}

@:keep class Location_static_extension {
	/**
		// lookupName returns information about the time zone with
		// the given name (such as "EST") at the given pseudo-Unix time
		// (what the given time of day would be in UTC).
	**/
	@:keep
	static public function _lookupName(_l:Location, _name:GoString, _unix:GoInt64):{var _0:GoInt; var _1:Bool;} {
		var _offset:GoInt = (0 : GoInt), _ok:Bool = false;
		_l = _l._get();
		for (_i => _ in _l._zone) {
			var _zone = _l._zone[_i];
			if (_zone._name == _name) {
				var __tmp__ = _l._lookup(_unix - (_zone._offset : GoInt64)),
					_nam:GoString = __tmp__._0,
					_offset:GoInt = __tmp__._1,
					_0:GoInt64 = __tmp__._2,
					_1:GoInt64 = __tmp__._3,
					_2:Bool = __tmp__._4;
				if (_nam == _zone._name) {
					return {_0: _offset, _1: true};
				};
			};
		};
		for (_i => _ in _l._zone) {
			var _zone = _l._zone[_i];
			if (_zone._name == _name) {
				return {_0: _zone._offset, _1: true};
			};
		};
		return {_0: _offset, _1: _ok};
	}

	/**
		// firstZoneUsed reports whether the first zone is used by some
		// transition.
	**/
	@:keep
	static public function _firstZoneUsed(_l:Location):Bool {
		for (_0 => _tx in _l._tx) {
			if (_tx._index == (0 : GoUInt8)) {
				return true;
			};
		};
		return false;
	}

	/**
		// lookupFirstZone returns the index of the time zone to use for times
		// before the first transition time, or when there are no transition
		// times.
		//
		// The reference implementation in localtime.c from
		// https://www.iana.org/time-zones/repository/releases/tzcode2013g.tar.gz
		// implements the following algorithm for these cases:
		//  1. If the first zone is unused by the transitions, use it.
		//  2. Otherwise, if there are transition times, and the first
		//     transition is to a zone in daylight time, find the first
		//     non-daylight-time zone before and closest to the first transition
		//     zone.
		//  3. Otherwise, use the first zone that is not daylight time, if
		//     there is one.
		//  4. Otherwise, use the first zone.
	**/
	@:keep
	static public function _lookupFirstZone(_l:Location):GoInt {
		if (!_l._firstZoneUsed()) {
			return (0 : GoInt);
		};
		if ((_l._tx.length > (0 : GoInt)) && _l._zone[_l._tx[(0 : GoInt)]._index]._isDST) {
			{
				var _zi:GoInt = (_l._tx[(0 : GoInt)]._index : GoInt) - (1 : GoInt);
				Go.cfor(_zi >= (0 : GoInt), _zi--, {
					if (!_l._zone[_zi]._isDST) {
						return _zi;
					};
				});
			};
		};
		for (_zi => _ in _l._zone) {
			if (!_l._zone[_zi]._isDST) {
				return _zi;
			};
		};
		return (0 : GoInt);
	}

	/**
		// lookup returns information about the time zone in use at an
		// instant in time expressed as seconds since January 1, 1970 00:00:00 UTC.
		//
		// The returned information gives the name of the zone (such as "CET"),
		// the start and end times bracketing sec when that zone is in effect,
		// the offset in seconds east of UTC (such as -5*60*60), and whether
		// the daylight savings is being observed at that time.
	**/
	@:keep
	static public function _lookup(_l:Location, _sec:GoInt64):{
		var _0:GoString;
		var _1:GoInt;
		var _2:GoInt64;
		var _3:GoInt64;
		var _4:Bool;
	} {
		var _name:GoString = ("" : GoString),
			_offset:GoInt = (0 : GoInt),
			_start:GoInt64 = (0 : GoInt64),
			_end:GoInt64 = (0 : GoInt64),
			_isDST:Bool = false;
		_l = _l._get();
		if ((_l._zone.length) == (0 : GoInt)) {
			_name = (Go.str("UTC") : GoString);
			_offset = (0 : GoInt);
			_start = ("-9223372036854775808" : GoInt64);
			_end = ("9223372036854775807" : GoInt64);
			_isDST = false;
			return {
				_0: _name,
				_1: _offset,
				_2: _start,
				_3: _end,
				_4: _isDST
			};
		};
		{
			var _zone = _l._cacheZone;
			if (((_zone != null) && (_l._cacheStart <= _sec)) && (_sec < _l._cacheEnd)) {
				_name = _zone._name;
				_offset = _zone._offset;
				_start = _l._cacheStart;
				_end = _l._cacheEnd;
				_isDST = _zone._isDST;
				return {
					_0: _name,
					_1: _offset,
					_2: _start,
					_3: _end,
					_4: _isDST
				};
			};
		};
		if ((_l._tx.length == (0 : GoInt)) || (_sec < _l._tx[(0 : GoInt)]._when)) {
			var _zone = _l._zone[_l._lookupFirstZone()];
			_name = _zone._name;
			_offset = _zone._offset;
			_start = ("-9223372036854775808" : GoInt64);
			if ((_l._tx.length) > (0 : GoInt)) {
				_end = _l._tx[(0 : GoInt)]._when;
			} else {
				_end = ("9223372036854775807" : GoInt64);
			};
			_isDST = _zone._isDST;
			return {
				_0: _name,
				_1: _offset,
				_2: _start,
				_3: _end,
				_4: _isDST
			};
		};
		var _tx = _l._tx;
		_end = ("9223372036854775807" : GoInt64);
		var _lo:GoInt = (0 : GoInt);
		var _hi:GoInt = (_tx.length);
		while ((_hi - _lo) > (1 : GoInt)) {
			var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
			var _lim:GoInt64 = _tx[_m]._when;
			if (_sec < _lim) {
				_end = _lim;
				_hi = _m;
			} else {
				_lo = _m;
			};
		};
		var _zone = _l._zone[_tx[_lo]._index];
		_name = _zone._name;
		_offset = _zone._offset;
		_start = _tx[_lo]._when;
		_isDST = _zone._isDST;
		if ((_lo == (_tx.length - (1 : GoInt))) && (_l._extend != (Go.str() : GoString))) {
			{
				var __tmp__ = _tzset(_l._extend, _end, _sec),
					_ename:GoString = __tmp__._0,
					_eoffset:GoInt = __tmp__._1,
					_estart:GoInt64 = __tmp__._2,
					_eend:GoInt64 = __tmp__._3,
					_eisDST:Bool = __tmp__._4,
					_ok:Bool = __tmp__._5;
				if (_ok) {
					return {
						_0: _ename,
						_1: _eoffset,
						_2: _estart,
						_3: _eend,
						_4: _eisDST
					};
				};
			};
		};
		return {
			_0: _name,
			_1: _offset,
			_2: _start,
			_3: _end,
			_4: _isDST
		};
	}

	/**
		// String returns a descriptive name for the time zone information,
		// corresponding to the name argument to LoadLocation or FixedZone.
	**/
	@:keep
	static public function string(_l:Location):GoString {
		return _l._get()._name;
	}

	@:keep
	static public function _get(_l:Location):Location {
		if (_l == null) {
			return _utcLoc;
		};
		if (_l == _localLoc) {
			_localOnce.do_(_initLocal);
		};
		return _l;
	}
}

class Location_asInterface {
	/**
		// lookupName returns information about the time zone with
		// the given name (such as "EST") at the given pseudo-Unix time
		// (what the given time of day would be in UTC).
	**/
	@:keep
	public var _lookupName:(GoString, GoInt64) -> {
		var _0:GoInt;
		var _1:Bool;
	} = null;

	/**
		// firstZoneUsed reports whether the first zone is used by some
		// transition.
	**/
	@:keep
	public var _firstZoneUsed:() -> Bool = null;

	/**
		// lookupFirstZone returns the index of the time zone to use for times
		// before the first transition time, or when there are no transition
		// times.
		//
		// The reference implementation in localtime.c from
		// https://www.iana.org/time-zones/repository/releases/tzcode2013g.tar.gz
		// implements the following algorithm for these cases:
		//  1. If the first zone is unused by the transitions, use it.
		//  2. Otherwise, if there are transition times, and the first
		//     transition is to a zone in daylight time, find the first
		//     non-daylight-time zone before and closest to the first transition
		//     zone.
		//  3. Otherwise, use the first zone that is not daylight time, if
		//     there is one.
		//  4. Otherwise, use the first zone.
	**/
	@:keep
	public var _lookupFirstZone:() -> GoInt = null;

	/**
		// lookup returns information about the time zone in use at an
		// instant in time expressed as seconds since January 1, 1970 00:00:00 UTC.
		//
		// The returned information gives the name of the zone (such as "CET"),
		// the start and end times bracketing sec when that zone is in effect,
		// the offset in seconds east of UTC (such as -5*60*60), and whether
		// the daylight savings is being observed at that time.
	**/
	@:keep
	public var _lookup:GoInt64 -> {
		var _0:GoString;
		var _1:GoInt;
		var _2:GoInt64;
		var _3:GoInt64;
		var _4:Bool;
	} = null;

	/**
		// String returns a descriptive name for the time zone information,
		// corresponding to the name argument to LoadLocation or FixedZone.
	**/
	@:keep
	public var string:() -> GoString = null;

	@:keep
	public var _get:() -> Location = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Location;
}

@:keep private class T_dataIO_static_extension {
	/**
		// read returns the read of the data in the buffer.
	**/
	@:keep
	static public function _rest(_d:T_dataIO):Slice<GoByte> {
		var _r = _d._p;
		_d._p = (null : Slice<GoUInt8>);
		return _r;
	}

	@:keep
	static public function _byte(_d:T_dataIO):{var _0:GoByte; var _1:Bool;} {
		var _n:GoByte = (0 : GoUInt8), _ok:Bool = false;
		var _p = _d._read((1 : GoInt));
		if ((_p.length) < (1 : GoInt)) {
			_d._error = true;
			return {_0: (0 : GoUInt8), _1: false};
		};
		return {_0: _p[(0 : GoInt)], _1: true};
	}

	@:keep
	static public function _big8(_d:T_dataIO):{var _0:GoUInt64; var _1:Bool;} {
		var _n:GoUInt64 = (0 : GoUInt64), _ok:Bool = false;
		var __tmp__ = _d._big4(),
			_n1:GoUInt32 = __tmp__._0,
			_ok1:Bool = __tmp__._1;
		var __tmp__ = _d._big4(),
			_n2:GoUInt32 = __tmp__._0,
			_ok2:Bool = __tmp__._1;
		if (!_ok1 || !_ok2) {
			_d._error = true;
			return {_0: (0 : GoUInt64), _1: false};
		};
		return {_0: ((_n1 : GoUInt64) << (32 : GoUnTypedInt)) | (_n2 : GoUInt64), _1: true};
	}

	@:keep
	static public function _big4(_d:T_dataIO):{var _0:GoUInt32; var _1:Bool;} {
		var _n:GoUInt32 = (0 : GoUInt32), _ok:Bool = false;
		var _p = _d._read((4 : GoInt));
		if ((_p.length) < (4 : GoInt)) {
			_d._error = true;
			return {_0: (0 : GoUInt32), _1: false};
		};
		return
			{_0: (((_p[(3 : GoInt)] : GoUInt32) | ((_p[(2 : GoInt)] : GoUInt32) << (8 : GoUnTypedInt))) | ((_p[(1 : GoInt)] : GoUInt32) << (16 : GoUnTypedInt))) | ((_p[(0 : GoInt)] : GoUInt32) << (24 : GoUnTypedInt)),
				_1: true};
	}

	@:keep
	static public function _read(_d:T_dataIO, _n:GoInt):Slice<GoByte> {
		if ((_d._p.length) < _n) {
			_d._p = (null : Slice<GoUInt8>);
			_d._error = true;
			return (null : Slice<GoUInt8>);
		};
		var _p = (_d._p.__slice__((0 : GoInt), _n) : Slice<GoUInt8>);
		_d._p = (_d._p.__slice__(_n) : Slice<GoUInt8>);
		return _p;
	}
}

class T_dataIO_asInterface {
	/**
		// read returns the read of the data in the buffer.
	**/
	@:keep
	public var _rest:() -> Slice<GoByte> = null;

	@:keep
	public var _byte:() -> {
		var _0:GoByte;
		var _1:Bool;
	} = null;
	@:keep
	public var _big8:() -> {
		var _0:GoUInt64;
		var _1:Bool;
	} = null;
	@:keep
	public var _big4:() -> {
		var _0:GoUInt32;
		var _1:Bool;
	} = null;
	@:keep
	public var _read:GoInt->Slice<GoByte> = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_dataIO;
}

@:keep private class Month_static_extension {
	/**
		// String returns the English name of the month ("January", "February", ...).
	**/
	@:keep
	static public function string(_m:Month):GoString {
		if (((1 : Month) <= _m) && (_m <= (12 : Month))) {
			return _longMonthNames[_m - (1 : Month)];
		};
		var _buf = new Slice<GoUInt8>((20 : GoInt).toBasic(), 0, ...[for (i in 0...(20 : GoInt).toBasic()) (0 : GoUInt8)]);
		var _n:GoInt = _fmtInt(_buf, (_m : GoUInt64));
		return ((Go.str("%!Month(") : GoString) + ((_buf.__slice__(_n) : Slice<GoUInt8>) : GoString)) + (Go.str(")") : GoString);
	}
}

class Month_asInterface {
	/**
		// String returns the English name of the month ("January", "February", ...).
	**/
	@:keep
	public var string:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Month;
}

@:keep private class Weekday_static_extension {
	/**
		// String returns the English name of the day ("Sunday", "Monday", ...).
	**/
	@:keep
	static public function string(_d:Weekday):GoString {
		if (((0 : Weekday) <= _d) && (_d <= (6 : Weekday))) {
			return _longDayNames[_d];
		};
		var _buf = new Slice<GoUInt8>((20 : GoInt).toBasic(), 0, ...[for (i in 0...(20 : GoInt).toBasic()) (0 : GoUInt8)]);
		var _n:GoInt = _fmtInt(_buf, (_d : GoUInt64));
		return ((Go.str("%!Weekday(") : GoString) + ((_buf.__slice__(_n) : Slice<GoUInt8>) : GoString)) + (Go.str(")") : GoString);
	}
}

class Weekday_asInterface {
	/**
		// String returns the English name of the day ("Sunday", "Monday", ...).
	**/
	@:keep
	public var string:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Weekday;
}

@:keep private class Duration_static_extension {
	/**
		// Abs returns the absolute value of d.
		// As a special case, math.MinInt64 is converted to math.MaxInt64.
	**/
	@:keep
	static public function abs(_d:Duration):Duration {
		if (_d >= (0 : Duration)) {
			return _d;
		} else if (_d == ("-9223372036854775808" : Duration)) {
			return ("9223372036854775807" : Duration);
		} else {
			return -_d;
		};
	}

	/**
		// Round returns the result of rounding d to the nearest multiple of m.
		// The rounding behavior for halfway values is to round away from zero.
		// If the result exceeds the maximum (or minimum)
		// value that can be stored in a Duration,
		// Round returns the maximum (or minimum) duration.
		// If m <= 0, Round returns d unchanged.
	**/
	@:keep
	static public function round(_d:Duration, _m:Duration):Duration {
		if (_m <= (0 : Duration)) {
			return _d;
		};
		var _r:Duration = _d % _m;
		if (_d < (0:Duration)) {
			_r = -_r;
			if (_lessThanHalf(_r, _m)) {
				return _d + _r;
			};
			{
				var _d1:Duration = (_d - _m) + _r;
				if (_d1 < _d) {
					return _d1;
				};
			};
			return ("-9223372036854775808" : Duration);
		};
		if (_lessThanHalf(_r, _m)) {
			return _d - _r;
		};
		{
			var _d1:Duration = (_d + _m) - _r;
			if (_d1 > _d) {
				return _d1;
			};
		};
		return ("9223372036854775807" : Duration);
	}

	/**
		// Truncate returns the result of rounding d toward zero to a multiple of m.
		// If m <= 0, Truncate returns d unchanged.
	**/
	@:keep
	static public function truncate(_d:Duration, _m:Duration):Duration {
		if (_m <= (0 : Duration)) {
			return _d;
		};
		return _d - (_d % _m);
	}

	/**
		// Hours returns the duration as a floating point number of hours.
	**/
	@:keep
	static public function hours(_d:Duration):GoFloat64 {
		var _hour:Duration = _d / ("3600000000000" : Duration);
		var _nsec:Duration = _d % ("3600000000000" : Duration);
		return (_hour : GoFloat64) + ((_nsec : GoFloat64) / (3.6e+12 : GoFloat64));
	}

	/**
		// Minutes returns the duration as a floating point number of minutes.
	**/
	@:keep
	static public function minutes(_d:Duration):GoFloat64 {
		var _min:Duration = _d / ("60000000000" : Duration);
		var _nsec:Duration = _d % ("60000000000" : Duration);
		return (_min : GoFloat64) + ((_nsec : GoFloat64) / (6e+10 : GoFloat64));
	}

	/**
		// Seconds returns the duration as a floating point number of seconds.
	**/
	@:keep
	static public function seconds(_d:Duration):GoFloat64 {
		var _sec:Duration = _d / (1000000000 : Duration);
		var _nsec:Duration = _d % (1000000000 : Duration);
		return (_sec : GoFloat64) + ((_nsec : GoFloat64) / (1e+09 : GoFloat64));
	}

	/**
		// Milliseconds returns the duration as an integer millisecond count.
	**/
	@:keep
	static public function milliseconds(_d:Duration):GoInt64 {
		return (_d : GoInt64) / (1e+06 : GoInt64);
	}

	/**
		// Microseconds returns the duration as an integer microsecond count.
	**/
	@:keep
	static public function microseconds(_d:Duration):GoInt64 {
		return (_d : GoInt64) / (1000 : GoInt64);
	}

	/**
		// Nanoseconds returns the duration as an integer nanosecond count.
	**/
	@:keep
	static public function nanoseconds(_d:Duration):GoInt64 {
		return (_d : GoInt64);
	}

	/**
		// String returns a string representing the duration in the form "72h3m0.5s".
		// Leading zero units are omitted. As a special case, durations less than one
		// second format use a smaller unit (milli-, micro-, or nanoseconds) to ensure
		// that the leading digit is non-zero. The zero duration formats as 0s.
	**/
	@:keep
	static public function string(_d:Duration):GoString {
		var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...32) (0 : GoUInt8)]);
		var _w:GoInt = (_buf.length);
		var _u:GoUInt64 = (_d : GoUInt64);
		var _neg:Bool = _d < (0:Duration);
		if (_neg) {
			_u = -_u;
		};
		if (_u < ((1000000000 : Duration) : GoUInt64)) {
			var _prec:GoInt = (0 : GoInt);
			_w--;
			_buf[_w] = ("s".code : GoUInt8);
			_w--;
			if (_u == (0 : GoUInt64)) {
				return (Go.str("0s") : GoString);
			} else if (_u < ((1000 : Duration) : GoUInt64)) {
				_prec = (0 : GoInt);
				_buf[_w] = ("n".code : GoUInt8);
			} else if (_u < ((1000000 : Duration) : GoUInt64)) {
				_prec = (3 : GoInt);
				_w--;
				Go.copySlice((_buf.__slice__(_w) : Slice<GoUInt8>), (Go.str("µ") : GoString));
			} else {
				_prec = (6 : GoInt);
				_buf[_w] = ("m".code : GoUInt8);
			};
			{
				var __tmp__ = _fmtFrac((_buf.__slice__(0, _w) : Slice<GoUInt8>), _u, _prec);
				_w = __tmp__._0;
				_u = __tmp__._1;
			};
			_w = _fmtInt((_buf.__slice__(0, _w) : Slice<GoUInt8>), _u);
		} else {
			_w--;
			_buf[_w] = ("s".code : GoUInt8);
			{
				var __tmp__ = _fmtFrac((_buf.__slice__(0, _w) : Slice<GoUInt8>), _u, (9 : GoInt));
				_w = __tmp__._0;
				_u = __tmp__._1;
			};
			_w = _fmtInt((_buf.__slice__(0, _w) : Slice<GoUInt8>), _u % (60 : GoUInt64));
			_u = _u / ((60 : GoUInt64));
			if (_u > (0 : GoUInt64)) {
				_w--;
				_buf[_w] = ("m".code : GoUInt8);
				_w = _fmtInt((_buf.__slice__(0, _w) : Slice<GoUInt8>), _u % (60 : GoUInt64));
				_u = _u / ((60 : GoUInt64));
				if (_u > (0 : GoUInt64)) {
					_w--;
					_buf[_w] = ("h".code : GoUInt8);
					_w = _fmtInt((_buf.__slice__(0, _w) : Slice<GoUInt8>), _u);
				};
			};
		};
		if (_neg) {
			_w--;
			_buf[_w] = ("-".code : GoUInt8);
		};
		return ((_buf.__slice__(_w) : Slice<GoUInt8>) : GoString);
	}
}

class Duration_asInterface {
	/**
		// Abs returns the absolute value of d.
		// As a special case, math.MinInt64 is converted to math.MaxInt64.
	**/
	@:keep
	public var abs:() -> Duration = null;

	/**
		// Round returns the result of rounding d to the nearest multiple of m.
		// The rounding behavior for halfway values is to round away from zero.
		// If the result exceeds the maximum (or minimum)
		// value that can be stored in a Duration,
		// Round returns the maximum (or minimum) duration.
		// If m <= 0, Round returns d unchanged.
	**/
	@:keep
	public var round:Duration->Duration = null;

	/**
		// Truncate returns the result of rounding d toward zero to a multiple of m.
		// If m <= 0, Truncate returns d unchanged.
	**/
	@:keep
	public var truncate:Duration->Duration = null;

	/**
		// Hours returns the duration as a floating point number of hours.
	**/
	@:keep
	public var hours:() -> GoFloat64 = null;

	/**
		// Minutes returns the duration as a floating point number of minutes.
	**/
	@:keep
	public var minutes:() -> GoFloat64 = null;

	/**
		// Seconds returns the duration as a floating point number of seconds.
	**/
	@:keep
	public var seconds:() -> GoFloat64 = null;

	/**
		// Milliseconds returns the duration as an integer millisecond count.
	**/
	@:keep
	public var milliseconds:() -> GoInt64 = null;

	/**
		// Microseconds returns the duration as an integer microsecond count.
	**/
	@:keep
	public var microseconds:() -> GoInt64 = null;

	/**
		// Nanoseconds returns the duration as an integer nanosecond count.
	**/
	@:keep
	public var nanoseconds:() -> GoInt64 = null;

	/**
		// String returns a string representing the duration in the form "72h3m0.5s".
		// Leading zero units are omitted. As a special case, durations less than one
		// second format use a smaller unit (milli-, micro-, or nanoseconds) to ensure
		// that the leading digit is non-zero. The zero duration formats as 0s.
	**/
	@:keep
	public var string:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Duration;
}

@:keep private class T_fileSizeError_static_extension {
	@:keep
	static public function error(_f:T_fileSizeError):GoString {
		return ((Go.str("time: file ") : GoString) + (_f : GoString)) + (Go.str(" is too large") : GoString);
	}
}

class T_fileSizeError_asInterface {
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_fileSizeError;
}
