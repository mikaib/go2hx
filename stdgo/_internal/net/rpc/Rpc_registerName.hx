package stdgo._internal.net.rpc;
function registerName(_name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_defaultServer.defaultServer.registerName(_name?.__copy__(), _rcvr);
    }
