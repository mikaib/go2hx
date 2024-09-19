package stdgo._internal.image.jpeg;
function _rgbaToYCbCr(_m:stdgo.Ref<stdgo._internal.image.Image_RGBA.RGBA>, _p:stdgo._internal.image.Image_Point.Point, _yBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _cbBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _crBlock:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>):Void {
        var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        var _xmax = (_b.max.x - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _ymax = (_b.max.y - (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (8 : stdgo.GoInt) : Bool), _j++, {
                var _sj = (_p.y + _j : stdgo.GoInt);
                if ((_sj > _ymax : Bool)) {
                    _sj = _ymax;
                };
                var _offset = ((((_sj - _b.min.y : stdgo.GoInt)) * _m.stride : stdgo.GoInt) - (_b.min.x * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                        var _sx = (_p.x + _i : stdgo.GoInt);
                        if ((_sx > _xmax : Bool)) {
                            _sx = _xmax;
                        };
                        var _pix = (_m.pix.__slice__((_offset + (_sx * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        var __tmp__ = stdgo._internal.image.color.Color_rgbtoYCbCr.rgbtoYCbCr(_pix[(0 : stdgo.GoInt)], _pix[(1 : stdgo.GoInt)], _pix[(2 : stdgo.GoInt)]), _yy:stdgo.GoUInt8 = __tmp__._0, _cb:stdgo.GoUInt8 = __tmp__._1, _cr:stdgo.GoUInt8 = __tmp__._2;
                        _yBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_yy : stdgo.GoInt32);
                        _cbBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_cb : stdgo.GoInt32);
                        _crBlock[(((8 : stdgo.GoInt) * _j : stdgo.GoInt) + _i : stdgo.GoInt)] = (_cr : stdgo.GoInt32);
                    });
                };
            });
        };
    }
