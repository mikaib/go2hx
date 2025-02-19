package stdgo._internal.image.draw;
var _clipTests : stdgo.Slice<stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest> = (new stdgo.Slice<stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest>(10, 10, ...[(new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("basic" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zr.zR?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
true,
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest), (new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("clip dr" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((40 : stdgo.GoInt), (40 : stdgo.GoInt), (60 : stdgo.GoInt), (60 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zr.zR?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
true,
stdgo._internal.image.Image_rect.rect((40 : stdgo.GoInt), (40 : stdgo.GoInt), (60 : stdgo.GoInt), (60 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((40 : stdgo.GoInt), (40 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest), (new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("clip sr" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (20 : stdgo.GoInt), (80 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zr.zR?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
true,
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (20 : stdgo.GoInt), (80 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((20 : stdgo.GoInt), (20 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest), (new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("clip dr and sr" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (20 : stdgo.GoInt), (80 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zr.zR?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
true,
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (20 : stdgo.GoInt), (50 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((20 : stdgo.GoInt), (20 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest), (new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("clip dr and sr, sp outside sr (top-left)" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (20 : stdgo.GoInt), (80 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zr.zR?.__copy__(),
stdgo._internal.image.Image_pt.pt((15 : stdgo.GoInt), (8 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
true,
stdgo._internal.image.Image_rect.rect((5 : stdgo.GoInt), (12 : stdgo.GoInt), (50 : stdgo.GoInt), (72 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((20 : stdgo.GoInt), (20 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest), (new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("clip dr and sr, sp outside sr (middle-left)" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (20 : stdgo.GoInt), (80 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zr.zR?.__copy__(),
stdgo._internal.image.Image_pt.pt((15 : stdgo.GoInt), (66 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
true,
stdgo._internal.image.Image_rect.rect((5 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (14 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((20 : stdgo.GoInt), (66 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest), (new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("clip dr and sr, sp outside sr (bottom-left)" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (20 : stdgo.GoInt), (80 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zr.zR?.__copy__(),
stdgo._internal.image.Image_pt.pt((15 : stdgo.GoInt), (91 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
true,
stdgo._internal.image.Image_zr.zR?.__copy__(),
stdgo._internal.image.Image_pt.pt((15 : stdgo.GoInt), (91 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest), (new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("clip dr and sr, sp inside sr" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (20 : stdgo.GoInt), (80 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zr.zR?.__copy__(),
stdgo._internal.image.Image_pt.pt((44 : stdgo.GoInt), (33 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
true,
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (36 : stdgo.GoInt), (47 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((44 : stdgo.GoInt), (33 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest), (new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("basic mask" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (80 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (80 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (49 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (46 : stdgo.GoInt), (47 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
stdgo._internal.image.Image_zp.zP?.__copy__(),
false,
stdgo._internal.image.Image_rect.rect((20 : stdgo.GoInt), (0 : stdgo.GoInt), (46 : stdgo.GoInt), (47 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((20 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((20 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest), (new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
("clip sr and mr" : stdgo.GoString),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (100 : stdgo.GoInt), (100 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((23 : stdgo.GoInt), (23 : stdgo.GoInt), (55 : stdgo.GoInt), (86 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_rect.rect((44 : stdgo.GoInt), (44 : stdgo.GoInt), (87 : stdgo.GoInt), (58 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((11 : stdgo.GoInt), (11 : stdgo.GoInt))?.__copy__(),
false,
stdgo._internal.image.Image_rect.rect((33 : stdgo.GoInt), (33 : stdgo.GoInt), (45 : stdgo.GoInt), (47 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((43 : stdgo.GoInt), (43 : stdgo.GoInt))?.__copy__(),
stdgo._internal.image.Image_pt.pt((44 : stdgo.GoInt), (44 : stdgo.GoInt))?.__copy__()) : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest)])) : stdgo.Slice<stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest>);
