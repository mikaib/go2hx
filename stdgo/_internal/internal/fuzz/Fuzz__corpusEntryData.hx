package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _corpusEntryData(_ce:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if (_ce.data != null) {
            return { _0 : _ce.data, _1 : (null : stdgo.Error) };
        };
        return stdgo._internal.os.Os_readFile.readFile(_ce.path?.__copy__());
    }
