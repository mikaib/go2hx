package stdgo._internal.archive.zip;
function _readDirectoryHeader(_f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var _ticksPerSecond_24;
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _buf_0:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
        var _ts_30:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ts_25:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrSize_22:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parseExtrasBreak = false;
        var _utf8Valid1_9:Bool = false;
        var _fieldBuf_20:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _needUSize_13:Bool = false;
        var _utf8Require2_12:Bool = false;
        var _utf8Valid2_11:Bool = false;
        var _extraLen_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_2:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _epoch_28:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _nsecs_27:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrTag_21:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _d_7:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _sig_3:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _fieldTag_18:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _commentLen_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _secs_26:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _extra_17:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _needHeaderOffset_15:Bool = false;
        var _needCSize_14:Bool = false;
        var _utf8Require1_10:Bool = false;
        var _filenameLen_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_1:stdgo.Error = (null : stdgo.Error);
        var _msdosModified_31:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _ts_29:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _attrBuf_23:stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf = (new stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf(0, 0) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _fieldSize_19:stdgo.GoInt = (0 : stdgo.GoInt);
        var _modified_16:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf_0.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_1 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_1 != null) {
                            _gotoNext = 3866022i32;
                        } else {
                            _gotoNext = 3866041i32;
                        };
                    };
                } else if (__value__ == (3866022i32)) {
                    return _err_1;
                    _gotoNext = 3866041i32;
                } else if (__value__ == (3866041i32)) {
                    _b_2 = ((_buf_0.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    {
                        _sig_3 = @:check2 _b_2._uint32();
                        if (_sig_3 != ((33639248u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3866117i32;
                        } else {
                            _gotoNext = 3866142i32;
                        };
                    };
                } else if (__value__ == (3866117i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3866142i32;
                } else if (__value__ == (3866142i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.creatorVersion = @:check2 _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.readerVersion = @:check2 _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.flags = @:check2 _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.method = @:check2 _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime = @:check2 _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate = @:check2 _b_2._uint16();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.cRC32 = @:check2 _b_2._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize = @:check2 _b_2._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize = @:check2 _b_2._uint32();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize : stdgo.GoUInt64);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize : stdgo.GoUInt64);
                    _filenameLen_4 = (@:check2 _b_2._uint16() : stdgo.GoInt);
                    _extraLen_5 = (@:check2 _b_2._uint16() : stdgo.GoInt);
                    _commentLen_6 = (@:check2 _b_2._uint16() : stdgo.GoInt);
                    _b_2 = (_b_2.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.externalAttrs = @:check2 _b_2._uint32();
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _b_2._uint32() : stdgo.GoInt64);
                    _d_7 = (new stdgo.Slice<stdgo.GoUInt8>(((_filenameLen_4 + _extraLen_5 : stdgo.GoInt) + _commentLen_6 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, _d_7);
                            _err_8 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_8 != null) {
                            _gotoNext = 3866819i32;
                        } else {
                            _gotoNext = 3866838i32;
                        };
                    };
                } else if (__value__ == (3866819i32)) {
                    return _err_8;
                    _gotoNext = 3866838i32;
                } else if (__value__ == (3866838i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.name = ((_d_7.__slice__(0, _filenameLen_4) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.extra = (_d_7.__slice__(_filenameLen_4, (_filenameLen_4 + _extraLen_5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.comment = ((_d_7.__slice__((_filenameLen_4 + _extraLen_5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__());
                        _utf8Valid1_9 = @:tmpset0 __tmp__._0;
                        _utf8Require1_10 = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _f ?? throw "null pointer dereference").fileHeader.comment?.__copy__());
                        _utf8Valid2_11 = @:tmpset0 __tmp__._0;
                        _utf8Require2_12 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3867105i32;
                } else if (__value__ == (3867105i32)) {
                    if ((!_utf8Valid1_9 || !_utf8Valid2_11 : Bool)) {
                        _gotoNext = 3867115i32;
                    } else if ((!_utf8Require1_10 && !_utf8Require2_12 : Bool)) {
                        _gotoNext = 3867212i32;
                    } else {
                        _gotoNext = 3867344i32;
                    };
                } else if (__value__ == (3867115i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = true;
                    _gotoNext = 3867676i32;
                } else if (__value__ == (3867212i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = false;
                    _gotoNext = 3867676i32;
                } else if (__value__ == (3867344i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.nonUTF8 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.flags & (2048 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
                    _gotoNext = 3867676i32;
                } else if (__value__ == (3867676i32)) {
                    _needUSize_13 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needCSize_14 = (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize == ((-1u32 : stdgo.GoUInt32));
                    _needHeaderOffset_15 = (@:checkr _f ?? throw "null pointer dereference")._headerOffset == (((-1u32 : stdgo.GoUInt32) : stdgo.GoInt64));
                    _gotoNext = 3868007i32;
                } else if (__value__ == (3868007i32)) {
                    _extra_17 = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.extra : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
                    _parseExtrasBreak = false;
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3868021i32)) {
                    if (!_parseExtrasBreak && (((_extra_17.length) >= (4 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 3868069i32;
                    } else {
                        _gotoNext = 3870188i32;
                    };
                } else if (__value__ == (3868069i32)) {
                    _fieldTag_18 = @:check2 _extra_17._uint16();
                    _fieldSize_19 = (@:check2 _extra_17._uint16() : stdgo.GoInt);
                    if (((_extra_17.length) < _fieldSize_19 : Bool)) {
                        _gotoNext = 3868193i32;
                    } else {
                        _gotoNext = 3868210i32;
                    };
                } else if (__value__ == (3868193i32)) {
                    _gotoNext = 3870188i32;
                } else if (__value__ == (3868210i32)) {
                    _fieldBuf_20 = @:check2 _extra_17._sub(_fieldSize_19);
                    _gotoNext = 3868246i32;
                } else if (__value__ == (3868246i32)) {
                    {
                        final __value__ = _fieldTag_18;
                        if (__value__ == ((1 : stdgo.GoUInt16))) {
                            _gotoNext = 3868266i32;
                        } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                            _gotoNext = 3868929i32;
                        } else if (__value__ == ((13 : stdgo.GoUInt16)) || __value__ == ((22613 : stdgo.GoUInt16))) {
                            _gotoNext = 3869739i32;
                        } else if (__value__ == ((21589 : stdgo.GoUInt16))) {
                            _gotoNext = 3869982i32;
                        } else {
                            _gotoNext = 3868021i32;
                        };
                    };
                } else if (__value__ == (3868266i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._zip64 = true;
                    if (_needUSize_13) {
                        _gotoNext = 3868495i32;
                    } else {
                        _gotoNext = 3868627i32;
                    };
                } else if (__value__ == (3868495i32)) {
                    _needUSize_13 = false;
                    if (((_fieldBuf_20.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868544i32;
                    } else {
                        _gotoNext = 3868578i32;
                    };
                } else if (__value__ == (3868544i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3868578i32;
                } else if (__value__ == (3868578i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 = @:check2 _fieldBuf_20._uint64();
                    _gotoNext = 3868627i32;
                } else if (__value__ == (3868627i32)) {
                    if (_needCSize_14) {
                        _gotoNext = 3868640i32;
                    } else {
                        _gotoNext = 3868770i32;
                    };
                } else if (__value__ == (3868640i32)) {
                    _needCSize_14 = false;
                    if (((_fieldBuf_20.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868689i32;
                    } else {
                        _gotoNext = 3868723i32;
                    };
                } else if (__value__ == (3868689i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3868723i32;
                } else if (__value__ == (3868723i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 = @:check2 _fieldBuf_20._uint64();
                    _gotoNext = 3868770i32;
                } else if (__value__ == (3868770i32)) {
                    if (_needHeaderOffset_15) {
                        _gotoNext = 3868790i32;
                    } else {
                        _gotoNext = 3868021i32;
                    };
                } else if (__value__ == (3868790i32)) {
                    _needHeaderOffset_15 = false;
                    if (((_fieldBuf_20.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868846i32;
                    } else {
                        _gotoNext = 3868880i32;
                    };
                } else if (__value__ == (3868846i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3868880i32;
                } else if (__value__ == (3868880i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._headerOffset = (@:check2 _fieldBuf_20._uint64() : stdgo.GoInt64);
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3868929i32)) {
                    if (((_fieldBuf_20.length) < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868971i32;
                    } else {
                        _gotoNext = 3869006i32;
                    };
                } else if (__value__ == (3868971i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869006i32)) {
                    @:check2 _fieldBuf_20._uint32();
                    0i32;
                    _gotoNext = 3869056i32;
                } else if (__value__ == (3869056i32)) {
                    if (((_fieldBuf_20.length) >= (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3869079i32;
                    } else {
                        _gotoNext = 3868021i32;
                    };
                } else if (__value__ == (3869079i32)) {
                    _attrTag_21 = @:check2 _fieldBuf_20._uint16();
                    _attrSize_22 = (@:check2 _fieldBuf_20._uint16() : stdgo.GoInt);
                    if (((_fieldBuf_20.length) < _attrSize_22 : Bool)) {
                        _gotoNext = 3869215i32;
                    } else {
                        _gotoNext = 3869253i32;
                    };
                } else if (__value__ == (3869215i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869253i32)) {
                    _attrBuf_23 = @:check2 _fieldBuf_20._sub(_attrSize_22);
                    if (((_attrTag_21 != (1 : stdgo.GoUInt16)) || (_attrSize_22 != (24 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3869325i32;
                    } else {
                        _gotoNext = 3869384i32;
                    };
                } else if (__value__ == (3869325i32)) {
                    0i32;
                    _gotoNext = 3869056i32;
                } else if (__value__ == (3869384i32)) {
                    _ticksPerSecond_24 = (1e+07 : stdgo.GoFloat64);
                    _ts_25 = (@:check2 _attrBuf_23._uint64() : stdgo.GoInt64);
                    _secs_26 = (_ts_25 / (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _nsecs_27 = ((100i64 : stdgo.GoInt64) * (_ts_25 % (10000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                    _epoch_28 = stdgo._internal.time.Time_date.date((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time_month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.uTC)?.__copy__();
                    _modified_16 = stdgo._internal.time.Time_unix.unix((_epoch_28.unix() + _secs_26 : stdgo.GoInt64), _nsecs_27)?.__copy__();
                    _gotoNext = 3869056i32;
                } else if (__value__ == (3869739i32)) {
                    if (((_fieldBuf_20.length) < (8 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3869801i32;
                    } else {
                        _gotoNext = 3869836i32;
                    };
                } else if (__value__ == (3869801i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869836i32)) {
                    @:check2 _fieldBuf_20._uint32();
                    _ts_29 = (@:check2 _fieldBuf_20._uint32() : stdgo.GoInt64);
                    _modified_16 = stdgo._internal.time.Time_unix.unix(_ts_29, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3869982i32)) {
                    if ((((_fieldBuf_20.length) < (5 : stdgo.GoInt) : Bool) || ((@:check2 _fieldBuf_20._uint8() & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3870054i32;
                    } else {
                        _gotoNext = 3870089i32;
                    };
                } else if (__value__ == (3870054i32)) {
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3870089i32)) {
                    _ts_30 = (@:check2 _fieldBuf_20._uint32() : stdgo.GoInt64);
                    _modified_16 = stdgo._internal.time.Time_unix.unix(_ts_30, (0i64 : stdgo.GoInt64))?.__copy__();
                    _gotoNext = 3868021i32;
                } else if (__value__ == (3870188i32)) {
                    _msdosModified_31 = stdgo._internal.archive.zip.Zip__msdostimetotime._msDosTimeToTime((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate, (@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime)?.__copy__();
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _msdosModified_31?.__copy__();
                    if (!_modified_16.isZero()) {
                        _gotoNext = 3870304i32;
                    } else {
                        _gotoNext = 3871442i32;
                    };
                } else if (__value__ == (3870304i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_16.uTC()?.__copy__();
                    if ((((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedTime != (0 : stdgo.GoUInt16)) || ((@:checkr _f ?? throw "null pointer dereference").fileHeader.modifiedDate != (0 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3870840i32;
                    } else {
                        _gotoNext = 3871442i32;
                    };
                } else if (__value__ == (3870840i32)) {
                    (@:checkr _f ?? throw "null pointer dereference").fileHeader.modified = _modified_16.in_(stdgo._internal.archive.zip.Zip__timezone._timeZone(_msdosModified_31.sub(_modified_16?.__copy__())))?.__copy__();
                    _gotoNext = 3871442i32;
                } else if (__value__ == (3871442i32)) {
                    _needUSize_13;
                    if ((_needCSize_14 || _needHeaderOffset_15 : Bool)) {
                        _gotoNext = 3871491i32;
                    } else {
                        _gotoNext = 3871517i32;
                    };
                } else if (__value__ == (3871491i32)) {
                    return stdgo._internal.archive.zip.Zip_errformat.errFormat;
                    _gotoNext = 3871517i32;
                } else if (__value__ == (3871517i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
