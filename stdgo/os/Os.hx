package stdgo.os;
final o_RDONLY : StdTypes.Int = stdgo._internal.os.Os.o_RDONLY;
final o_WRONLY : StdTypes.Int = stdgo._internal.os.Os.o_WRONLY;
final o_RDWR : StdTypes.Int = stdgo._internal.os.Os.o_RDWR;
final o_APPEND : StdTypes.Int = stdgo._internal.os.Os.o_APPEND;
final o_CREATE : StdTypes.Int = stdgo._internal.os.Os.o_CREATE;
final o_EXCL : StdTypes.Int = stdgo._internal.os.Os.o_EXCL;
final o_SYNC : StdTypes.Int = stdgo._internal.os.Os.o_SYNC;
final o_TRUNC : StdTypes.Int = stdgo._internal.os.Os.o_TRUNC;
final seek_SET : StdTypes.Int = stdgo._internal.os.Os.seek_SET;
final seek_CUR : StdTypes.Int = stdgo._internal.os.Os.seek_CUR;
final seek_END : StdTypes.Int = stdgo._internal.os.Os.seek_END;
final devNull : String = stdgo._internal.os.Os.devNull;
final pathSeparator : StdTypes.Int = stdgo._internal.os.Os.pathSeparator;
final pathListSeparator : StdTypes.Int = stdgo._internal.os.Os.pathListSeparator;
var args(get, set) : Array<String>;
private function get_args():Array<String> return [for (i in stdgo._internal.os.Os.args) i];
private function set_args(v:Array<String>):Array<String> {
        stdgo._internal.os.Os.args = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
final modeDir : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeDir;
final modeAppend : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeAppend;
final modeExclusive : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeExclusive;
final modeTemporary : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeTemporary;
final modeSymlink : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSymlink;
final modeDevice : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeDevice;
final modeNamedPipe : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeNamedPipe;
final modeSocket : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSocket;
final modeSetuid : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSetuid;
final modeSetgid : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSetgid;
final modeCharDevice : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeCharDevice;
final modeSticky : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSticky;
final modeIrregular : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeIrregular;
final modeType : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeType;
final modePerm : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modePerm;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.os.Os.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errInvalid = v;
        return v;
    }
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.os.Os.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errPermission = v;
        return v;
    }
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.os.Os.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errExist = v;
        return v;
    }
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.os.Os.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errNotExist = v;
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.os.Os.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errClosed = v;
        return v;
    }
var errNoDeadline(get, set) : stdgo.Error;
private function get_errNoDeadline():stdgo.Error return stdgo._internal.os.Os.errNoDeadline;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errNoDeadline = v;
        return v;
    }
var errDeadlineExceeded(get, set) : stdgo.Error;
private function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.os.Os.errDeadlineExceeded;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errDeadlineExceeded = v;
        return v;
    }
var errProcessDone(get, set) : stdgo.Error;
private function get_errProcessDone():stdgo.Error return stdgo._internal.os.Os.errProcessDone;
private function set_errProcessDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errProcessDone = v;
        return v;
    }
var interrupt(get, set) : stdgo._internal.os.Os.Signal;
private function get_interrupt():stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.interrupt;
private function set_interrupt(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal {
        stdgo._internal.os.Os.interrupt = v;
        return v;
    }
var kill(get, set) : stdgo._internal.os.Os.Signal;
private function get_kill():stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.kill;
private function set_kill(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal {
        stdgo._internal.os.Os.kill = v;
        return v;
    }
var stdin(get, set) : stdgo._internal.os.Os.File;
private function get_stdin():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdin;
private function set_stdin(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        stdgo._internal.os.Os.stdin = v;
        return v;
    }
var stdout(get, set) : stdgo._internal.os.Os.File;
private function get_stdout():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdout;
private function set_stdout(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        stdgo._internal.os.Os.stdout = v;
        return v;
    }
var stderr(get, set) : stdgo._internal.os.Os.File;
private function get_stderr():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stderr;
private function set_stderr(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        stdgo._internal.os.Os.stderr = v;
        return v;
    }
var atime(get, set) : stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time;
private function get_atime():stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time return _0 -> stdgo._internal.os.Os.atime(_0);
private function set_atime(v:stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time):stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time {
        stdgo._internal.os.Os.atime = v;
        return v;
    }
var lstatP(get, set) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; };
private function get_lstatP():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.os.Os.lstatP;
private function set_lstatP(v:stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }):stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } {
        stdgo._internal.os.Os.lstatP = v;
        return v;
    }
var errWriteAtInAppendMode(get, set) : stdgo.Error;
private function get_errWriteAtInAppendMode():stdgo.Error return stdgo._internal.os.Os.errWriteAtInAppendMode;
private function set_errWriteAtInAppendMode(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errWriteAtInAppendMode = v;
        return v;
    }
var testingForceReadDirLstat(get, set) : stdgo.Pointer<Bool>;
private function get_testingForceReadDirLstat():stdgo.Pointer<Bool> return stdgo._internal.os.Os.testingForceReadDirLstat;
private function set_testingForceReadDirLstat(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.os.Os.testingForceReadDirLstat = v;
        return v;
    }
var errPatternHasSeparator(get, set) : stdgo.Error;
private function get_errPatternHasSeparator():stdgo.Error return stdgo._internal.os.Os.errPatternHasSeparator;
private function set_errPatternHasSeparator(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errPatternHasSeparator = v;
        return v;
    }
var splitPath(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; };
private function get_splitPath():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return _0 -> stdgo._internal.os.Os.splitPath(_0);
private function set_splitPath(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        stdgo._internal.os.Os.splitPath = v;
        return v;
    }
class T_timeout_static_extension {
    static public function timeout(t:T_timeout):Bool {
        return stdgo._internal.os.Os.T_timeout_static_extension.timeout(t);
    }
}
typedef T_timeout = stdgo._internal.os.Os.T_timeout;
class Signal_static_extension {
    static public function signal(t:Signal):Void {
        stdgo._internal.os.Os.Signal_static_extension.signal(t);
    }
    static public function string(t:Signal):String {
        return stdgo._internal.os.Os.Signal_static_extension.string(t);
    }
}
typedef Signal = stdgo._internal.os.Os.Signal;
@:structInit @:private @:using(stdgo.os.Os.T_dirInfo_static_extension) abstract T_dirInfo(stdgo._internal.os.Os.T_dirInfo) from stdgo._internal.os.Os.T_dirInfo to stdgo._internal.os.Os.T_dirInfo {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return this._buf;
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = v;
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _bufp(get, set) : StdTypes.Int;
    function get__bufp():StdTypes.Int return this._bufp;
    function set__bufp(v:StdTypes.Int):StdTypes.Int {
        this._bufp = v;
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_nbuf:StdTypes.Int, ?_bufp:StdTypes.Int) this = new stdgo._internal.os.Os.T_dirInfo(_buf, _nbuf, _bufp);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.SyscallError_static_extension) abstract SyscallError(stdgo._internal.os.Os.SyscallError) from stdgo._internal.os.Os.SyscallError to stdgo._internal.os.Os.SyscallError {
    public var syscall(get, set) : String;
    function get_syscall():String return this.syscall;
    function set_syscall(v:String):String {
        this.syscall = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?syscall:String, ?err:stdgo.Error) this = new stdgo._internal.os.Os.SyscallError(syscall, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.Process_static_extension) abstract Process(stdgo._internal.os.Os.Process) from stdgo._internal.os.Os.Process to stdgo._internal.os.Os.Process {
    public var pid(get, set) : StdTypes.Int;
    function get_pid():StdTypes.Int return this.pid;
    function set_pid(v:StdTypes.Int):StdTypes.Int {
        this.pid = v;
        return v;
    }
    public var _handle(get, set) : stdgo.GoUIntptr;
    function get__handle():stdgo.GoUIntptr return this._handle;
    function set__handle(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._handle = v;
        return v;
    }
    public var _isdone(get, set) : stdgo._internal.sync.atomic_.Atomic_.Bool_;
    function get__isdone():stdgo._internal.sync.atomic_.Atomic_.Bool_ return this._isdone;
    function set__isdone(v:stdgo._internal.sync.atomic_.Atomic_.Bool_):stdgo._internal.sync.atomic_.Atomic_.Bool_ {
        this._isdone = v;
        return v;
    }
    public var _sigMu(get, set) : stdgo._internal.sync.Sync.RWMutex;
    function get__sigMu():stdgo._internal.sync.Sync.RWMutex return this._sigMu;
    function set__sigMu(v:stdgo._internal.sync.Sync.RWMutex):stdgo._internal.sync.Sync.RWMutex {
        this._sigMu = v;
        return v;
    }
    public function new(?pid:StdTypes.Int, ?_handle:stdgo.GoUIntptr, ?_isdone:stdgo._internal.sync.atomic_.Atomic_.Bool_, ?_sigMu:stdgo._internal.sync.Sync.RWMutex) this = new stdgo._internal.os.Os.Process(pid, _handle, _isdone, _sigMu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract ProcAttr(stdgo._internal.os.Os.ProcAttr) from stdgo._internal.os.Os.ProcAttr to stdgo._internal.os.Os.ProcAttr {
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = v;
        return v;
    }
    public var env(get, set) : Array<String>;
    function get_env():Array<String> return [for (i in this.env) i];
    function set_env(v:Array<String>):Array<String> {
        this.env = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var files(get, set) : Array<stdgo._internal.os.Os.File>;
    function get_files():Array<stdgo._internal.os.Os.File> return [for (i in this.files) i];
    function set_files(v:Array<stdgo._internal.os.Os.File>):Array<stdgo._internal.os.Os.File> {
        this.files = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>);
        return v;
    }
    public var sys(get, set) : stdgo._internal.syscall.Syscall.SysProcAttr;
    function get_sys():stdgo._internal.syscall.Syscall.SysProcAttr return this.sys;
    function set_sys(v:stdgo._internal.syscall.Syscall.SysProcAttr):stdgo._internal.syscall.Syscall.SysProcAttr {
        this.sys = v;
        return v;
    }
    public function new(?dir:String, ?env:Array<String>, ?files:Array<stdgo._internal.os.Os.File>, ?sys:stdgo._internal.syscall.Syscall.SysProcAttr) this = new stdgo._internal.os.Os.ProcAttr(dir, ([for (i in env) i] : stdgo.Slice<stdgo.GoString>), ([for (i in files) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>), sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.ProcessState_static_extension) abstract ProcessState(stdgo._internal.os.Os.ProcessState) from stdgo._internal.os.Os.ProcessState to stdgo._internal.os.Os.ProcessState {
    public var _pid(get, set) : StdTypes.Int;
    function get__pid():StdTypes.Int return this._pid;
    function set__pid(v:StdTypes.Int):StdTypes.Int {
        this._pid = v;
        return v;
    }
    public var _status(get, set) : stdgo._internal.syscall.Syscall.WaitStatus;
    function get__status():stdgo._internal.syscall.Syscall.WaitStatus return this._status;
    function set__status(v:stdgo._internal.syscall.Syscall.WaitStatus):stdgo._internal.syscall.Syscall.WaitStatus {
        this._status = v;
        return v;
    }
    public var _rusage(get, set) : stdgo._internal.syscall.Syscall.Rusage;
    function get__rusage():stdgo._internal.syscall.Syscall.Rusage return this._rusage;
    function set__rusage(v:stdgo._internal.syscall.Syscall.Rusage):stdgo._internal.syscall.Syscall.Rusage {
        this._rusage = v;
        return v;
    }
    public function new(?_pid:StdTypes.Int, ?_status:stdgo._internal.syscall.Syscall.WaitStatus, ?_rusage:stdgo._internal.syscall.Syscall.Rusage) this = new stdgo._internal.os.Os.ProcessState(_pid, _status, _rusage);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.LinkError_static_extension) abstract LinkError(stdgo._internal.os.Os.LinkError) from stdgo._internal.os.Os.LinkError to stdgo._internal.os.Os.LinkError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = v;
        return v;
    }
    public var old(get, set) : String;
    function get_old():String return this.old;
    function set_old(v:String):String {
        this.old = v;
        return v;
    }
    public var new_(get, set) : String;
    function get_new_():String return this.new_;
    function set_new_(v:String):String {
        this.new_ = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?op:String, ?old:String, ?new_:String, ?err:stdgo.Error) this = new stdgo._internal.os.Os.LinkError(op, old, new_, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_fileWithoutReadFrom_static_extension) abstract T_fileWithoutReadFrom(stdgo._internal.os.Os.T_fileWithoutReadFrom) from stdgo._internal.os.Os.T_fileWithoutReadFrom to stdgo._internal.os.Os.T_fileWithoutReadFrom {
    public var file(get, set) : stdgo._internal.os.Os.File;
    function get_file():stdgo._internal.os.Os.File return this.file;
    function set_file(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        this.file = v;
        return v;
    }
    public function new(?file:stdgo._internal.os.Os.File) this = new stdgo._internal.os.Os.T_fileWithoutReadFrom(file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_file_static_extension) abstract T_file(stdgo._internal.os.Os.T_file) from stdgo._internal.os.Os.T_file to stdgo._internal.os.Os.T_file {
    public var _pfd(get, set) : stdgo._internal.internal.poll.Poll.FD;
    function get__pfd():stdgo._internal.internal.poll.Poll.FD return this._pfd;
    function set__pfd(v:stdgo._internal.internal.poll.Poll.FD):stdgo._internal.internal.poll.Poll.FD {
        this._pfd = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _dirinfo(get, set) : stdgo._internal.os.Os.T_dirInfo;
    function get__dirinfo():stdgo._internal.os.Os.T_dirInfo return this._dirinfo;
    function set__dirinfo(v:stdgo._internal.os.Os.T_dirInfo):stdgo._internal.os.Os.T_dirInfo {
        this._dirinfo = v;
        return v;
    }
    public var _nonblock(get, set) : Bool;
    function get__nonblock():Bool return this._nonblock;
    function set__nonblock(v:Bool):Bool {
        this._nonblock = v;
        return v;
    }
    public var _stdoutOrErr(get, set) : Bool;
    function get__stdoutOrErr():Bool return this._stdoutOrErr;
    function set__stdoutOrErr(v:Bool):Bool {
        this._stdoutOrErr = v;
        return v;
    }
    public var _appendMode(get, set) : Bool;
    function get__appendMode():Bool return this._appendMode;
    function set__appendMode(v:Bool):Bool {
        this._appendMode = v;
        return v;
    }
    public function new(?_pfd:stdgo._internal.internal.poll.Poll.FD, ?_name:String, ?_dirinfo:stdgo._internal.os.Os.T_dirInfo, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) this = new stdgo._internal.os.Os.T_file(_pfd, _name, _dirinfo, _nonblock, _stdoutOrErr, _appendMode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_unixDirent_static_extension) abstract T_unixDirent(stdgo._internal.os.Os.T_unixDirent) from stdgo._internal.os.Os.T_unixDirent to stdgo._internal.os.Os.T_unixDirent {
    public var _parent(get, set) : String;
    function get__parent():String return this._parent;
    function set__parent(v:String):String {
        this._parent = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _typ(get, set) : stdgo._internal.io.fs.Fs.FileMode;
    function get__typ():stdgo._internal.io.fs.Fs.FileMode return this._typ;
    function set__typ(v:stdgo._internal.io.fs.Fs.FileMode):stdgo._internal.io.fs.Fs.FileMode {
        this._typ = v;
        return v;
    }
    public var _info(get, set) : stdgo._internal.io.fs.Fs.FileInfo;
    function get__info():stdgo._internal.io.fs.Fs.FileInfo return this._info;
    function set__info(v:stdgo._internal.io.fs.Fs.FileInfo):stdgo._internal.io.fs.Fs.FileInfo {
        this._info = v;
        return v;
    }
    public function new(?_parent:String, ?_name:String, ?_typ:stdgo._internal.io.fs.Fs.FileMode, ?_info:stdgo._internal.io.fs.Fs.FileInfo) this = new stdgo._internal.os.Os.T_unixDirent(_parent, _name, _typ, _info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_rawConn_static_extension) abstract T_rawConn(stdgo._internal.os.Os.T_rawConn) from stdgo._internal.os.Os.T_rawConn to stdgo._internal.os.Os.T_rawConn {
    public var _file(get, set) : stdgo._internal.os.Os.File;
    function get__file():stdgo._internal.os.Os.File return this._file;
    function set__file(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        this._file = v;
        return v;
    }
    public function new(?_file:stdgo._internal.os.Os.File) this = new stdgo._internal.os.Os.T_rawConn(_file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.File_static_extension) abstract File(stdgo._internal.os.Os.File) from stdgo._internal.os.Os.File to stdgo._internal.os.Os.File {
    public var _file(get, set) : stdgo._internal.os.Os.T_file;
    function get__file():stdgo._internal.os.Os.T_file return this._file;
    function set__file(v:stdgo._internal.os.Os.T_file):stdgo._internal.os.Os.T_file {
        this._file = v;
        return v;
    }
    public function new(?_file:stdgo._internal.os.Os.T_file, ?_input:haxe.io.Input, ?_output:haxe.io.Output) this = new stdgo._internal.os.Os.File(_file, _input, _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_fileStat_static_extension) abstract T_fileStat(stdgo._internal.os.Os.T_fileStat) from stdgo._internal.os.Os.T_fileStat to stdgo._internal.os.Os.T_fileStat {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _size(get, set) : haxe.Int64;
    function get__size():haxe.Int64 return this._size;
    function set__size(v:haxe.Int64):haxe.Int64 {
        this._size = v;
        return v;
    }
    public var _mode(get, set) : stdgo._internal.io.fs.Fs.FileMode;
    function get__mode():stdgo._internal.io.fs.Fs.FileMode return this._mode;
    function set__mode(v:stdgo._internal.io.fs.Fs.FileMode):stdgo._internal.io.fs.Fs.FileMode {
        this._mode = v;
        return v;
    }
    public var _modTime(get, set) : stdgo._internal.time.Time.Time;
    function get__modTime():stdgo._internal.time.Time.Time return this._modTime;
    function set__modTime(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        this._modTime = v;
        return v;
    }
    public var _sys(get, set) : stdgo._internal.syscall.Syscall.Stat_t;
    function get__sys():stdgo._internal.syscall.Syscall.Stat_t return this._sys;
    function set__sys(v:stdgo._internal.syscall.Syscall.Stat_t):stdgo._internal.syscall.Syscall.Stat_t {
        this._sys = v;
        return v;
    }
    public function new(?_name:String, ?_size:haxe.Int64, ?_mode:stdgo._internal.io.fs.Fs.FileMode, ?_modTime:stdgo._internal.time.Time.Time, ?_sys:stdgo._internal.syscall.Syscall.Stat_t) this = new stdgo._internal.os.Os.T_fileStat(_name, _size, _mode, _modTime, _sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {
    public static function _unlockSlow(_self__:T__struct_0, _0:StdTypes.Int) {
        stdgo._internal.os.Os.T__struct_0_static_extension._unlockSlow(_self__, _0);
    }
    public static function _lockSlow(_self__:T__struct_0) {
        stdgo._internal.os.Os.T__struct_0_static_extension._lockSlow(_self__);
    }
    public static function unlock(_self__:T__struct_0) {
        stdgo._internal.os.Os.T__struct_0_static_extension.unlock(_self__);
    }
    public static function tryLock(_self__:T__struct_0):Bool {
        return stdgo._internal.os.Os.T__struct_0_static_extension.tryLock(_self__);
    }
    public static function lock(_self__:T__struct_0) {
        stdgo._internal.os.Os.T__struct_0_static_extension.lock(_self__);
    }
}
typedef T__struct_0 = stdgo._internal.os.Os.T__struct_0;
typedef T_readdirMode = stdgo._internal.os.Os.T_readdirMode;
typedef DirEntry = stdgo._internal.os.Os.DirEntry;
typedef PathError = stdgo._internal.os.Os.PathError;
typedef T_syscallErrorType = stdgo._internal.os.Os.T_syscallErrorType;
typedef T_dirFS = stdgo._internal.os.Os.T_dirFS;
typedef T_newFileKind = stdgo._internal.os.Os.T_newFileKind;
typedef FileInfo = stdgo._internal.os.Os.FileInfo;
typedef FileMode = stdgo._internal.os.Os.FileMode;
class T_dirInfo_static_extension {
    static public function _close(d:T_dirInfo):Void {
        stdgo._internal.os.Os.T_dirInfo_static_extension._close(d);
    }
}
class SyscallError_static_extension {
    static public function timeout(e:SyscallError):Bool {
        return stdgo._internal.os.Os.SyscallError_static_extension.timeout(e);
    }
    static public function unwrap(e:SyscallError):stdgo.Error {
        return stdgo._internal.os.Os.SyscallError_static_extension.unwrap(e);
    }
    static public function error(e:SyscallError):String {
        return stdgo._internal.os.Os.SyscallError_static_extension.error(e);
    }
}
class Process_static_extension {
    static public function _blockUntilWaitable(p:Process):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.Process_static_extension._blockUntilWaitable(p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _release(p:Process):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension._release(p);
    }
    static public function _signal(p:Process, sig:Signal):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension._signal(p, sig);
    }
    static public function _wait(p:Process):stdgo.Tuple<ProcessState, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.Process_static_extension._wait(p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _kill(p:Process):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension._kill(p);
    }
    static public function signal(p:Process, sig:Signal):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension.signal(p, sig);
    }
    static public function wait_(p:Process):stdgo.Tuple<ProcessState, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.Process_static_extension.wait_(p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function kill(p:Process):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension.kill(p);
    }
    static public function release(p:Process):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension.release(p);
    }
    static public function _done(p:Process):Bool {
        return stdgo._internal.os.Os.Process_static_extension._done(p);
    }
    static public function _setDone(p:Process):Void {
        stdgo._internal.os.Os.Process_static_extension._setDone(p);
    }
}
class ProcessState_static_extension {
    static public function _systemTime(p:ProcessState):stdgo._internal.time.Time.Duration {
        return stdgo._internal.os.Os.ProcessState_static_extension._systemTime(p);
    }
    static public function _userTime(p:ProcessState):stdgo._internal.time.Time.Duration {
        return stdgo._internal.os.Os.ProcessState_static_extension._userTime(p);
    }
    static public function exitCode(p:ProcessState):StdTypes.Int {
        return stdgo._internal.os.Os.ProcessState_static_extension.exitCode(p);
    }
    static public function string(p:ProcessState):String {
        return stdgo._internal.os.Os.ProcessState_static_extension.string(p);
    }
    static public function _sysUsage(p:ProcessState):stdgo.AnyInterface {
        return stdgo._internal.os.Os.ProcessState_static_extension._sysUsage(p);
    }
    static public function _sys(p:ProcessState):stdgo.AnyInterface {
        return stdgo._internal.os.Os.ProcessState_static_extension._sys(p);
    }
    static public function _success(p:ProcessState):Bool {
        return stdgo._internal.os.Os.ProcessState_static_extension._success(p);
    }
    static public function _exited(p:ProcessState):Bool {
        return stdgo._internal.os.Os.ProcessState_static_extension._exited(p);
    }
    static public function pid(p:ProcessState):StdTypes.Int {
        return stdgo._internal.os.Os.ProcessState_static_extension.pid(p);
    }
    static public function sysUsage(p:ProcessState):stdgo.AnyInterface {
        return stdgo._internal.os.Os.ProcessState_static_extension.sysUsage(p);
    }
    static public function sys(p:ProcessState):stdgo.AnyInterface {
        return stdgo._internal.os.Os.ProcessState_static_extension.sys(p);
    }
    static public function success(p:ProcessState):Bool {
        return stdgo._internal.os.Os.ProcessState_static_extension.success(p);
    }
    static public function exited(p:ProcessState):Bool {
        return stdgo._internal.os.Os.ProcessState_static_extension.exited(p);
    }
    static public function systemTime(p:ProcessState):stdgo._internal.time.Time.Duration {
        return stdgo._internal.os.Os.ProcessState_static_extension.systemTime(p);
    }
    static public function userTime(p:ProcessState):stdgo._internal.time.Time.Duration {
        return stdgo._internal.os.Os.ProcessState_static_extension.userTime(p);
    }
}
class LinkError_static_extension {
    static public function unwrap(e:LinkError):stdgo.Error {
        return stdgo._internal.os.Os.LinkError_static_extension.unwrap(e);
    }
    static public function error(e:LinkError):String {
        return stdgo._internal.os.Os.LinkError_static_extension.error(e);
    }
}
class T_fileWithoutReadFrom_static_extension {
    static public function readFrom(:T_fileWithoutReadFrom, 0:T_fileWithoutReadFrom):Void {
        stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readFrom(, 0);
    }
    public static function _write(_self__:T_fileWithoutReadFrom, b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._write(_self__, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _wrapErr(_self__:T_fileWithoutReadFrom, op:String, err:stdgo.Error):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._wrapErr(_self__, op, err);
    }
    public static function _setWriteDeadline(_self__:T_fileWithoutReadFrom, _0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._setWriteDeadline(_self__, _0);
    }
    public static function _setReadDeadline(_self__:T_fileWithoutReadFrom, _0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._setReadDeadline(_self__, _0);
    }
    public static function _setDeadline(_self__:T_fileWithoutReadFrom, _0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._setDeadline(_self__, _0);
    }
    public static function _seek(_self__:T_fileWithoutReadFrom, offset:haxe.Int64, whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._seek(_self__, offset, whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readdir(_self__:T_fileWithoutReadFrom, n:StdTypes.Int, mode:stdgo._internal.os.Os.T_readdirMode):stdgo.Tuple.Tuple4<Array<String>, Array<stdgo._internal.io.fs.Fs.DirEntry>, Array<stdgo._internal.io.fs.Fs.FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._readdir(_self__, n, mode);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
    public static function _readFrom(_self__:T_fileWithoutReadFrom, r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<haxe.Int64, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._readFrom(_self__, r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _read(_self__:T_fileWithoutReadFrom, b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._read(_self__, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pwrite(_self__:T_fileWithoutReadFrom, b:Array<std.UInt>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._pwrite(_self__, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pread(_self__:T_fileWithoutReadFrom, b:Array<std.UInt>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._pread(_self__, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _close(_self__:T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._close(_self__);
    }
    public static function _chmod(_self__:T_fileWithoutReadFrom, mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._chmod(_self__, mode);
    }
    public static function _checkValid(_self__:T_fileWithoutReadFrom, _0:String):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._checkValid(_self__, _0);
    }
    public static function writeString(_self__:T_fileWithoutReadFrom, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.writeString(_self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeAt(_self__:T_fileWithoutReadFrom, b:Array<std.UInt>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.writeAt(_self__, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function write(_self__:T_fileWithoutReadFrom, b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.write(_self__, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function truncate(_self__:T_fileWithoutReadFrom, _0:haxe.Int64):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.truncate(_self__, _0);
    }
    public static function syscallConn(_self__:T_fileWithoutReadFrom):stdgo.Tuple<stdgo._internal.syscall.Syscall.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.syscallConn(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function sync(_self__:T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.sync(_self__);
    }
    public static function stat(_self__:T_fileWithoutReadFrom):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.stat(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(_self__:T_fileWithoutReadFrom, _0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.setWriteDeadline(_self__, _0);
    }
    public static function setReadDeadline(_self__:T_fileWithoutReadFrom, _0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.setReadDeadline(_self__, _0);
    }
    public static function setDeadline(_self__:T_fileWithoutReadFrom, _0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.setDeadline(_self__, _0);
    }
    public static function seek(_self__:T_fileWithoutReadFrom, offset:haxe.Int64, whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.seek(_self__, offset, whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readdirnames(_self__:T_fileWithoutReadFrom, n:StdTypes.Int):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readdirnames(_self__, n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readdir(_self__:T_fileWithoutReadFrom, n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs.FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readdir(_self__, n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readDir(_self__:T_fileWithoutReadFrom, n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readDir(_self__, n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(_self__:T_fileWithoutReadFrom, b:Array<std.UInt>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readAt(_self__, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(_self__:T_fileWithoutReadFrom, b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.read(_self__, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function name(_self__:T_fileWithoutReadFrom):String {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.name(_self__);
    }
    public static function fd(_self__:T_fileWithoutReadFrom):stdgo.GoUIntptr {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.fd(_self__);
    }
    public static function close(_self__:T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.close(_self__);
    }
    public static function chown(_self__:T_fileWithoutReadFrom, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.chown(_self__, uid, gid);
    }
    public static function chmod(_self__:T_fileWithoutReadFrom, mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.chmod(_self__, mode);
    }
    public static function chdir(_self__:T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.chdir(_self__);
    }
}
class T_file_static_extension {
    static public function _close(file:T_file):stdgo.Error {
        return stdgo._internal.os.Os.T_file_static_extension._close(file);
    }
}
class T_unixDirent_static_extension {
    static public function string(d:T_unixDirent):String {
        return stdgo._internal.os.Os.T_unixDirent_static_extension.string(d);
    }
    static public function info(d:T_unixDirent):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_unixDirent_static_extension.info(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(d:T_unixDirent):FileMode {
        return stdgo._internal.os.Os.T_unixDirent_static_extension.type(d);
    }
    static public function isDir(d:T_unixDirent):Bool {
        return stdgo._internal.os.Os.T_unixDirent_static_extension.isDir(d);
    }
    static public function name(d:T_unixDirent):String {
        return stdgo._internal.os.Os.T_unixDirent_static_extension.name(d);
    }
}
class T_rawConn_static_extension {
    static public function write(c:T_rawConn, f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final f = f;
        return stdgo._internal.os.Os.T_rawConn_static_extension.write(c, f);
    }
    static public function read(c:T_rawConn, f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final f = f;
        return stdgo._internal.os.Os.T_rawConn_static_extension.read(c, f);
    }
    static public function control(c:T_rawConn, f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final f = f;
        return stdgo._internal.os.Os.T_rawConn_static_extension.control(c, f);
    }
}
class File_static_extension {
    static public function stat(f:File):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.stat(f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readFrom(f:File, r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<haxe.Int64, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._readFrom(f, r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _seek(f:File, offset:haxe.Int64, whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._seek(f, offset, whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fd(f:File):stdgo.GoUIntptr {
        return stdgo._internal.os.Os.File_static_extension.fd(f);
    }
    static public function _checkValid(f:File, op:String):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._checkValid(f, op);
    }
    static public function _setWriteDeadline(f:File, t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._setWriteDeadline(f, t);
    }
    static public function _setReadDeadline(f:File, t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._setReadDeadline(f, t);
    }
    static public function _setDeadline(f:File, t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._setDeadline(f, t);
    }
    static public function chdir(f:File):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.chdir(f);
    }
    static public function sync(f:File):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.sync(f);
    }
    static public function truncate(f:File, size:haxe.Int64):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.truncate(f, size);
    }
    static public function chown(f:File, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.chown(f, uid, gid);
    }
    static public function _chmod(f:File, mode:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._chmod(f, mode);
    }
    static public function _pwrite(f:File, b:Array<StdTypes.Int>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._pwrite(f, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _write(f:File, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._write(f, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pread(f:File, b:Array<StdTypes.Int>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._pread(f, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _read(f:File, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._read(f, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(f:File):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.close(f);
    }
    static public function syscallConn(f:File):stdgo.Tuple<stdgo._internal.syscall.Syscall.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.syscallConn(f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setWriteDeadline(f:File, t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.setWriteDeadline(f, t);
    }
    static public function setReadDeadline(f:File, t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.setReadDeadline(f, t);
    }
    static public function setDeadline(f:File, t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.setDeadline(f, t);
    }
    static public function chmod(f:File, mode:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.chmod(f, mode);
    }
    static public function _wrapErr(f:File, op:String, err:stdgo.Error):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._wrapErr(f, op, err);
    }
    static public function writeString(f:File, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.writeString(f, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(f:File, offset:haxe.Int64, whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.seek(f, offset, whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeAt(f:File, b:Array<StdTypes.Int>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.writeAt(f, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(f:File, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.write(f, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(f:File, r:stdgo._internal.io.Io.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readFrom(f, r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(f:File, b:Array<StdTypes.Int>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readAt(f, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(f:File, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.read(f, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function name(f:File):String {
        return stdgo._internal.os.Os.File_static_extension.name(f);
    }
    static public function _readdir(f:File, n:StdTypes.Int, mode:T_readdirMode):stdgo.Tuple.Tuple4<Array<String>, Array<DirEntry>, Array<FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._readdir(f, n, mode);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
    static public function readDir(f:File, n:StdTypes.Int):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readDir(f, n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readdirnames(f:File, n:StdTypes.Int):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readdirnames(f, n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readdir(f:File, n:StdTypes.Int):stdgo.Tuple<Array<FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readdir(f, n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _close(_self__:File):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._close(_self__);
    }
}
class T_fileStat_static_extension {
    static public function sys(fs:T_fileStat):stdgo.AnyInterface {
        return stdgo._internal.os.Os.T_fileStat_static_extension.sys(fs);
    }
    static public function modTime(fs:T_fileStat):stdgo._internal.time.Time.Time {
        return stdgo._internal.os.Os.T_fileStat_static_extension.modTime(fs);
    }
    static public function mode(fs:T_fileStat):FileMode {
        return stdgo._internal.os.Os.T_fileStat_static_extension.mode(fs);
    }
    static public function size(fs:T_fileStat):haxe.Int64 {
        return stdgo._internal.os.Os.T_fileStat_static_extension.size(fs);
    }
    static public function isDir(fs:T_fileStat):Bool {
        return stdgo._internal.os.Os.T_fileStat_static_extension.isDir(fs);
    }
    static public function name(fs:T_fileStat):String {
        return stdgo._internal.os.Os.T_fileStat_static_extension.name(fs);
    }
}
class T_dirFS_static_extension {
    static public function _join(dir:T_dirFS, name:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension._join(dir, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(dir:T_dirFS, name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension.stat(dir, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readDir(dir:T_dirFS, name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension.readDir(dir, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readFile(dir:T_dirFS, name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension.readFile(dir, name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(dir:T_dirFS, name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension.open(dir, name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package os provides a platform-independent interface to operating system
    functionality. The design is Unix-like, although the error handling is
    Go-like; failing calls return values of type error rather than error numbers.
    Often, more information is available within the error. For example,
    if a call that takes a file name fails, such as Open or Stat, the error
    will include the failing file name when printed and will be of type
    *PathError, which may be unpacked for more information.
    
    The os interface is intended to be uniform across all operating systems.
    Features not generally available appear in the system-specific package syscall.
    
    Here is a simple example, opening a file and reading some of it.
    
    	file, err := os.Open("file.go") // For read access.
    	if err != nil {
    		log.Fatal(err)
    	}
    
    If the open fails, the error string will be self-explanatory, like
    
    	open file.go: no such file or directory
    
    The file's data can then be read into a slice of bytes. Read and
    Write take their byte counts from the length of the argument slice.
    
    	data := make([]byte, 100)
    	count, err := file.Read(data)
    	if err != nil {
    		log.Fatal(err)
    	}
    	fmt.Printf("read %d bytes: %q\n", count, data[:count])
    
    Note: The maximum number of concurrent operations on a File may be limited by
    the OS or the system. The number should be high, but exceeding it may degrade
    performance or cause other issues.
**/
class Os {
    /**
        ReadDir reads the named directory,
        returning all its directory entries sorted by filename.
        If an error occurs reading the directory,
        ReadDir returns the entries it was able to read before the error,
        along with the error.
    **/
    static public function readDir(name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.readDir(name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Expand replaces ${var} or $var in the string based on the mapping function.
        For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
    **/
    static public function expand(s:String, mapping:stdgo.GoString -> stdgo.GoString):String {
        final mapping = mapping;
        return stdgo._internal.os.Os.expand(s, mapping);
    }
    /**
        ExpandEnv replaces ${var} or $var in the string according to the values
        of the current environment variables. References to undefined
        variables are replaced by the empty string.
    **/
    static public function expandEnv(s:String):String {
        return stdgo._internal.os.Os.expandEnv(s);
    }
    /**
        Getenv retrieves the value of the environment variable named by the key.
        It returns the value, which will be empty if the variable is not present.
        To distinguish between an empty value and an unset value, use LookupEnv.
    **/
    static public function getenv(key:String):String {
        return stdgo._internal.os.Os.getenv(key);
    }
    /**
        LookupEnv retrieves the value of the environment variable named
        by the key. If the variable is present in the environment the
        value (which may be empty) is returned and the boolean is true.
        Otherwise the returned value will be empty and the boolean will
        be false.
    **/
    static public function lookupEnv(key:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.os.Os.lookupEnv(key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Setenv sets the value of the environment variable named by the key.
        It returns an error, if any.
    **/
    static public function setenv(key:String, value:String):stdgo.Error {
        return stdgo._internal.os.Os.setenv(key, value);
    }
    /**
        Unsetenv unsets a single environment variable.
    **/
    static public function unsetenv(key:String):stdgo.Error {
        return stdgo._internal.os.Os.unsetenv(key);
    }
    /**
        Clearenv deletes all environment variables.
    **/
    static public function clearenv():Void {
        stdgo._internal.os.Os.clearenv();
    }
    /**
        Environ returns a copy of strings representing the environment,
        in the form "key=value".
    **/
    static public function environ():Array<String> {
        return [for (i in stdgo._internal.os.Os.environ()) i];
    }
    /**
        NewSyscallError returns, as an error, a new SyscallError
        with the given system call name and error details.
        As a convenience, if err is nil, NewSyscallError returns nil.
    **/
    static public function newSyscallError(syscall:String, err:stdgo.Error):stdgo.Error {
        return stdgo._internal.os.Os.newSyscallError(syscall, err);
    }
    /**
        IsExist returns a boolean indicating whether the error is known to report
        that a file or directory already exists. It is satisfied by ErrExist as
        well as some syscall errors.
        
        This function predates errors.Is. It only supports errors returned by
        the os package. New code should use errors.Is(err, fs.ErrExist).
    **/
    static public function isExist(err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isExist(err);
    }
    /**
        IsNotExist returns a boolean indicating whether the error is known to
        report that a file or directory does not exist. It is satisfied by
        ErrNotExist as well as some syscall errors.
        
        This function predates errors.Is. It only supports errors returned by
        the os package. New code should use errors.Is(err, fs.ErrNotExist).
    **/
    static public function isNotExist(err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isNotExist(err);
    }
    /**
        IsPermission returns a boolean indicating whether the error is known to
        report that permission is denied. It is satisfied by ErrPermission as well
        as some syscall errors.
        
        This function predates errors.Is. It only supports errors returned by
        the os package. New code should use errors.Is(err, fs.ErrPermission).
    **/
    static public function isPermission(err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isPermission(err);
    }
    /**
        IsTimeout returns a boolean indicating whether the error is known
        to report that a timeout occurred.
        
        This function predates errors.Is, and the notion of whether an
        error indicates a timeout can be ambiguous. For example, the Unix
        error EWOULDBLOCK sometimes indicates a timeout and sometimes does not.
        New code should use errors.Is with a value appropriate to the call
        returning the error, such as os.ErrDeadlineExceeded.
    **/
    static public function isTimeout(err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isTimeout(err);
    }
    /**
        Getpid returns the process id of the caller.
    **/
    static public function getpid():StdTypes.Int {
        return stdgo._internal.os.Os.getpid();
    }
    /**
        Getppid returns the process id of the caller's parent.
    **/
    static public function getppid():StdTypes.Int {
        return stdgo._internal.os.Os.getppid();
    }
    /**
        FindProcess looks for a running process by its pid.
        
        The Process it returns can be used to obtain information
        about the underlying operating system process.
        
        On Unix systems, FindProcess always succeeds and returns a Process
        for the given pid, regardless of whether the process exists. To test whether
        the process actually exists, see whether p.Signal(syscall.Signal(0)) reports
        an error.
    **/
    static public function findProcess(pid:StdTypes.Int):stdgo.Tuple<Process, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.findProcess(pid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        StartProcess starts a new process with the program, arguments and attributes
        specified by name, argv and attr. The argv slice will become os.Args in the
        new process, so it normally starts with the program name.
        
        If the calling goroutine has locked the operating system thread
        with runtime.LockOSThread and modified any inheritable OS-level
        thread state (for example, Linux or Plan 9 name spaces), the new
        process will inherit the caller's thread state.
        
        StartProcess is a low-level interface. The os/exec package provides
        higher-level interfaces.
        
        If there is an error, it will be of type *PathError.
    **/
    static public function startProcess(name:String, argv:Array<String>, attr:ProcAttr):stdgo.Tuple<Process, stdgo.Error> {
        final argv = ([for (i in argv) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.os.Os.startProcess(name, argv, attr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Executable returns the path name for the executable that started
        the current process. There is no guarantee that the path is still
        pointing to the correct executable. If a symlink was used to start
        the process, depending on the operating system, the result might
        be the symlink or the path it pointed to. If a stable result is
        needed, path/filepath.EvalSymlinks might help.
        
        Executable returns an absolute path unless an error occurred.
        
        The main use case is finding resources located relative to an
        executable.
    **/
    static public function executable():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.executable();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Mkdir creates a new directory with the specified name and permission
        bits (before umask).
        If there is an error, it will be of type *PathError.
    **/
    static public function mkdir(name:String, perm:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.mkdir(name, perm);
    }
    /**
        Chdir changes the current working directory to the named directory.
        If there is an error, it will be of type *PathError.
    **/
    static public function chdir(dir:String):stdgo.Error {
        return stdgo._internal.os.Os.chdir(dir);
    }
    /**
        Open opens the named file for reading. If successful, methods on
        the returned file can be used for reading; the associated file
        descriptor has mode O_RDONLY.
        If there is an error, it will be of type *PathError.
    **/
    static public function open(name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.open(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Create creates or truncates the named file. If the file already exists,
        it is truncated. If the file does not exist, it is created with mode 0666
        (before umask). If successful, methods on the returned File can
        be used for I/O; the associated file descriptor has mode O_RDWR.
        If there is an error, it will be of type *PathError.
    **/
    static public function create(name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.create(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        OpenFile is the generalized open call; most users will use Open
        or Create instead. It opens the named file with specified flag
        (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
        is passed, it is created with mode perm (before umask). If successful,
        methods on the returned File can be used for I/O.
        If there is an error, it will be of type *PathError.
    **/
    static public function openFile(name:String, flag:StdTypes.Int, perm:FileMode):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.openFile(name, flag, perm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Rename renames (moves) oldpath to newpath.
        If newpath already exists and is not a directory, Rename replaces it.
        OS-specific restrictions may apply when oldpath and newpath are in different directories.
        Even within the same directory, on non-Unix platforms Rename is not an atomic operation.
        If there is an error, it will be of type *LinkError.
    **/
    static public function rename(oldpath:String, newpath:String):stdgo.Error {
        return stdgo._internal.os.Os.rename(oldpath, newpath);
    }
    /**
        TempDir returns the default directory to use for temporary files.
        
        On Unix systems, it returns $TMPDIR if non-empty, else /tmp.
        On Windows, it uses GetTempPath, returning the first non-empty
        value from %TMP%, %TEMP%, %USERPROFILE%, or the Windows directory.
        On Plan 9, it returns /tmp.
        
        The directory is neither guaranteed to exist nor have accessible
        permissions.
    **/
    static public function tempDir():String {
        return stdgo._internal.os.Os.tempDir();
    }
    /**
        UserCacheDir returns the default root directory to use for user-specific
        cached data. Users should create their own application-specific subdirectory
        within this one and use that.
        
        On Unix systems, it returns $XDG_CACHE_HOME as specified by
        https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
        non-empty, else $HOME/.cache.
        On Darwin, it returns $HOME/Library/Caches.
        On Windows, it returns %LocalAppData%.
        On Plan 9, it returns $home/lib/cache.
        
        If the location cannot be determined (for example, $HOME is not defined),
        then it will return an error.
    **/
    static public function userCacheDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.userCacheDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        UserConfigDir returns the default root directory to use for user-specific
        configuration data. Users should create their own application-specific
        subdirectory within this one and use that.
        
        On Unix systems, it returns $XDG_CONFIG_HOME as specified by
        https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
        non-empty, else $HOME/.config.
        On Darwin, it returns $HOME/Library/Application Support.
        On Windows, it returns %AppData%.
        On Plan 9, it returns $home/lib.
        
        If the location cannot be determined (for example, $HOME is not defined),
        then it will return an error.
    **/
    static public function userConfigDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.userConfigDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        UserHomeDir returns the current user's home directory.
        
        On Unix, including macOS, it returns the $HOME environment variable.
        On Windows, it returns %USERPROFILE%.
        On Plan 9, it returns the $home environment variable.
        
        If the expected variable is not set in the environment, UserHomeDir
        returns either a platform-specific default value or a non-nil error.
    **/
    static public function userHomeDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.userHomeDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Chmod changes the mode of the named file to mode.
        If the file is a symbolic link, it changes the mode of the link's target.
        If there is an error, it will be of type *PathError.
        
        A different subset of the mode bits are used, depending on the
        operating system.
        
        On Unix, the mode's permission bits, ModeSetuid, ModeSetgid, and
        ModeSticky are used.
        
        On Windows, only the 0200 bit (owner writable) of mode is used; it
        controls whether the file's read-only attribute is set or cleared.
        The other bits are currently unused. For compatibility with Go 1.12
        and earlier, use a non-zero mode. Use mode 0400 for a read-only
        file and 0600 for a readable+writable file.
        
        On Plan 9, the mode's permission bits, ModeAppend, ModeExclusive,
        and ModeTemporary are used.
    **/
    static public function chmod(name:String, mode:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.chmod(name, mode);
    }
    /**
        DirFS returns a file system (an fs.FS) for the tree of files rooted at the directory dir.
        
        Note that DirFS("/prefix") only guarantees that the Open calls it makes to the
        operating system will begin with "/prefix": DirFS("/prefix").Open("file") is the
        same as os.Open("/prefix/file"). So if /prefix/file is a symbolic link pointing outside
        the /prefix tree, then using DirFS does not stop the access any more than using
        os.Open does. Additionally, the root of the fs.FS returned for a relative path,
        DirFS("prefix"), will be affected by later calls to Chdir. DirFS is therefore not
        a general substitute for a chroot-style security mechanism when the directory tree
        contains arbitrary content.
        
        The directory dir must not be "".
        
        The result implements [io/fs.StatFS], [io/fs.ReadFileFS] and
        [io/fs.ReadDirFS].
    **/
    static public function dirFS(dir:String):stdgo._internal.io.fs.Fs.FS {
        return stdgo._internal.os.Os.dirFS(dir);
    }
    /**
        ReadFile reads the named file and returns the contents.
        A successful call returns err == nil, not err == EOF.
        Because ReadFile reads the whole file, it does not treat an EOF from Read
        as an error to be reported.
    **/
    static public function readFile(name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.readFile(name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        WriteFile writes data to the named file, creating it if necessary.
        If the file does not exist, WriteFile creates it with permissions perm (before umask);
        otherwise WriteFile truncates it before writing, without changing permissions.
        Since WriteFile requires multiple system calls to complete, a failure mid-operation
        can leave the file in a partially written state.
    **/
    static public function writeFile(name:String, data:Array<StdTypes.Int>, perm:FileMode):stdgo.Error {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.os.Os.writeFile(name, data, perm);
    }
    /**
        Chown changes the numeric uid and gid of the named file.
        If the file is a symbolic link, it changes the uid and gid of the link's target.
        A uid or gid of -1 means to not change that value.
        If there is an error, it will be of type *PathError.
        
        On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
        EPLAN9 error, wrapped in *PathError.
    **/
    static public function chown(name:String, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.chown(name, uid, gid);
    }
    /**
        Lchown changes the numeric uid and gid of the named file.
        If the file is a symbolic link, it changes the uid and gid of the link itself.
        If there is an error, it will be of type *PathError.
        
        On Windows, it always returns the syscall.EWINDOWS error, wrapped
        in *PathError.
    **/
    static public function lchown(name:String, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.lchown(name, uid, gid);
    }
    /**
        Chtimes changes the access and modification times of the named
        file, similar to the Unix utime() or utimes() functions.
        A zero time.Time value will leave the corresponding file time unchanged.
        
        The underlying filesystem may truncate or round the values to a
        less precise time unit.
        If there is an error, it will be of type *PathError.
    **/
    static public function chtimes(name:String, atime:stdgo._internal.time.Time.Time, mtime:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.chtimes(name, atime, mtime);
    }
    /**
        NewFile returns a new File with the given file descriptor and
        name. The returned value will be nil if fd is not a valid file
        descriptor. On Unix systems, if the file descriptor is in
        non-blocking mode, NewFile will attempt to return a pollable File
        (one for which the SetDeadline methods work).
        
        After passing it to NewFile, fd may become invalid under the same
        conditions described in the comments of the Fd method, and the same
        constraints apply.
    **/
    static public function newFile(fd:stdgo.GoUIntptr, name:String):File {
        return stdgo._internal.os.Os.newFile(fd, name);
    }
    /**
        Truncate changes the size of the named file.
        If the file is a symbolic link, it changes the size of the link's target.
        If there is an error, it will be of type *PathError.
    **/
    static public function truncate(name:String, size:haxe.Int64):stdgo.Error {
        return stdgo._internal.os.Os.truncate(name, size);
    }
    /**
        Remove removes the named file or (empty) directory.
        If there is an error, it will be of type *PathError.
    **/
    static public function remove(name:String):stdgo.Error {
        return stdgo._internal.os.Os.remove(name);
    }
    /**
        Link creates newname as a hard link to the oldname file.
        If there is an error, it will be of type *LinkError.
    **/
    static public function link(oldname:String, newname:String):stdgo.Error {
        return stdgo._internal.os.Os.link(oldname, newname);
    }
    /**
        Symlink creates newname as a symbolic link to oldname.
        On Windows, a symlink to a non-existent oldname creates a file symlink;
        if oldname is later created as a directory the symlink will not work.
        If there is an error, it will be of type *LinkError.
    **/
    static public function symlink(oldname:String, newname:String):stdgo.Error {
        return stdgo._internal.os.Os.symlink(oldname, newname);
    }
    /**
        Readlink returns the destination of the named symbolic link.
        If there is an error, it will be of type *PathError.
    **/
    static public function readlink(name:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.readlink(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Getwd returns a rooted path name corresponding to the
        current directory. If the current directory can be
        reached via multiple paths (due to symbolic links),
        Getwd may return any one of them.
    **/
    static public function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.getwd();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MkdirAll creates a directory named path,
        along with any necessary parents, and returns nil,
        or else returns an error.
        The permission bits perm (before umask) are used for all
        directories that MkdirAll creates.
        If path is already a directory, MkdirAll does nothing
        and returns nil.
    **/
    static public function mkdirAll(path:String, perm:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.mkdirAll(path, perm);
    }
    /**
        RemoveAll removes path and any children it contains.
        It removes everything it can but returns the first error
        it encounters. If the path does not exist, RemoveAll
        returns nil (no error).
        If there is an error, it will be of type *PathError.
    **/
    static public function removeAll(path:String):stdgo.Error {
        return stdgo._internal.os.Os.removeAll(path);
    }
    /**
        IsPathSeparator reports whether c is a directory separator character.
    **/
    static public function isPathSeparator(c:std.UInt):Bool {
        return stdgo._internal.os.Os.isPathSeparator(c);
    }
    /**
        Pipe returns a connected pair of Files; reads from r return bytes written to w.
        It returns the files and an error, if any.
    **/
    static public function pipe():stdgo.Tuple.Tuple3<File, File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.pipe();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        Getuid returns the numeric user id of the caller.
        
        On Windows, it returns -1.
    **/
    static public function getuid():StdTypes.Int {
        return stdgo._internal.os.Os.getuid();
    }
    /**
        Geteuid returns the numeric effective user id of the caller.
        
        On Windows, it returns -1.
    **/
    static public function geteuid():StdTypes.Int {
        return stdgo._internal.os.Os.geteuid();
    }
    /**
        Getgid returns the numeric group id of the caller.
        
        On Windows, it returns -1.
    **/
    static public function getgid():StdTypes.Int {
        return stdgo._internal.os.Os.getgid();
    }
    /**
        Getegid returns the numeric effective group id of the caller.
        
        On Windows, it returns -1.
    **/
    static public function getegid():StdTypes.Int {
        return stdgo._internal.os.Os.getegid();
    }
    /**
        Getgroups returns a list of the numeric ids of groups that the caller belongs to.
        
        On Windows, it returns syscall.EWINDOWS. See the os/user package
        for a possible alternative.
    **/
    static public function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Exit causes the current program to exit with the given status code.
        Conventionally, code zero indicates success, non-zero an error.
        The program terminates immediately; deferred functions are not run.
        
        For portability, the status code should be in the range [0, 125].
    **/
    static public function exit(code:StdTypes.Int):Void {
        stdgo._internal.os.Os.exit(code);
    }
    /**
        Stat returns a FileInfo describing the named file.
        If there is an error, it will be of type *PathError.
    **/
    static public function stat(name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.stat(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Lstat returns a FileInfo describing the named file.
        If the file is a symbolic link, the returned FileInfo
        describes the symbolic link. Lstat makes no attempt to follow the link.
        If there is an error, it will be of type *PathError.
    **/
    static public function lstat(name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.lstat(name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Hostname returns the host name reported by the kernel.
    **/
    static public function hostname():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.hostname();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CreateTemp creates a new temporary file in the directory dir,
        opens the file for reading and writing, and returns the resulting file.
        The filename is generated by taking pattern and adding a random string to the end.
        If pattern includes a "*", the random string replaces the last "*".
        If dir is the empty string, CreateTemp uses the default directory for temporary files, as returned by TempDir.
        Multiple programs or goroutines calling CreateTemp simultaneously will not choose the same file.
        The caller can use the file's Name method to find the pathname of the file.
        It is the caller's responsibility to remove the file when it is no longer needed.
    **/
    static public function createTemp(dir:String, pattern:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.createTemp(dir, pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MkdirTemp creates a new temporary directory in the directory dir
        and returns the pathname of the new directory.
        The new directory's name is generated by adding a random string to the end of pattern.
        If pattern includes a "*", the random string replaces the last "*" instead.
        If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
        Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
        It is the caller's responsibility to remove the directory when it is no longer needed.
    **/
    static public function mkdirTemp(dir:String, pattern:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.mkdirTemp(dir, pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Getpagesize returns the underlying system's memory page size.
    **/
    static public function getpagesize():StdTypes.Int {
        return stdgo._internal.os.Os.getpagesize();
    }
    /**
        SameFile reports whether fi1 and fi2 describe the same file.
        For example, on Unix this means that the device and inode fields
        of the two underlying structures are identical; on other systems
        the decision may be based on the path names.
        SameFile only applies to results returned by this package's Stat.
        It returns false in other cases.
    **/
    static public function sameFile(fi1:FileInfo, fi2:FileInfo):Bool {
        return stdgo._internal.os.Os.sameFile(fi1, fi2);
    }
}
