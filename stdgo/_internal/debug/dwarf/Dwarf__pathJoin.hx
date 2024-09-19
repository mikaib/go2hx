package stdgo._internal.debug.dwarf;
function _pathJoin(_dirname:stdgo.GoString, _filename:stdgo.GoString):stdgo.GoString {
        if ((_dirname.length) == ((0 : stdgo.GoInt))) {
            return _filename?.__copy__();
        };
        var __tmp__ = stdgo._internal.debug.dwarf.Dwarf__splitDrive._splitDrive(_dirname?.__copy__()), _drive:stdgo.GoString = __tmp__._0, _dirname:stdgo.GoString = __tmp__._1;
        if (_drive == (stdgo.Go.str())) {
            return stdgo._internal.path.Path_join.join(_dirname?.__copy__(), _filename?.__copy__())?.__copy__();
        };
        var __tmp__ = stdgo._internal.debug.dwarf.Dwarf__splitDrive._splitDrive(_filename?.__copy__()), _drive2:stdgo.GoString = __tmp__._0, _filename:stdgo.GoString = __tmp__._1;
        if (_drive2 != (stdgo.Go.str())) {
            if (!stdgo._internal.strings.Strings_equalFold.equalFold(_drive?.__copy__(), _drive2?.__copy__())) {
                return (_drive2 + _filename?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        if ((!((stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_dirname?.__copy__(), ("/" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_dirname?.__copy__(), ("\\" : stdgo.GoString)) : Bool)) && (_dirname != stdgo.Go.str()) : Bool)) {
            var _sep = ("\\" : stdgo.GoString);
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_dirname?.__copy__(), ("/" : stdgo.GoString))) {
                _sep = ("/" : stdgo.GoString);
            };
            _dirname = (_dirname + (_sep)?.__copy__() : stdgo.GoString);
        };
        return ((_drive + _dirname?.__copy__() : stdgo.GoString) + _filename?.__copy__() : stdgo.GoString)?.__copy__();
    }
