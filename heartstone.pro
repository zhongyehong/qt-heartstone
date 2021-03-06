TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp \
    mana.cpp \
    card.cpp \
    player.cpp \
    wrapper.cpp \
    minion.cpp \
    method.cpp \
    definition.cpp

RESOURCES += \
    qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    image/Anduin.jpg \
    image/Jaina.jpg \
    MainForm.ui.qml \
    main.qml \
    image/u=407646131,510728288&fm=21&gp=0.jpg \
    Image/UI/emptymana.jpg \
    Image/UI/fullmana.jpg \
    Image/UI/loadingpic.jpg \
    Image/Hero/Anduin.png \
    Image/Hero/HERO_01.png \
    Image/Hero/HERO_02.png \
    Image/Hero/HERO_03.png \
    Image/Hero/HERO_04.png \
    Image/Hero/HERO_05.png \
    Image/Hero/HERO_06.png \
    Image/Hero/HERO_07.png \
    Image/Hero/Jaina.png \
    Image/UI/19258c20副本.png \
    Image/UI/1d099de0.png \
    Image/UI/1d4cc000.png \
    Image/UI/1d4cc120.png \
    Image/UI/1d4cc4a0.png \
    Image/UI/1d4cc700.png \
    Image/UI/1d4ccba0.png \
    Image/UI/1d6c6d40.png \
    Image/UI/1d6c6fa0.png \
    Image/UI/1d6c70c0.png \
    Image/UI/1d6c71e0.png \
    Image/UI/1d6c7680.png \
    Image/UI/1d6c7b20.png \
    Image/UI/1d6c7ea0.png \
    Image/UI/1d6c8340.png \
    Image/UI/1efa0a80.png \
    Image/UI/arrow_left.png \
    Image/UI/arrow_right.png \
    Image/UI/aszc.png \
    Image/UI/btnbg.png \
    Image/UI/btnfront.png \
    Image/UI/buttonweb.png \
    Image/UI/chat.png \
    Image/UI/down.png \
    Image/UI/drag.png \
    Image/UI/gold.png \
    Image/UI/golddi.png \
    Image/UI/hand.png \
    Image/UI/img_border_large.png \
    Image/UI/logo1.png \
    Image/UI/logolight.png \
    Image/UI/lushiweb.png \
    Image/UI/set.png \
    Image/UI/step_pic.png \
    Image/UI/topanddown.png \
    Image/UI/ui.png \
    Image/UI/wait.png \
    Image/UI/willdeath.png \
    Image/UI/X.png \
    Image/UI/未标题-1.png \
    Image/UI/未标题-10.png \
    Image/UI/未标题-11.png \
    Image/UI/未标题-12.png \
    Image/UI/未标题-13.png \
    Image/UI/未标题-14.png \
    Image/UI/未标题-15.png \
    Image/UI/未标题-2.png \
    Image/UI/未标题-3.png \
    Image/UI/未标题-4.png \
    Image/UI/未标题-5.png \
    Image/UI/未标题-6.png \
    Image/UI/未标题-7.png \
    Image/UI/未标题-8.png \
    Image/UI/未标题-9.png \
    Image/卡牌/CS1_042.png \
    Image/卡牌/CS1_069.png \
    Image/卡牌/CS1_112.png \
    Image/卡牌/CS1_113.png \
    Image/卡牌/CS1_129.png \
    Image/卡牌/CS1_130.png \
    Image/卡牌/CS1h_001.png \
    Image/卡牌/CS2_003.png \
    Image/卡牌/CS2_004.png \
    Image/卡牌/CS2_005.png \
    Image/卡牌/CS2_007.png \
    Image/卡牌/CS2_008.png \
    Image/卡牌/CS2_009.png \
    Image/卡牌/CS2_011.png \
    Image/卡牌/CS2_012.png \
    Image/卡牌/CS2_013.png \
    Image/卡牌/CS2_013t.png \
    Image/卡牌/CS2_017.png \
    Image/卡牌/CS2_022.png \
    Image/卡牌/CS2_023.png \
    Image/卡牌/CS2_024.png \
    Image/卡牌/CS2_025.png \
    Image/卡牌/CS2_026.png \
    Image/卡牌/CS2_027.png \
    Image/卡牌/CS2_028.png \
    Image/卡牌/CS2_029.png \
    Image/卡牌/CS2_031.png \
    Image/卡牌/CS2_032.png \
    Image/卡牌/CS2_033.png \
    Image/卡牌/CS2_034.png \
    Image/卡牌/CS2_037.png \
    Image/卡牌/CS2_038.png \
    Image/卡牌/CS2_039.png \
    Image/卡牌/CS2_041.png \
    Image/卡牌/CS2_042.png \
    Image/卡牌/CS2_045.png \
    Image/卡牌/CS2_046.png \
    Image/卡牌/CS2_049.png \
    Image/卡牌/CS2_050.png \
    Image/卡牌/CS2_051.png \
    Image/卡牌/CS2_052.png \
    Image/卡牌/CS2_053.png \
    Image/卡牌/CS2_056.png \
    Image/卡牌/CS2_057.png \
    Image/卡牌/CS2_059.png \
    Image/卡牌/CS2_061.png \
    Image/卡牌/CS2_062.png \
    Image/卡牌/CS2_063.png \
    Image/卡牌/CS2_064.png \
    Image/卡牌/CS2_065.png \
    Image/卡牌/CS2_072.png \
    Image/卡牌/CS2_073.png \
    Image/卡牌/CS2_074.png \
    Image/卡牌/CS2_075.png \
    Image/卡牌/CS2_076.png \
    Image/卡牌/CS2_077.png \
    Image/卡牌/CS2_080.png \
    Image/卡牌/CS2_082.png \
    Image/卡牌/CS2_083b.png \
    Image/卡牌/CS2_084.png \
    Image/卡牌/CS2_087.png \
    Image/卡牌/CS2_088.png \
    Image/卡牌/CS2_089.png \
    Image/卡牌/CS2_091.png \
    Image/卡牌/CS2_092.png \
    Image/卡牌/CS2_093.png \
    Image/卡牌/CS2_094.png \
    Image/卡牌/CS2_097.png \
    Image/卡牌/CS2_101.png \
    Image/卡牌/CS2_101t.png \
    Image/卡牌/CS2_102.png \
    Image/卡牌/CS2_103.png \
    Image/卡牌/CS2_104.png \
    Image/卡牌/CS2_105.png \
    Image/卡牌/CS2_106.png \
    Image/卡牌/CS2_108.png \
    Image/卡牌/CS2_112.png \
    Image/卡牌/CS2_114.png \
    Image/卡牌/CS2_117.png \
    Image/卡牌/CS2_118.png \
    Image/卡牌/CS2_119.png \
    Image/卡牌/CS2_120.png \
    Image/卡牌/CS2_121.png \
    Image/卡牌/CS2_122.png \
    Image/卡牌/CS2_124.png \
    Image/卡牌/CS2_125.png \
    Image/卡牌/CS2_127.png \
    Image/卡牌/CS2_131.png \
    Image/卡牌/CS2_141.png \
    Image/卡牌/CS2_142.png \
    Image/卡牌/CS2_146.png \
    Image/卡牌/CS2_147.png \
    Image/卡牌/CS2_150.png \
    Image/卡牌/CS2_151.png \
    Image/卡牌/CS2_152.png \
    Image/卡牌/CS2_155.png \
    Image/卡牌/CS2_161.png \
    Image/卡牌/CS2_162.png \
    Image/卡牌/CS2_168.png \
    Image/卡牌/CS2_169.png \
    Image/卡牌/CS2_171.png \
    Image/卡牌/CS2_172.png \
    Image/卡牌/CS2_173.png \
    Image/卡牌/CS2_179.png \
    Image/卡牌/CS2_181.png \
    Image/卡牌/CS2_182.png \
    Image/卡牌/CS2_186.png \
    Image/卡牌/CS2_187.png \
    Image/卡牌/CS2_188.png \
    Image/卡牌/CS2_189.png \
    Image/卡牌/CS2_196.png \
    Image/卡牌/CS2_197.png \
    Image/卡牌/CS2_200.png \
    Image/卡牌/CS2_201.png \
    Image/卡牌/CS2_203.png \
    Image/卡牌/CS2_213.png \
    Image/卡牌/CS2_221.png \
    Image/卡牌/CS2_222.png \
    Image/卡牌/CS2_226.png \
    Image/卡牌/CS2_227.png \
    Image/卡牌/CS2_231.png \
    Image/卡牌/CS2_232.png \
    Image/卡牌/CS2_233.png \
    Image/卡牌/CS2_234.png \
    Image/卡牌/CS2_235.png \
    Image/卡牌/CS2_236.png \
    Image/卡牌/CS2_237.png \
    Image/卡牌/CS2_boar.png \
    Image/卡牌/CS2_mirror.png \
    Image/卡牌/CS2_tk1.png \
    Image/卡牌/DREAM_01.png \
    Image/卡牌/DREAM_02.png \
    Image/卡牌/DREAM_03.png \
    Image/卡牌/DREAM_04.png \
    Image/卡牌/DREAM_05.png \
    Image/卡牌/DS1_055.png \
    Image/卡牌/DS1_070.png \
    Image/卡牌/DS1_175.png \
    Image/卡牌/DS1_178.png \
    Image/卡牌/DS1_183.png \
    Image/卡牌/DS1_184.png \
    Image/卡牌/DS1_185.png \
    Image/卡牌/DS1_188.png \
    Image/卡牌/DS1_233.png \
    Image/卡牌/ds1_whelptoken.png \
    Image/卡牌/DS1h_292.png \
    Image/卡牌/EX1_001.png \
    Image/卡牌/EX1_002.png \
    Image/卡牌/EX1_004.png \
    Image/卡牌/EX1_005.png \
    Image/卡牌/EX1_006.png \
    Image/卡牌/EX1_007.png \
    Image/卡牌/EX1_008.png \
    Image/卡牌/EX1_009.png \
    Image/卡牌/EX1_010.png \
    Image/卡牌/EX1_011.png \
    Image/卡牌/EX1_012.png \
    Image/卡牌/EX1_014.png \
    Image/卡牌/EX1_014t.png \
    Image/卡牌/EX1_015.png \
    Image/卡牌/EX1_016.png \
    Image/卡牌/EX1_017.png \
    Image/卡牌/EX1_019.png \
    Image/卡牌/EX1_020.png \
    Image/卡牌/EX1_021.png \
    Image/卡牌/EX1_023.png \
    Image/卡牌/EX1_025.png \
    Image/卡牌/EX1_025t.png \
    Image/卡牌/EX1_028.png \
    Image/卡牌/EX1_029.png \
    Image/卡牌/EX1_032.png \
    Image/卡牌/EX1_033.png \
    Image/卡牌/EX1_043.png \
    Image/卡牌/EX1_044.png \
    Image/卡牌/EX1_045.png \
    Image/卡牌/EX1_046.png \
    Image/卡牌/EX1_048.png \
    Image/卡牌/EX1_049.png \
    Image/卡牌/EX1_050.png \
    Image/卡牌/EX1_055.png \
    Image/卡牌/EX1_057.png \
    Image/卡牌/EX1_058.png \
    Image/卡牌/EX1_059.png \
    Image/卡牌/EX1_062.png \
    Image/卡牌/EX1_066.png \
    Image/卡牌/EX1_067.png \
    Image/卡牌/EX1_076.png \
    Image/卡牌/EX1_080.png \
    Image/卡牌/EX1_082.png \
    Image/卡牌/EX1_083.png \
    Image/卡牌/EX1_084.png \
    Image/卡牌/EX1_085.png \
    Image/卡牌/EX1_089.png \
    Image/卡牌/EX1_091.png \
    Image/卡牌/EX1_093.png \
    Image/卡牌/EX1_095.png \
    Image/卡牌/EX1_096.png \
    Image/卡牌/EX1_097.png \
    Image/卡牌/EX1_100.png \
    Image/卡牌/EX1_102.png \
    Image/卡牌/EX1_103.png \
    Image/卡牌/EX1_105.png \
    Image/卡牌/EX1_110.png \
    Image/卡牌/EX1_110t.png \
    Image/卡牌/EX1_112.png \
    Image/卡牌/EX1_116.png \
    Image/卡牌/EX1_124.png \
    Image/卡牌/EX1_126.png \
    Image/卡牌/EX1_128.png \
    Image/卡牌/EX1_129.png \
    Image/卡牌/EX1_130.png \
    Image/卡牌/EX1_130a.png \
    Image/卡牌/EX1_131.png \
    Image/卡牌/EX1_131t.png \
    Image/卡牌/EX1_132.png \
    Image/卡牌/EX1_133.png \
    Image/卡牌/EX1_134.png \
    Image/卡牌/EX1_136.png \
    Image/卡牌/EX1_137.png \
    Image/卡牌/EX1_144.png \
    Image/卡牌/EX1_145.png \
    Image/卡牌/EX1_154.png \
    Image/卡牌/EX1_154a.png \
    Image/卡牌/EX1_154b.png \
    Image/卡牌/EX1_155.png \
    Image/卡牌/EX1_155a.png \
    Image/卡牌/EX1_155b.png \
    Image/卡牌/EX1_158.png \
    Image/卡牌/EX1_158t.png \
    Image/卡牌/EX1_160.png \
    Image/卡牌/EX1_160a.png \
    Image/卡牌/EX1_160b.png \
    Image/卡牌/EX1_160t.png \
    Image/卡牌/EX1_161.png \
    Image/卡牌/EX1_162.png \
    Image/卡牌/EX1_164.png \
    Image/卡牌/EX1_164a.png \
    Image/卡牌/EX1_164b.png \
    Image/卡牌/EX1_165.png \
    Image/卡牌/EX1_165a.png \
    Image/卡牌/EX1_165b.png \
    Image/卡牌/EX1_165t1.png \
    Image/卡牌/EX1_165t2.png \
    Image/卡牌/EX1_166.png \
    Image/卡牌/EX1_166a.png \
    Image/卡牌/EX1_166b.png \
    Image/卡牌/EX1_169.png \
    Image/卡牌/EX1_170.png \
    Image/卡牌/EX1_173.png \
    Image/卡牌/EX1_178.png \
    Image/卡牌/EX1_178a.png \
    Image/卡牌/EX1_178b.png \
    Image/卡牌/EX1_238.png \
    Image/卡牌/EX1_241.png \
    Image/卡牌/EX1_243.png \
    Image/卡牌/EX1_244.png \
    Image/卡牌/EX1_245.png \
    Image/卡牌/EX1_246.png \
    Image/卡牌/EX1_247.png \
    Image/卡牌/EX1_248.png \
    Image/卡牌/EX1_249.png \
    Image/卡牌/EX1_250.png \
    Image/卡牌/EX1_251.png \
    Image/卡牌/EX1_258.png \
    Image/卡牌/EX1_259.png \
    Image/卡牌/EX1_274.png \
    Image/卡牌/EX1_275.png \
    Image/卡牌/EX1_277.png \
    Image/卡牌/EX1_278.png \
    Image/卡牌/EX1_279.png \
    Image/卡牌/EX1_283.png \
    Image/卡牌/EX1_284.png \
    Image/卡牌/EX1_287.png \
    Image/卡牌/EX1_289.png \
    Image/卡牌/EX1_294.png \
    Image/卡牌/EX1_295.png \
    Image/卡牌/EX1_298.png \
    Image/卡牌/EX1_301.png \
    Image/卡牌/EX1_302.png \
    Image/卡牌/EX1_303.png \
    Image/卡牌/EX1_304.png \
    Image/卡牌/EX1_306.png \
    Image/卡牌/EX1_308.png \
    Image/卡牌/EX1_309.png \
    Image/卡牌/EX1_310.png \
    Image/卡牌/EX1_312.png \
    Image/卡牌/EX1_313.png \
    Image/卡牌/EX1_315.png \
    Image/卡牌/EX1_316.png \
    Image/卡牌/EX1_317.png \
    Image/卡牌/EX1_317t.png \
    Image/卡牌/EX1_319.png \
    Image/卡牌/EX1_320.png \
    Image/卡牌/EX1_323.png \
    Image/卡牌/EX1_323h.png \
    Image/卡牌/EX1_323w.png \
    Image/卡牌/EX1_332.png \
    Image/卡牌/EX1_334.png \
    Image/卡牌/EX1_335.png \
    Image/卡牌/EX1_339.png \
    Image/卡牌/EX1_341.png \
    Image/卡牌/EX1_345.png \
    Image/卡牌/EX1_345t.png \
    Image/卡牌/EX1_349.png \
    Image/卡牌/EX1_350.png \
    Image/卡牌/EX1_354.png \
    Image/卡牌/EX1_355.png \
    Image/卡牌/EX1_360.png \
    Image/卡牌/EX1_362.png \
    Image/卡牌/EX1_363.png \
    Image/卡牌/EX1_365.png \
    Image/卡牌/EX1_366.png \
    Image/卡牌/EX1_371.png \
    Image/卡牌/EX1_379.png \
    Image/卡牌/EX1_382.png \
    Image/卡牌/EX1_383.png \
    Image/卡牌/EX1_383t.png \
    Image/卡牌/EX1_384.png \
    Image/卡牌/EX1_390.png \
    Image/卡牌/EX1_391.png \
    Image/卡牌/EX1_392.png \
    Image/卡牌/EX1_393.png \
    Image/卡牌/EX1_396.png \
    Image/卡牌/EX1_398.png \
    Image/卡牌/EX1_398t.png \
    Image/卡牌/EX1_399.png \
    Image/卡牌/EX1_400.png \
    Image/卡牌/EX1_402.png \
    Image/卡牌/EX1_405.png \
    Image/卡牌/EX1_407.png \
    Image/卡牌/EX1_408.png \
    Image/卡牌/EX1_409.png \
    Image/卡牌/EX1_409t.png \
    Image/卡牌/EX1_410.png \
    Image/卡牌/EX1_411.png \
    Image/卡牌/EX1_412.png \
    Image/卡牌/EX1_414.png \
    Image/卡牌/EX1_506.png \
    Image/卡牌/EX1_506a.png \
    Image/卡牌/EX1_507.png \
    Image/卡牌/EX1_508.png \
    Image/卡牌/EX1_509.png \
    Image/卡牌/EX1_522.png \
    Image/卡牌/EX1_531.png \
    Image/卡牌/EX1_533.png \
    Image/卡牌/EX1_534.png \
    Image/卡牌/EX1_534t.png \
    Image/卡牌/EX1_536.png \
    Image/卡牌/EX1_537.png \
    Image/卡牌/EX1_538.png \
    Image/卡牌/EX1_539.png \
    Image/卡牌/EX1_543.png \
    Image/卡牌/EX1_544.png \
    Image/卡牌/EX1_549.png \
    Image/卡牌/EX1_554.png \
    Image/卡牌/EX1_554t.png \
    Image/卡牌/EX1_556.png \
    Image/卡牌/EX1_557.png \
    Image/卡牌/EX1_558.png \
    Image/卡牌/EX1_559.png \
    Image/卡牌/EX1_560.png \
    Image/卡牌/EX1_561.png \
    Image/卡牌/EX1_562.png \
    Image/卡牌/EX1_563.png \
    Image/卡牌/EX1_564.png \
    Image/卡牌/EX1_565.png \
    Image/卡牌/EX1_567.png \
    Image/卡牌/EX1_570.png \
    Image/卡牌/EX1_571.png \
    Image/卡牌/EX1_572.png \
    Image/卡牌/EX1_573.png \
    Image/卡牌/EX1_573a.png \
    Image/卡牌/EX1_573b.png \
    Image/卡牌/EX1_573t.png \
    Image/卡牌/EX1_575.png \
    Image/卡牌/EX1_577.png \
    Image/卡牌/EX1_578.png \
    Image/卡牌/EX1_581.png \
    Image/卡牌/EX1_582.png \
    Image/卡牌/EX1_583.png \
    Image/卡牌/EX1_584.png \
    Image/卡牌/EX1_586.png \
    Image/卡牌/EX1_587.png \
    Image/卡牌/EX1_590.png \
    Image/卡牌/EX1_591.png \
    Image/卡牌/EX1_593.png \
    Image/卡牌/EX1_594.png \
    Image/卡牌/EX1_595.png \
    Image/卡牌/EX1_596.png \
    Image/卡牌/EX1_597.png \
    Image/卡牌/EX1_598.png \
    Image/卡牌/EX1_603.png \
    Image/卡牌/EX1_604.png \
    Image/卡牌/EX1_606.png \
    Image/卡牌/EX1_607.png \
    Image/卡牌/EX1_608.png \
    Image/卡牌/EX1_609.png \
    Image/卡牌/EX1_610.png \
    Image/卡牌/EX1_611.png \
    Image/卡牌/EX1_612.png \
    Image/卡牌/EX1_613.png \
    Image/卡牌/EX1_614.png \
    Image/卡牌/EX1_614t.png \
    Image/卡牌/EX1_616.png \
    Image/卡牌/EX1_617.png \
    Image/卡牌/EX1_619.png \
    Image/卡牌/EX1_620.png \
    Image/卡牌/EX1_621.png \
    Image/卡牌/EX1_622.png \
    Image/卡牌/EX1_623.png \
    Image/卡牌/EX1_624.png \
    Image/卡牌/EX1_625.png \
    Image/卡牌/EX1_625t.png \
    Image/卡牌/EX1_625t2.png \
    Image/卡牌/EX1_626.png \
    Image/卡牌/EX1_finkle.png \
    Image/卡牌/EX1_tk11.png \
    Image/卡牌/EX1_tk28.png \
    Image/卡牌/EX1_tk29.png \
    Image/卡牌/EX1_tk33.png \
    Image/卡牌/EX1_tk34.png \
    Image/卡牌/EX1_tk9.png \
    Image/卡牌/GAME_002.png \
    Image/卡牌/GAME_005.png \
    Image/卡牌/GAME_006.png \
    Image/卡牌/hexfrog.png \
    Image/卡牌/Mekka1.png \
    Image/卡牌/Mekka2.png \
    Image/卡牌/Mekka3.png \
    Image/卡牌/Mekka4.png \
    Image/卡牌/Mekka4t.png \
    Image/卡牌/NEW1_003.png \
    Image/卡牌/NEW1_004.png \
    Image/卡牌/NEW1_005.png \
    Image/卡牌/NEW1_007.png \
    Image/卡牌/NEW1_007a.png \
    Image/卡牌/NEW1_007b.png \
    Image/卡牌/NEW1_008.png \
    Image/卡牌/NEW1_008a.png \
    Image/卡牌/NEW1_008b.png \
    Image/卡牌/NEW1_009.png \
    Image/卡牌/NEW1_010.png \
    Image/卡牌/NEW1_011.png \
    Image/卡牌/NEW1_012.png \
    Image/卡牌/NEW1_014.png \
    Image/卡牌/NEW1_016.png \
    Image/卡牌/NEW1_017.png \
    Image/卡牌/NEW1_018.png \
    Image/卡牌/NEW1_019.png \
    Image/卡牌/NEW1_020.png \
    Image/卡牌/NEW1_021.png \
    Image/卡牌/NEW1_022.png \
    Image/卡牌/NEW1_023.png \
    Image/卡牌/NEW1_024.png \
    Image/卡牌/NEW1_025.png \
    Image/卡牌/NEW1_026.png \
    Image/卡牌/NEW1_026t.png \
    Image/卡牌/NEW1_027.png \
    Image/卡牌/NEW1_029.png \
    Image/卡牌/NEW1_030.png \
    Image/卡牌/NEW1_031.png \
    Image/卡牌/NEW1_032.png \
    Image/卡牌/NEW1_033.png \
    Image/卡牌/NEW1_034.png \
    Image/卡牌/NEW1_036.png \
    Image/卡牌/NEW1_037.png \
    Image/卡牌/NEW1_038.png \
    Image/卡牌/NEW1_040.png \
    Image/卡牌/NEW1_040t.png \
    Image/卡牌/NEW1_041.png \
    Image/卡牌/skele11.png \
    Image/卡牌/skele21.png \
    Image/卡牌/tt_004.png \
    Image/卡牌/tt_010.png \
    Image/卡牌/tt_010a.png \
    Image/卡牌/TU4a_001.png \
    Image/卡牌/TU4a_002.png \
    Image/卡牌/TU4a_003.png \
    Image/卡牌/TU4a_004.png \
    Image/卡牌/TU4a_005.png \
    Image/卡牌/TU4a_006.png \
    Image/卡牌/TU4b_001.png \
    Image/卡牌/TU4c_001.png \
    Image/卡牌/TU4c_002.png \
    Image/卡牌/TU4c_003.png \
    Image/卡牌/TU4c_004.png \
    Image/卡牌/TU4c_005.png \
    Image/卡牌/TU4c_006.png \
    Image/卡牌/TU4c_007.png \
    Image/卡牌/TU4c_008.png \
    Image/卡牌/TU4d_001.png \
    Image/卡牌/TU4d_002.png \
    Image/卡牌/TU4d_003.png \
    Image/卡牌/TU4e_001.png \
    Image/卡牌/TU4e_002.png \
    Image/卡牌/TU4e_002t.png \
    Image/卡牌/TU4e_003.png \
    Image/卡牌/TU4e_004.png \
    Image/卡牌/TU4e_005.png \
    Image/卡牌/TU4e_006.png \
    Image/卡牌/TU4e_007.png \
    Image/卡牌/TU4f_001.png \
    Image/卡牌/TU4f_002.png \
    Image/卡牌/TU4f_003.png \
    Image/卡牌/TU4f_004.png \
    Image/卡牌/TU4f_005.png \
    Image/卡牌/TU4f_006.png \
    Image/卡牌/TU4f_007.png \
    Image/1.png \
    Image/2.png \
    Image/3.png \
    Image/4.png \
    Image/UI/158f3940.psd \
    Image/UI/模式1.psd \
    Image/9秒社团.txt \
    Image/UI/endturn.png

HEADERS += \
    mana.h \
    card.h \
    definition.h \
    player.h \
    wrapper.h \
    minion.h
