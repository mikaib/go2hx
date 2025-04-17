package stdgo._internal.crypto.x509;
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _usage_15:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5633230_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_13:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_5632905_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usagesRemaining_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _invalidUsage_11:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = -1i32;
        var _usage_10:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _cert_8:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var nextCertBreak = false;
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
                        _gotoNext = 5632440i32;
                    } else {
                        _gotoNext = 5632462i32;
                    };
                } else if (__value__ == (5632440i32)) {
                    return false;
                    _gotoNext = 5632462i32;
                } else if (__value__ == (5632462i32)) {
                    _usagesRemaining_6 = (_usages_5.length);
                    _gotoNext = 5632661i32;
                } else if (__value__ == (5632661i32)) {
                    _i_7 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 5632672i32;
                } else if (__value__ == (5632672i32)) {
                    if (!nextCertBreak && ((_i_7 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5632709i32;
                    } else {
                        _gotoNext = 5633442i32;
                    };
                } else if (__value__ == (5632705i32)) {
                    _i_7--;
                    _gotoNext = 5632672i32;
                } else if (__value__ == (5632709i32)) {
                    _cert_8 = _chain[(_i_7 : stdgo.GoInt)];
                    if ((((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_8 ?? throw "null pointer dereference").unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 5632799i32;
                    } else {
                        _gotoNext = 5632889i32;
                    };
                } else if (__value__ == (5632799i32)) {
                    _i_7--;
                    _gotoNext = 5632672i32;
                } else if (__value__ == (5632889i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5633047i32;
                    } else {
                        _gotoNext = 5633053i32;
                    };
                } else if (__value__ == (5632893i32)) {
                    _iterator_5632905_9++;
                    _gotoNext = 5633048i32;
                } else if (__value__ == (5632928i32)) {
                    _usage_10 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5632905_9 : stdgo.GoInt)];
                    if (_usage_10 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5632960i32;
                    } else {
                        _gotoNext = 5632893i32;
                    };
                } else if (__value__ == (5632960i32)) {
                    _i_7--;
                    _gotoNext = 5632672i32;
                } else if (__value__ == (5633047i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5632905_9 = @:binopAssign __tmp__0;
                        _usage_10 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5633048i32;
                } else if (__value__ == (5633048i32)) {
                    if (_iterator_5632905_9 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5632928i32;
                    } else {
                        _gotoNext = 5633053i32;
                    };
                } else if (__value__ == (5633053i32)) {
                    _gotoNext = 5633091i32;
                } else if (__value__ == (5633091i32)) {
                    if ((0i32 : stdgo.GoInt) < (_usages_5.length)) {
                        _gotoNext = 5633434i32;
                    } else {
                        _gotoNext = 5632705i32;
                    };
                } else if (__value__ == (5633117i32)) {
                    _i_12++;
                    _gotoNext = 5633435i32;
                } else if (__value__ == (5633151i32)) {
                    _requestedUsage_13 = _usages_5[(_i_12 : stdgo.GoInt)];
                    if (_requestedUsage_13 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 5633190i32;
                    } else {
                        _gotoNext = 5633214i32;
                    };
                } else if (__value__ == (5633190i32)) {
                    _i_12++;
                    _gotoNext = 5633435i32;
                } else if (__value__ == (5633214i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5633329i32;
                    } else {
                        _gotoNext = 5633336i32;
                    };
                } else if (__value__ == (5633218i32)) {
                    _iterator_5633230_14++;
                    _gotoNext = 5633330i32;
                } else if (__value__ == (5633253i32)) {
                    _usage_15 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(_iterator_5633230_14 : stdgo.GoInt)];
                    if (_requestedUsage_13 == (_usage_15)) {
                        _gotoNext = 5633286i32;
                    } else {
                        _gotoNext = 5633218i32;
                    };
                } else if (__value__ == (5633286i32)) {
                    _i_12++;
                    _gotoNext = 5633435i32;
                } else if (__value__ == (5633329i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage[(0i32 : stdgo.GoInt)];
                        _iterator_5633230_14 = @:binopAssign __tmp__0;
                        _usage_15 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5633330i32;
                } else if (__value__ == (5633330i32)) {
                    if (_iterator_5633230_14 < ((@:checkr _cert_8 ?? throw "null pointer dereference").extKeyUsage.length)) {
                        _gotoNext = 5633253i32;
                    } else {
                        _gotoNext = 5633336i32;
                    };
                } else if (__value__ == (5633336i32)) {
                    _usages_5[(_i_12 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    _usagesRemaining_6--;
                    if (_usagesRemaining_6 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5633409i32;
                    } else {
                        _gotoNext = 5633117i32;
                    };
                } else if (__value__ == (5633409i32)) {
                    return false;
                    _gotoNext = 5633117i32;
                } else if (__value__ == (5633434i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _usages_5[(0i32 : stdgo.GoInt)];
                        _i_12 = @:binopAssign __tmp__0;
                        _requestedUsage_13 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5633435i32;
                } else if (__value__ == (5633435i32)) {
                    if (_i_12 < (_usages_5.length)) {
                        _gotoNext = 5633151i32;
                    } else {
                        _gotoNext = 5632705i32;
                    };
                } else if (__value__ == (5633442i32)) {
                    return true;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
