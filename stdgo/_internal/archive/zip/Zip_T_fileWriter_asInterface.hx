package stdgo._internal.archive.zip;
class T_fileWriter_asInterface {
    @:keep
    public dynamic function _writeDataDescriptor():stdgo.Error return __self__.value._writeDataDescriptor();
    @:keep
    public dynamic function _close():stdgo.Error return __self__.value._close();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:embedded
    public dynamic function _isZip64():Bool return __self__.value._isZip64();
    @:embedded
    public dynamic function _hasDataDescriptor():Bool return __self__.value._hasDataDescriptor();
    @:embedded
    public dynamic function setMode(__0:stdgo._internal.io.fs.Fs_FileMode.FileMode):Void __self__.value.setMode(__0);
    @:embedded
    public dynamic function setModTime(__0:stdgo._internal.time.Time_Time.Time):Void __self__.value.setModTime(__0);
    @:embedded
    public dynamic function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return __self__.value.mode();
    @:embedded
    public dynamic function modTime():stdgo._internal.time.Time_Time.Time return __self__.value.modTime();
    @:embedded
    public dynamic function fileInfo():stdgo._internal.io.fs.Fs_FileInfo.FileInfo return __self__.value.fileInfo();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
