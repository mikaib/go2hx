package stdgo._internal.log.syslog;
@:keep class T_serverConn_static_extension {
    static public function _close(t:T_serverConn):stdgo.Error return t._close();
    static public function _writeString(t:T_serverConn, _p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _hostname:stdgo.GoString, _tag:stdgo.GoString, _s:stdgo.GoString, _nl:stdgo.GoString):stdgo.Error return t._writeString(_p, _hostname, _tag, _s, _nl);
}
