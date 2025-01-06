package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>):Bool {
        var _usages_5577641:stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
        var _usage_5578514:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5578523_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_5578413:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _i_5578410:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_5578352:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var _usage_5578189:stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
        var nextCertBreak = false;
        var _usagesRemaining_5577755:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5578198_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_5578006:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        var _i_5577969:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5577641 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage>);
                    _usages_5577641.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5577733i32;
                    } else {
                        _gotoNext = 5577755i32;
                    };
                } else if (__value__ == (5577733i32)) {
                    return false;
                    _gotoNext = 5577755i32;
                } else if (__value__ == (5577755i32)) {
                    _usagesRemaining_5577755 = (_usages_5577641.length);
                    _gotoNext = 5577954i32;
                } else if (__value__ == (5577954i32)) {
                    _i_5577969 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5577965i32;
                } else if (__value__ == (5577965i32)) {
                    if (!nextCertBreak && ((_i_5577969 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5578002i32;
                    } else {
                        _gotoNext = 5578735i32;
                    };
                } else if (__value__ == (5577998i32)) {
                    _i_5577969--;
                    _gotoNext = 5577965i32;
                } else if (__value__ == (5578002i32)) {
                    _cert_5578006 = _chain[(_i_5577969 : stdgo.GoInt)];
                    if ((((@:checkr _cert_5578006 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_5578006 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5578092i32;
                    } else {
                        _gotoNext = 5578182i32;
                    };
                } else if (__value__ == (5578092i32)) {
                    _i_5577969--;
                    _gotoNext = 5577965i32;
                } else if (__value__ == (5578182i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5578006 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5578340i32;
                    } else {
                        _gotoNext = 5578346i32;
                    };
                } else if (__value__ == (5578186i32)) {
                    _i_5578198_0++;
                    _gotoNext = 5578341i32;
                } else if (__value__ == (5578221i32)) {
                    _usage_5578189 = (@:checkr _cert_5578006 ?? throw "null pointer dereference").extKeyUsage[(_i_5578198_0 : stdgo.GoInt)];
                    if (_usage_5578189 == ((0 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5578253i32;
                    } else {
                        _gotoNext = 5578186i32;
                    };
                } else if (__value__ == (5578253i32)) {
                    _i_5577969--;
                    _gotoNext = 5577965i32;
                } else if (__value__ == (5578340i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5578006 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5578198_0 = __tmp__0;
                        _usage_5578189 = __tmp__1;
                    };
                    _gotoNext = 5578341i32;
                } else if (__value__ == (5578341i32)) {
                    if (_i_5578198_0 < ((@:checkr _cert_5578006 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5578221i32;
                    } else {
                        _gotoNext = 5578346i32;
                    };
                } else if (__value__ == (5578346i32)) {
                    _invalidUsage_5578352 = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _gotoNext = 5578384i32;
                } else if (__value__ == (5578384i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5577641.length)) {
                        _gotoNext = 5578727i32;
                    } else {
                        _gotoNext = 5577998i32;
                    };
                } else if (__value__ == (5578410i32)) {
                    _i_5578410++;
                    _gotoNext = 5578728i32;
                } else if (__value__ == (5578444i32)) {
                    _requestedUsage_5578413 = _usages_5577641[(_i_5578410 : stdgo.GoInt)];
                    if (_requestedUsage_5578413 == ((-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage))) {
                        _gotoNext = 5578483i32;
                    } else {
                        _gotoNext = 5578507i32;
                    };
                } else if (__value__ == (5578483i32)) {
                    _i_5578410++;
                    _gotoNext = 5578728i32;
                } else if (__value__ == (5578507i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_5578006 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5578622i32;
                    } else {
                        _gotoNext = 5578629i32;
                    };
                } else if (__value__ == (5578511i32)) {
                    _i_5578523_0++;
                    _gotoNext = 5578623i32;
                } else if (__value__ == (5578546i32)) {
                    _usage_5578514 = (@:checkr _cert_5578006 ?? throw "null pointer dereference").extKeyUsage[(_i_5578523_0 : stdgo.GoInt)];
                    if (_requestedUsage_5578413 == (_usage_5578514)) {
                        _gotoNext = 5578579i32;
                    } else {
                        _gotoNext = 5578511i32;
                    };
                } else if (__value__ == (5578579i32)) {
                    _i_5578410++;
                    _gotoNext = 5578728i32;
                } else if (__value__ == (5578622i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_5578006 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _i_5578523_0 = __tmp__0;
                        _usage_5578514 = __tmp__1;
                    };
                    _gotoNext = 5578623i32;
                } else if (__value__ == (5578623i32)) {
                    if (_i_5578523_0 < ((@:checkr _cert_5578006 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5578546i32;
                    } else {
                        _gotoNext = 5578629i32;
                    };
                } else if (__value__ == (5578629i32)) {
                    _usages_5577641[(_i_5578410 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage);
                    _usagesRemaining_5577755--;
                    if (_usagesRemaining_5577755 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5578702i32;
                    } else {
                        _gotoNext = 5578410i32;
                    };
                } else if (__value__ == (5578702i32)) {
                    return false;
                    _gotoNext = 5578410i32;
                } else if (__value__ == (5578727i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5577641[(0i32 : stdgo.GoInt)];
                        _i_5578410 = __tmp__0;
                        _requestedUsage_5578413 = __tmp__1;
                    };
                    _gotoNext = 5578728i32;
                } else if (__value__ == (5578728i32)) {
                    if (_i_5578410 < (_usages_5577641.length)) {
                        _gotoNext = 5578444i32;
                    } else {
                        _gotoNext = 5577998i32;
                    };
                } else if (__value__ == (5578735i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
