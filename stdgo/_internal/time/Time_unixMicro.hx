package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function unixMicro(_usec:stdgo.GoInt64):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.time.Time_unix.unix((_usec / (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64), (((_usec % (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64)) * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64))?.__copy__();
    }
