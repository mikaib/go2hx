package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SymVis_asInterface) class SymVis_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_SymVis.SymVis):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SymVis.SymVis = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__stvStrings._stvStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_SymVis.SymVis):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SymVis.SymVis = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__stvStrings._stvStrings, false)?.__copy__();
    }
}
