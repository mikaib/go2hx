package stdgo._internal.database.sql.driver;
typedef ColumnConverter = stdgo.StructType & {
    /**
        ColumnConverter returns a ValueConverter for the provided
        column index. If the type of a specific column isn't known
        or shouldn't be handled specially, DefaultValueConverter
        can be returned.
        
        
    **/
    public dynamic function columnConverter(_idx:stdgo.GoInt):stdgo._internal.database.sql.driver.Driver_ValueConverter.ValueConverter;
};
