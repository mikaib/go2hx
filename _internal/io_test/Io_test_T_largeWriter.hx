package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.io_test.Io_test_T_largeWriter_static_extension.T_largeWriter_static_extension) class T_largeWriter {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_largeWriter(_err);
    }
}
