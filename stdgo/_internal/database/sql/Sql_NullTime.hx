package stdgo._internal.database.sql;
@:structInit @:using(stdgo._internal.database.sql.Sql_NullTime_static_extension.NullTime_static_extension) class NullTime {
    public var time : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var valid : Bool = false;
    public function new(?time:stdgo._internal.time.Time_Time.Time, ?valid:Bool) {
        if (time != null) this.time = time;
        if (valid != null) this.valid = valid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullTime(time, valid);
    }
}
