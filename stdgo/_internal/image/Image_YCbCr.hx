package stdgo._internal.image;
@:structInit @:using(stdgo._internal.image.Image_YCbCr_static_extension.YCbCr_static_extension) class YCbCr {
    public var y : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cb : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var cr : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var ystride : stdgo.GoInt = 0;
    public var cstride : stdgo.GoInt = 0;
    public var subsampleRatio : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio = ((0 : stdgo.GoInt) : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio);
    public var rect : stdgo._internal.image.Image_Rectangle.Rectangle = ({} : stdgo._internal.image.Image_Rectangle.Rectangle);
    public function new(?y:stdgo.Slice<stdgo.GoUInt8>, ?cb:stdgo.Slice<stdgo.GoUInt8>, ?cr:stdgo.Slice<stdgo.GoUInt8>, ?ystride:stdgo.GoInt, ?cstride:stdgo.GoInt, ?subsampleRatio:stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio, ?rect:stdgo._internal.image.Image_Rectangle.Rectangle) {
        if (y != null) this.y = y;
        if (cb != null) this.cb = cb;
        if (cr != null) this.cr = cr;
        if (ystride != null) this.ystride = ystride;
        if (cstride != null) this.cstride = cstride;
        if (subsampleRatio != null) this.subsampleRatio = subsampleRatio;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new YCbCr(y, cb, cr, ystride, cstride, subsampleRatio, rect);
    }
}
