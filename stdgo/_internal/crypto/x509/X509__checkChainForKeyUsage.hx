package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _cert_5621399:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var nextCertBreak = false;
        var _i_5621362:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5621916_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5621806:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5621803:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5621591_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_5621148:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5621034:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5621907:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _invalidUsage_5621745:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5621582:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5621034 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    stdgo.Go.copySlice(_usages_5621034, _keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5621126i32;
                    } else {
                        _gotoNext = 5621148i32;
                    };
                } else if (__value__ == (5621126i32)) {
                    return false;
                    _gotoNext = 5621148i32;
                } else if (__value__ == (5621148i32)) {
                    _usagesRemaining_5621148 = (_usages_5621034.length);
                    _gotoNext = 5621347i32;
                } else if (__value__ == (5621347i32)) {
                    _i_5621362 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5621358i32;
                } else if (__value__ == (5621358i32)) {
                    if (!nextCertBreak && ((_i_5621362 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5621395i32;
                    } else {
                        _gotoNext = 5622128i32;
                    };
                } else if (__value__ == (5621391i32)) {
                    _i_5621362--;
                    _gotoNext = 5621358i32;
                } else if (__value__ == (5621395i32)) {
                    _cert_5621399 = _chain[(_i_5621362 : stdgo.GoInt)];
                    if (((_cert_5621399.extKeyUsage.length == (0 : stdgo.GoInt)) && (_cert_5621399.unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5621485i32;
                    } else {
                        _gotoNext = 5621575i32;
                    };
                } else if (__value__ == (5621485i32)) {
                    _i_5621362--;
                    _gotoNext = 5621358i32;
                } else if (__value__ == (5621575i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5621399.extKeyUsage.length)) {
                        _gotoNext = 5621733i32;
                    } else {
                        _gotoNext = 5621739i32;
                    };
                } else if (__value__ == (5621579i32)) {
                    _i_5621591_0++;
                    _gotoNext = 5621734i32;
                } else if (__value__ == (5621614i32)) {
                    _usage_5621582 = _cert_5621399.extKeyUsage[(_i_5621591_0 : stdgo.GoInt)];
                    if (_usage_5621582 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5621646i32;
                    } else {
                        _gotoNext = 5621579i32;
                    };
                } else if (__value__ == (5621646i32)) {
                    _i_5621362--;
                    _gotoNext = 5621358i32;
                } else if (__value__ == (5621733i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5621399.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5621591_0 = __tmp__0;
                        _usage_5621582 = __tmp__1;
                    };
                    _gotoNext = 5621734i32;
                } else if (__value__ == (5621734i32)) {
                    if (_i_5621591_0 < (_cert_5621399.extKeyUsage.length)) {
                        _gotoNext = 5621614i32;
                    } else {
                        _gotoNext = 5621739i32;
                    };
                } else if (__value__ == (5621739i32)) {
                    _invalidUsage_5621745 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5621777i32;
                } else if (__value__ == (5621777i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5621034.length)) {
                        _gotoNext = 5622120i32;
                    } else {
                        _gotoNext = 5621391i32;
                    };
                } else if (__value__ == (5621803i32)) {
                    _i_5621803++;
                    _gotoNext = 5622121i32;
                } else if (__value__ == (5621837i32)) {
                    _requestedUsage_5621806 = _usages_5621034[(_i_5621803 : stdgo.GoInt)];
                    if (_requestedUsage_5621806 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5621876i32;
                    } else {
                        _gotoNext = 5621900i32;
                    };
                } else if (__value__ == (5621876i32)) {
                    _i_5621803++;
                    _gotoNext = 5622121i32;
                } else if (__value__ == (5621900i32)) {
                    if ((0i32 : stdgo.GoInt) < (_cert_5621399.extKeyUsage.length)) {
                        _gotoNext = 5622015i32;
                    } else {
                        _gotoNext = 5622022i32;
                    };
                } else if (__value__ == (5621904i32)) {
                    _i_5621916_0++;
                    _gotoNext = 5622016i32;
                } else if (__value__ == (5621939i32)) {
                    _usage_5621907 = _cert_5621399.extKeyUsage[(_i_5621916_0 : stdgo.GoInt)];
                    if (_requestedUsage_5621806 == (_usage_5621907)) {
                        _gotoNext = 5621972i32;
                    } else {
                        _gotoNext = 5621904i32;
                    };
                } else if (__value__ == (5621972i32)) {
                    _i_5621803++;
                    _gotoNext = 5622121i32;
                } else if (__value__ == (5622015i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _cert_5621399.extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5621916_0 = __tmp__0;
                        _usage_5621907 = __tmp__1;
                    };
                    _gotoNext = 5622016i32;
                } else if (__value__ == (5622016i32)) {
                    if (_i_5621916_0 < (_cert_5621399.extKeyUsage.length)) {
                        _gotoNext = 5621939i32;
                    } else {
                        _gotoNext = 5622022i32;
                    };
                } else if (__value__ == (5622022i32)) {
                    _usages_5621034[(_i_5621803 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5621148--;
                    if (_usagesRemaining_5621148 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5622095i32;
                    } else {
                        _gotoNext = 5621803i32;
                    };
                } else if (__value__ == (5622095i32)) {
                    return false;
                    _gotoNext = 5621803i32;
                } else if (__value__ == (5622120i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5621034[(0i32 : stdgo.GoInt)];
                        _i_5621803 = __tmp__0;
                        _requestedUsage_5621806 = __tmp__1;
                    };
                    _gotoNext = 5622121i32;
                } else if (__value__ == (5622121i32)) {
                    if (_i_5621803 < (_usages_5621034.length)) {
                        _gotoNext = 5621837i32;
                    } else {
                        _gotoNext = 5621391i32;
                    };
                } else if (__value__ == (5622128i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
