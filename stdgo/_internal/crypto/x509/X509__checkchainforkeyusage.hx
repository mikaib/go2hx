package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5615639_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextCertBreak = false;
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_5615964_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = -1i32;
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_5:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _usages_5 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    _usages_5.__copyTo__(_keyUsages);
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5615174i32;
                    } else {
                        _gotoNext = 5615196i32;
                    };
                } else if (__value__ == (5615174i32)) {
                    return false;
                    _gotoNext = 5615196i32;
                } else if (__value__ == (5615196i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5615395i32;
                } else if (__value__ == (5615395i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5615406i32;
                } else if (__value__ == (5615406i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5615443i32;
                    } else {
                        _gotoNext = 5616176i32;
                    };
                } else if (__value__ == (5615439i32)) {
                    _i_7--;
                    _gotoNext = 5615406i32;
                } else if (__value__ == (5615443i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5615533i32;
                    } else {
                        _gotoNext = 5615623i32;
                    };
                } else if (__value__ == (5615533i32)) {
                    _i_7--;
                    _gotoNext = 5615406i32;
                } else if (__value__ == (5615623i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5615781i32;
                    } else {
                        _gotoNext = 5615787i32;
                    };
                } else if (__value__ == (5615627i32)) {
                    _iterator_5615639_9++;
                    _gotoNext = 5615782i32;
                } else if (__value__ == (5615662i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5615639_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5615694i32;
                    } else {
                        _gotoNext = 5615627i32;
                    };
                } else if (__value__ == (5615694i32)) {
                    _i_7--;
                    _gotoNext = 5615406i32;
                } else if (__value__ == (5615781i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5615639_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5615782i32;
                } else if (__value__ == (5615782i32)) {
                    if (_iterator_5615639_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5615662i32;
                    } else {
                        _gotoNext = 5615787i32;
                    };
                } else if (__value__ == (5615787i32)) {
                    _gotoNext = 5615825i32;
                } else if (__value__ == (5615825i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5616168i32;
                    } else {
                        _gotoNext = 5615439i32;
                    };
                } else if (__value__ == (5615851i32)) {
                    _i_12++;
                    _gotoNext = 5616169i32;
                } else if (__value__ == (5615885i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5615924i32;
                    } else {
                        _gotoNext = 5615948i32;
                    };
                } else if (__value__ == (5615924i32)) {
                    _i_12++;
                    _gotoNext = 5616169i32;
                } else if (__value__ == (5615948i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5616063i32;
                    } else {
                        _gotoNext = 5616070i32;
                    };
                } else if (__value__ == (5615952i32)) {
                    _iterator_5615964_14++;
                    _gotoNext = 5616064i32;
                } else if (__value__ == (5615987i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5615964_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5616020i32;
                    } else {
                        _gotoNext = 5615952i32;
                    };
                } else if (__value__ == (5616020i32)) {
                    _i_12++;
                    _gotoNext = 5616169i32;
                } else if (__value__ == (5616063i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5615964_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5616064i32;
                } else if (__value__ == (5616064i32)) {
                    if (_iterator_5615964_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5615987i32;
                    } else {
                        _gotoNext = 5616070i32;
                    };
                } else if (__value__ == (5616070i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5616143i32;
                    } else {
                        _gotoNext = 5615851i32;
                    };
                } else if (__value__ == (5616143i32)) {
                    return false;
                    _gotoNext = 5615851i32;
                } else if (__value__ == (5616168i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5616169i32;
                } else if (__value__ == (5616169i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5615885i32;
                    } else {
                        _gotoNext = 5615439i32;
                    };
                } else if (__value__ == (5616176i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
