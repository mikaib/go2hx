package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.os.Os_T_fileStat_static_extension.T_fileStat_static_extension) class T_fileStat {
    public var _name : stdgo.GoString = "";
    public var _size : stdgo.GoInt64 = 0;
    public var _mode : stdgo._internal.io.fs.Fs_FileMode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
    public var _modTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var _sys : stdgo._internal.syscall.Syscall_Stat_t.Stat_t = ({} : stdgo._internal.syscall.Syscall_Stat_t.Stat_t);
    public function new(?_name:stdgo.GoString, ?_size:stdgo.GoInt64, ?_mode:stdgo._internal.io.fs.Fs_FileMode.FileMode, ?_modTime:stdgo._internal.time.Time_Time.Time, ?_sys:stdgo._internal.syscall.Syscall_Stat_t.Stat_t) {
        if (_name != null) this._name = _name;
        if (_size != null) this._size = _size;
        if (_mode != null) this._mode = _mode;
        if (_modTime != null) this._modTime = _modTime;
        if (_sys != null) this._sys = _sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileStat(_name, _size, _mode, _modTime, _sys);
    }
}
