package stdgo._internal.encoding.base64;
function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _w : _w } : stdgo._internal.encoding.base64.Base64_T_encoder.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_T_encoder.T_encoder>));
    }
