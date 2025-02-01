package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult_static_extension.T_fuzzResult_static_extension) class T_fuzzResult {
    public var _entry : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry = ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry);
    public var _crasherMsg : stdgo.GoString = "";
    public var _canMinimize : Bool = false;
    public var _coverageData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _limit : stdgo.GoInt64 = 0;
    public var _count : stdgo.GoInt64 = 0;
    public var _totalDuration : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var _entryDuration : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, ?_crasherMsg:stdgo.GoString, ?_canMinimize:Bool, ?_coverageData:stdgo.Slice<stdgo.GoUInt8>, ?_limit:stdgo.GoInt64, ?_count:stdgo.GoInt64, ?_totalDuration:stdgo._internal.time.Time_Duration.Duration, ?_entryDuration:stdgo._internal.time.Time_Duration.Duration) {
        if (_entry != null) this._entry = _entry;
        if (_crasherMsg != null) this._crasherMsg = _crasherMsg;
        if (_canMinimize != null) this._canMinimize = _canMinimize;
        if (_coverageData != null) this._coverageData = _coverageData;
        if (_limit != null) this._limit = _limit;
        if (_count != null) this._count = _count;
        if (_totalDuration != null) this._totalDuration = _totalDuration;
        if (_entryDuration != null) this._entryDuration = _entryDuration;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fuzzResult(_entry, _crasherMsg, _canMinimize, _coverageData, _limit, _count, _totalDuration, _entryDuration);
    }
}
