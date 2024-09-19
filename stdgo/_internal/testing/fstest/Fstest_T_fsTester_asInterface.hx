package stdgo._internal.testing.fstest;
class T_fsTester_asInterface {
    @:keep
    public dynamic function _checkBadPath(_file:stdgo.GoString, _desc:stdgo.GoString, _open:stdgo.GoString -> stdgo.Error):Void __self__.value._checkBadPath(_file, _desc, _open);
    @:keep
    public dynamic function _checkOpen(_file:stdgo.GoString):Void __self__.value._checkOpen(_file);
    @:keep
    public dynamic function _checkFileRead(_file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoUInt8>, _data2:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._checkFileRead(_file, _desc, _data1, _data2);
    @:keep
    public dynamic function _checkFile(_file:stdgo.GoString):Void __self__.value._checkFile(_file);
    @:keep
    public dynamic function _checkDirList(_dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, _list2:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>):Void __self__.value._checkDirList(_dir, _desc, _list1, _list2);
    @:keep
    public dynamic function _checkStat(_path:stdgo.GoString, _entry:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):Void __self__.value._checkStat(_path, _entry);
    @:keep
    public dynamic function _checkGlob(_dir:stdgo.GoString, _list:stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>):Void __self__.value._checkGlob(_dir, _list);
    @:keep
    public dynamic function _checkDir(_dir:stdgo.GoString):Void __self__.value._checkDir(_dir);
    @:keep
    public dynamic function _openDir(_dir:stdgo.GoString):stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile return __self__.value._openDir(_dir);
    @:keep
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
