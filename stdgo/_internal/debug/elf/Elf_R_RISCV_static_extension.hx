package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_RISCV_asInterface) class R_RISCV_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_R_RISCV.R_RISCV):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_RISCV.R_RISCV = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rriscvStrings._rriscvStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_R_RISCV.R_RISCV):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_RISCV.R_RISCV = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rriscvStrings._rriscvStrings, false)?.__copy__();
    }
}
