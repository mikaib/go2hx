package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _parseErrorTests : stdgo.Slice<_internal.time_test.Time_test_ParseErrorTest.ParseErrorTest> = (new stdgo.Slice<_internal.time_test.Time_test_ParseErrorTest.ParseErrorTest>(28, 28, ...[
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Feb  4 21:00:60 2010" : stdgo.GoString), ("cannot parse \"Feb  4 21:00:60 2010\" as \"Mon\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57 @2010" : stdgo.GoString), ("cannot parse \"@2010\" as \"2006\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 21:00:60 2010" : stdgo.GoString), ("second out of range" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 21:61:57 2010" : stdgo.GoString), ("minute out of range" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 24:00:60 2010" : stdgo.GoString), ("hour out of range" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Mon Jan _2 15:04:05.000 2006" : stdgo.GoString), ("Thu Feb  4 23:00:59x01 2010" : stdgo.GoString), ("cannot parse \"x01 2010\" as \".000\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Mon Jan _2 15:04:05.000 2006" : stdgo.GoString), ("Thu Feb  4 23:00:59.xxx 2010" : stdgo.GoString), ("cannot parse \".xxx 2010\" as \".000\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Mon Jan _2 15:04:05.000 2006" : stdgo.GoString), ("Thu Feb  4 23:00:59.-123 2010" : stdgo.GoString), ("fractional second out of range" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Jan _2 15:04:05.000000000" : stdgo.GoString), ("Dec  7 11:22:01.000000" : stdgo.GoString), ("cannot parse \".000000\" as \".000000000\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Jan _2 15:04:05.000000000" : stdgo.GoString), ("Dec  7 11:22:01.0000000000" : stdgo.GoString), ("extra text: \"0\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("parsing time \"2006-01-02T15:04:05Z07:00\": extra text: \"07:00\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04_abc" : stdgo.GoString), ("parsing time \"2006-01-02T15:04_abc\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"_abc\" as \":\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05_abc" : stdgo.GoString), ("parsing time \"2006-01-02T15:04:05_abc\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"_abc\" as \"Z07:00\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05Z_abc" : stdgo.GoString), ("parsing time \"2006-01-02T15:04:05Z_abc\": extra text: \"_abc\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2010-02-04T21:00:67.012345678-08:00" : stdgo.GoString), ("second out of range" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("0000-01-01T00:00:.0+00:00" : stdgo.GoString), ("parsing time \"0000-01-01T00:00:.0+00:00\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \".0+00:00\" as \"05\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("_2 Jan 06 15:04 MST" : stdgo.GoString), ("4 --- 00 00:00 GMT" : stdgo.GoString), ("cannot parse \"--- 00 00:00 GMT\" as \"Jan\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("_2 January 06 15:04 MST" : stdgo.GoString), ("4 --- 00 00:00 GMT" : stdgo.GoString), ("cannot parse \"--- 00 00:00 GMT\" as \"January\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Jan _2 002 2006" : stdgo.GoString), ("Feb  4 034 2006" : stdgo.GoString), ("day-of-year does not match day" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("Jan _2 002 2006" : stdgo.GoString), ("Feb  4 004 2006" : stdgo.GoString), ("day-of-year does not match month" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("\"2006-01-02T15:04:05Z07:00\"" : stdgo.GoString), ("0" : stdgo.GoString), ("parsing time \"0\" as \"\\\"2006-01-02T15:04:05Z07:00\\\"\": cannot parse \"0\" as \"\\\"\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("\"" : stdgo.GoString), ("parsing time \"\\\"\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"\\\"\" as \"2006\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("0000-01-01T00:00:00+00:+0" : stdgo.GoString), ("parsing time \"0000-01-01T00:00:00+00:+0\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"+00:+0\" as \"Z07:00\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("0000-01-01T00:00:00+-0:00" : stdgo.GoString), ("parsing time \"0000-01-01T00:00:00+-0:00\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"+-0:00\" as \"Z07:00\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("2006-01-02" : stdgo.GoString), ("22-10-25" : stdgo.GoString), ("parsing time \"22-10-25\" as \"2006-01-02\": cannot parse \"22-10-25\" as \"2006\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("06-01-02" : stdgo.GoString), ("a2-10-25" : stdgo.GoString), ("parsing time \"a2-10-25\" as \"06-01-02\": cannot parse \"a2-10-25\" as \"06\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("03:04PM" : stdgo.GoString), ("12:03pM" : stdgo.GoString), ("parsing time \"12:03pM\" as \"03:04PM\": cannot parse \"pM\" as \"PM\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest),
(new _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest(("03:04pm" : stdgo.GoString), ("12:03pM" : stdgo.GoString), ("parsing time \"12:03pM\" as \"03:04pm\": cannot parse \"pM\" as \"pm\"" : stdgo.GoString)) : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest)].concat([for (i in 28 ... (28 > 28 ? 28 : 28 : stdgo.GoInt).toBasic()) ({} : _internal.time_test.Time_test_ParseErrorTest.ParseErrorTest)])) : stdgo.Slice<_internal.time_test.Time_test_ParseErrorTest.ParseErrorTest>);
