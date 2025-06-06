package stdgo.io.ioutil;
var discard(get, set) : stdgo._internal.io.Io_writer.Writer;
private function get_discard():stdgo._internal.io.Io_writer.Writer return stdgo._internal.io.ioutil.Ioutil_discard.discard;
private function set_discard(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        stdgo._internal.io.ioutil.Ioutil_discard.discard = v;
        return v;
    }
/**
    * Package ioutil implements some I/O utility functions.
    * 
    * Deprecated: As of Go 1.16, the same functionality is now provided
    * by package [io] or package [os], and those implementations
    * should be preferred in new code.
    * See the specific function documentation for details.
**/
class Ioutil {
    /**
        * ReadAll reads from r until an error or EOF and returns the data it read.
        * A successful call returns err == nil, not err == EOF. Because ReadAll is
        * defined to read from src until EOF, it does not treat an EOF from Read
        * as an error to be reported.
        * 
        * Deprecated: As of Go 1.16, this function simply calls [io.ReadAll].
    **/
    static public inline function readAll(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.io.ioutil.Ioutil_readall.readAll(_r);
    /**
        * ReadFile reads the file named by filename and returns the contents.
        * A successful call returns err == nil, not err == EOF. Because ReadFile
        * reads the whole file, it does not treat an EOF from Read as an error
        * to be reported.
        * 
        * Deprecated: As of Go 1.16, this function simply calls [os.ReadFile].
    **/
    static public inline function readFile(_filename:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.io.ioutil.Ioutil_readfile.readFile(_filename);
    /**
        * WriteFile writes data to a file named by filename.
        * If the file does not exist, WriteFile creates it with permissions perm
        * (before umask); otherwise WriteFile truncates it before writing, without changing permissions.
        * 
        * Deprecated: As of Go 1.16, this function simply calls [os.WriteFile].
    **/
    static public inline function writeFile(_filename:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error return stdgo._internal.io.ioutil.Ioutil_writefile.writeFile(_filename, _data, _perm);
    /**
        * ReadDir reads the directory named by dirname and returns
        * a list of fs.FileInfo for the directory's contents,
        * sorted by filename. If an error occurs reading the directory,
        * ReadDir returns no directory entries along with the error.
        * 
        * Deprecated: As of Go 1.16, [os.ReadDir] is a more efficient and correct choice:
        * it returns a list of [fs.DirEntry] instead of [fs.FileInfo],
        * and it returns partial results in the case of an error
        * midway through reading a directory.
        * 
        * If you must continue obtaining a list of [fs.FileInfo], you still can:
        * 
        * 	entries, err := os.ReadDir(dirname)
        * 	if err != nil { ... }
        * 	infos := make([]fs.FileInfo, 0, len(entries))
        * 	for _, entry := range entries {
        * 		info, err := entry.Info()
        * 		if err != nil { ... }
        * 		infos = append(infos, info)
        * 	}
    **/
    static public inline function readDir(_dirname:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; } return stdgo._internal.io.ioutil.Ioutil_readdir.readDir(_dirname);
    /**
        * NopCloser returns a ReadCloser with a no-op Close method wrapping
        * the provided Reader r.
        * 
        * Deprecated: As of Go 1.16, this function simply calls [io.NopCloser].
    **/
    static public inline function nopCloser(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_readcloser.ReadCloser return stdgo._internal.io.ioutil.Ioutil_nopcloser.nopCloser(_r);
    /**
        * TempFile creates a new temporary file in the directory dir,
        * opens the file for reading and writing, and returns the resulting *os.File.
        * The filename is generated by taking pattern and adding a random
        * string to the end. If pattern includes a "*", the random string
        * replaces the last "*".
        * If dir is the empty string, TempFile uses the default directory
        * for temporary files (see os.TempDir).
        * Multiple programs calling TempFile simultaneously
        * will not choose the same file. The caller can use f.Name()
        * to find the pathname of the file. It is the caller's responsibility
        * to remove the file when no longer needed.
        * 
        * Deprecated: As of Go 1.17, this function simply calls [os.CreateTemp].
    **/
    static public inline function tempFile(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return stdgo._internal.io.ioutil.Ioutil_tempfile.tempFile(_dir, _pattern);
    /**
        * TempDir creates a new temporary directory in the directory dir.
        * The directory name is generated by taking pattern and applying a
        * random string to the end. If pattern includes a "*", the random string
        * replaces the last "*". TempDir returns the name of the new directory.
        * If dir is the empty string, TempDir uses the
        * default directory for temporary files (see os.TempDir).
        * Multiple programs calling TempDir simultaneously
        * will not choose the same directory. It is the caller's responsibility
        * to remove the directory when no longer needed.
        * 
        * Deprecated: As of Go 1.17, this function simply calls [os.MkdirTemp].
    **/
    static public inline function tempDir(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.io.ioutil.Ioutil_tempdir.tempDir(_dir, _pattern);
}
