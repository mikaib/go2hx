package stdgo._internal.database.sql.driver;
typedef Valuer = stdgo.StructType & {
    /**
        Value returns a driver Value.
        Value must not panic.
        
        
    **/
    public dynamic function value():{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; };
};
