package stdgo._internal.image.jpeg;
function _toYCbCr(_m:stdgo._internal.image.Image_Image.Image, _p:stdgo._internal.image.Image_Point.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>):Void {
        var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        var _xmax = (_b.max.x - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _ymax = (_b.max.y - (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (8 : stdgo.GoInt) : Bool), _j++, {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                        var __tmp__ = _m.at(stdgo._internal.image.jpeg.Jpeg__min._min((_p.x + _i : stdgo.GoInt), _xmax), stdgo._internal.image.jpeg.Jpeg__min._min((_p.y + _j : stdgo.GoInt), _ymax)).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, __0:stdgo.GoUInt32 = __tmp__._3;
                        var __tmp__ = stdgo._internal.image.color.Color_rgbtoYCbCr.rgbtoYCbCr(((_r >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_g >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_b >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)), _yy:stdgo.GoUInt8 = __tmp__._0, _cb:stdgo.GoUInt8 = __tmp__._1, _cr:stdgo.GoUInt8 = __tmp__._2;
                        _yBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_yy : stdgo.GoInt32);
                        _cbBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_cb : stdgo.GoInt32);
                        _crBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_cr : stdgo.GoInt32);
                    });
                };
            });
        };
    }
