package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_PPC_asInterface) class R_PPC_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_r_ppc.R_PPC):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_ppc.R_PPC = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rppcstrings._rppcStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_r_ppc.R_PPC):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_ppc.R_PPC = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rppcstrings._rppcStrings, false)?.__copy__();
    }
}
