package stdgo._internal.database.sql.driver;
@:keep class Rows_static_extension {
    static public function next(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows, _dest:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>):stdgo.Error return t.next(_dest);
    static public function close(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows):stdgo.Error return t.close();
    static public function columns(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows):stdgo.Slice<stdgo.GoString> return t.columns();
}
