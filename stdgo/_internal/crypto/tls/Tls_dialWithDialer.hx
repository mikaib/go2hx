package stdgo._internal.crypto.tls;
function dialWithDialer(_dialer:stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>, _network:stdgo.GoString, _addr:stdgo.GoString, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.tls.Tls__dial._dial(stdgo._internal.context.Context_background.background(), _dialer, _network?.__copy__(), _addr?.__copy__(), _config);
    }
