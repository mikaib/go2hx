package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_390_asInterface) class R_390_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_R_390.R_390):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_390.R_390 = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__r390Strings._r390Strings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_R_390.R_390):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_390.R_390 = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__r390Strings._r390Strings, false)?.__copy__();
    }
}
