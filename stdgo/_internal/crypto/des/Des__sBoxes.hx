package stdgo._internal.crypto.des;
var _sBoxes : stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>> = (new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>>(8, 8, ...[(new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(14 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(0 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(4 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(15 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>), (new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(15 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(3 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(0 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(13 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>), (new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(10 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(13 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(1 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>), (new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(7 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(13 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(10 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(3 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>), (new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(2 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(14 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(11 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>), (new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(12 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(10 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(9 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(4 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>), (new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(4 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(13 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(1 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(6 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>), (new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(13 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(1 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(7 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), (new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>(4, 4, ...[for (i in 0 ... 4) new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)])])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>>);
