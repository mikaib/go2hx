package stdgo._internal.flag;
function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        return stdgo._internal.flag.Flag_commandLine.commandLine._set(_name?.__copy__(), _value?.__copy__());
    }
