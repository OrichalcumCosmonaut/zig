//! This file is auto-generated by tools/update_cpu_features.zig.

const std = @import("../std.zig");
const CpuFeature = std.Target.Cpu.Feature;
const CpuModel = std.Target.Cpu.Model;

pub const Feature = enum {
    @"64bit",
    @"64bitregs",
    aix,
    aix_shared_lib_tls_model_opt,
    aix_small_local_dynamic_tls,
    aix_small_local_exec_tls,
    allow_unaligned_fp_access,
    altivec,
    booke,
    bpermd,
    cmpb,
    crbits,
    crypto,
    direct_move,
    e500,
    efpu2,
    extdiv,
    fast_MFLR,
    fcpsgn,
    float128,
    fpcvt,
    fprnd,
    fpu,
    fre,
    fres,
    frsqrte,
    frsqrtes,
    fsqrt,
    fuse_add_logical,
    fuse_addi_load,
    fuse_addis_load,
    fuse_arith_add,
    fuse_back2back,
    fuse_cmp,
    fuse_logical,
    fuse_logical_add,
    fuse_sha3,
    fuse_store,
    fuse_wideimm,
    fuse_zeromove,
    fusion,
    hard_float,
    htm,
    icbt,
    invariant_function_descriptors,
    isa_future_instructions,
    isa_v206_instructions,
    isa_v207_instructions,
    isa_v30_instructions,
    isa_v31_instructions,
    isel,
    ldbrx,
    lfiwax,
    longcall,
    mfocrf,
    mma,
    modern_aix_as,
    msync,
    paired_vector_memops,
    partword_atomics,
    pcrelative_memops,
    popcntd,
    power10_vector,
    power8_altivec,
    power8_vector,
    power9_altivec,
    power9_vector,
    ppc4xx,
    ppc6xx,
    ppc_postra_sched,
    ppc_prera_sched,
    predictable_select_expensive,
    prefix_instrs,
    privileged,
    quadword_atomics,
    recipprec,
    rop_protect,
    secure_plt,
    slow_popcntd,
    spe,
    stfiwx,
    two_const_nr,
    vectors_use_two_units,
    vsx,
};

pub const featureSet = CpuFeature.FeatureSetFns(Feature).featureSet;
pub const featureSetHas = CpuFeature.FeatureSetFns(Feature).featureSetHas;
pub const featureSetHasAny = CpuFeature.FeatureSetFns(Feature).featureSetHasAny;
pub const featureSetHasAll = CpuFeature.FeatureSetFns(Feature).featureSetHasAll;

pub const all_features = blk: {
    const len = @typeInfo(Feature).@"enum".fields.len;
    std.debug.assert(len <= CpuFeature.Set.needed_bit_count);
    var result: [len]CpuFeature = undefined;
    result[@intFromEnum(Feature.@"64bit")] = .{
        .llvm_name = "64bit",
        .description = "Enable 64-bit instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.@"64bitregs")] = .{
        .llvm_name = "64bitregs",
        .description = "Enable 64-bit registers usage for ppc32 [beta]",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.aix)] = .{
        .llvm_name = "aix",
        .description = "AIX OS",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.aix_shared_lib_tls_model_opt)] = .{
        .llvm_name = "aix-shared-lib-tls-model-opt",
        .description = "Tune TLS model at function level in shared library loaded with the main program (for 64-bit AIX only)",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.aix_small_local_dynamic_tls)] = .{
        .llvm_name = "aix-small-local-dynamic-tls",
        .description = "Produce a faster local-dynamic TLS sequence for this function for 64-bit AIX",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.aix_small_local_exec_tls)] = .{
        .llvm_name = "aix-small-local-exec-tls",
        .description = "Produce a TOC-free local-exec TLS sequence for this function for 64-bit AIX",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.allow_unaligned_fp_access)] = .{
        .llvm_name = "allow-unaligned-fp-access",
        .description = "CPU does not trap on unaligned FP access",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.altivec)] = .{
        .llvm_name = "altivec",
        .description = "Enable Altivec instructions",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.booke)] = .{
        .llvm_name = "booke",
        .description = "Enable Book E instructions",
        .dependencies = featureSet(&[_]Feature{
            .icbt,
        }),
    };
    result[@intFromEnum(Feature.bpermd)] = .{
        .llvm_name = "bpermd",
        .description = "Enable the bpermd instruction",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.cmpb)] = .{
        .llvm_name = "cmpb",
        .description = "Enable the cmpb instruction",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.crbits)] = .{
        .llvm_name = "crbits",
        .description = "Use condition-register bits individually",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.crypto)] = .{
        .llvm_name = "crypto",
        .description = "Enable POWER8 Crypto instructions",
        .dependencies = featureSet(&[_]Feature{
            .power8_altivec,
        }),
    };
    result[@intFromEnum(Feature.direct_move)] = .{
        .llvm_name = "direct-move",
        .description = "Enable Power8 direct move instructions",
        .dependencies = featureSet(&[_]Feature{
            .vsx,
        }),
    };
    result[@intFromEnum(Feature.e500)] = .{
        .llvm_name = "e500",
        .description = "Enable E500/E500mc instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.efpu2)] = .{
        .llvm_name = "efpu2",
        .description = "Enable Embedded Floating-Point APU 2 instructions",
        .dependencies = featureSet(&[_]Feature{
            .spe,
        }),
    };
    result[@intFromEnum(Feature.extdiv)] = .{
        .llvm_name = "extdiv",
        .description = "Enable extended divide instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.fast_MFLR)] = .{
        .llvm_name = "fast-MFLR",
        .description = "MFLR is a fast instruction",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.fcpsgn)] = .{
        .llvm_name = "fcpsgn",
        .description = "Enable the fcpsgn instruction",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.float128)] = .{
        .llvm_name = "float128",
        .description = "Enable the __float128 data type for IEEE-754R Binary128.",
        .dependencies = featureSet(&[_]Feature{
            .vsx,
        }),
    };
    result[@intFromEnum(Feature.fpcvt)] = .{
        .llvm_name = "fpcvt",
        .description = "Enable fc[ft]* (unsigned and single-precision) and lfiwzx instructions",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.fprnd)] = .{
        .llvm_name = "fprnd",
        .description = "Enable the fri[mnpz] instructions",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.fpu)] = .{
        .llvm_name = "fpu",
        .description = "Enable classic FPU instructions",
        .dependencies = featureSet(&[_]Feature{
            .hard_float,
        }),
    };
    result[@intFromEnum(Feature.fre)] = .{
        .llvm_name = "fre",
        .description = "Enable the fre instruction",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.fres)] = .{
        .llvm_name = "fres",
        .description = "Enable the fres instruction",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.frsqrte)] = .{
        .llvm_name = "frsqrte",
        .description = "Enable the frsqrte instruction",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.frsqrtes)] = .{
        .llvm_name = "frsqrtes",
        .description = "Enable the frsqrtes instruction",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.fsqrt)] = .{
        .llvm_name = "fsqrt",
        .description = "Enable the fsqrt instruction",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.fuse_add_logical)] = .{
        .llvm_name = "fuse-add-logical",
        .description = "Target supports Add with Logical Operations fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_addi_load)] = .{
        .llvm_name = "fuse-addi-load",
        .description = "Power8 Addi-Load fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_addis_load)] = .{
        .llvm_name = "fuse-addis-load",
        .description = "Power8 Addis-Load fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_arith_add)] = .{
        .llvm_name = "fuse-arith-add",
        .description = "Target supports Arithmetic Operations with Add fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_back2back)] = .{
        .llvm_name = "fuse-back2back",
        .description = "Target supports general back to back fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_cmp)] = .{
        .llvm_name = "fuse-cmp",
        .description = "Target supports Comparison Operations fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_logical)] = .{
        .llvm_name = "fuse-logical",
        .description = "Target supports Logical Operations fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_logical_add)] = .{
        .llvm_name = "fuse-logical-add",
        .description = "Target supports Logical with Add Operations fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_sha3)] = .{
        .llvm_name = "fuse-sha3",
        .description = "Target supports SHA3 assist fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_store)] = .{
        .llvm_name = "fuse-store",
        .description = "Target supports store clustering",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_wideimm)] = .{
        .llvm_name = "fuse-wideimm",
        .description = "Target supports Wide-Immediate fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fuse_zeromove)] = .{
        .llvm_name = "fuse-zeromove",
        .description = "Target supports move to SPR with branch fusion",
        .dependencies = featureSet(&[_]Feature{
            .fusion,
        }),
    };
    result[@intFromEnum(Feature.fusion)] = .{
        .llvm_name = "fusion",
        .description = "Target supports instruction fusion",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.hard_float)] = .{
        .llvm_name = "hard-float",
        .description = "Enable floating-point instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.htm)] = .{
        .llvm_name = "htm",
        .description = "Enable Hardware Transactional Memory instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.icbt)] = .{
        .llvm_name = "icbt",
        .description = "Enable icbt instruction",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.invariant_function_descriptors)] = .{
        .llvm_name = "invariant-function-descriptors",
        .description = "Assume function descriptors are invariant",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.isa_future_instructions)] = .{
        .llvm_name = "isa-future-instructions",
        .description = "Enable instructions for Future ISA.",
        .dependencies = featureSet(&[_]Feature{
            .isa_v31_instructions,
        }),
    };
    result[@intFromEnum(Feature.isa_v206_instructions)] = .{
        .llvm_name = "isa-v206-instructions",
        .description = "Enable instructions in ISA 2.06.",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.isa_v207_instructions)] = .{
        .llvm_name = "isa-v207-instructions",
        .description = "Enable instructions in ISA 2.07.",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.isa_v30_instructions)] = .{
        .llvm_name = "isa-v30-instructions",
        .description = "Enable instructions in ISA 3.0.",
        .dependencies = featureSet(&[_]Feature{
            .isa_v207_instructions,
        }),
    };
    result[@intFromEnum(Feature.isa_v31_instructions)] = .{
        .llvm_name = "isa-v31-instructions",
        .description = "Enable instructions in ISA 3.1.",
        .dependencies = featureSet(&[_]Feature{
            .isa_v30_instructions,
        }),
    };
    result[@intFromEnum(Feature.isel)] = .{
        .llvm_name = "isel",
        .description = "Enable the isel instruction",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ldbrx)] = .{
        .llvm_name = "ldbrx",
        .description = "Enable the ldbrx instruction",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.lfiwax)] = .{
        .llvm_name = "lfiwax",
        .description = "Enable the lfiwax instruction",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.longcall)] = .{
        .llvm_name = "longcall",
        .description = "Always use indirect calls",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.mfocrf)] = .{
        .llvm_name = "mfocrf",
        .description = "Enable the MFOCRF instruction",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.mma)] = .{
        .llvm_name = "mma",
        .description = "Enable MMA instructions",
        .dependencies = featureSet(&[_]Feature{
            .paired_vector_memops,
            .power8_vector,
            .power9_altivec,
        }),
    };
    result[@intFromEnum(Feature.modern_aix_as)] = .{
        .llvm_name = "modern-aix-as",
        .description = "AIX system assembler is modern enough to support new mnes",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.msync)] = .{
        .llvm_name = "msync",
        .description = "Has only the msync instruction instead of sync",
        .dependencies = featureSet(&[_]Feature{
            .booke,
        }),
    };
    result[@intFromEnum(Feature.paired_vector_memops)] = .{
        .llvm_name = "paired-vector-memops",
        .description = "32Byte load and store instructions",
        .dependencies = featureSet(&[_]Feature{
            .isa_v30_instructions,
        }),
    };
    result[@intFromEnum(Feature.partword_atomics)] = .{
        .llvm_name = "partword-atomics",
        .description = "Enable l[bh]arx and st[bh]cx.",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.pcrelative_memops)] = .{
        .llvm_name = "pcrelative-memops",
        .description = "Enable PC relative Memory Ops",
        .dependencies = featureSet(&[_]Feature{
            .prefix_instrs,
        }),
    };
    result[@intFromEnum(Feature.popcntd)] = .{
        .llvm_name = "popcntd",
        .description = "Enable the popcnt[dw] instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.power10_vector)] = .{
        .llvm_name = "power10-vector",
        .description = "Enable POWER10 vector instructions",
        .dependencies = featureSet(&[_]Feature{
            .isa_v31_instructions,
            .power9_vector,
        }),
    };
    result[@intFromEnum(Feature.power8_altivec)] = .{
        .llvm_name = "power8-altivec",
        .description = "Enable POWER8 Altivec instructions",
        .dependencies = featureSet(&[_]Feature{
            .altivec,
        }),
    };
    result[@intFromEnum(Feature.power8_vector)] = .{
        .llvm_name = "power8-vector",
        .description = "Enable POWER8 vector instructions",
        .dependencies = featureSet(&[_]Feature{
            .power8_altivec,
            .vsx,
        }),
    };
    result[@intFromEnum(Feature.power9_altivec)] = .{
        .llvm_name = "power9-altivec",
        .description = "Enable POWER9 Altivec instructions",
        .dependencies = featureSet(&[_]Feature{
            .isa_v30_instructions,
            .power8_altivec,
        }),
    };
    result[@intFromEnum(Feature.power9_vector)] = .{
        .llvm_name = "power9-vector",
        .description = "Enable POWER9 vector instructions",
        .dependencies = featureSet(&[_]Feature{
            .power8_vector,
            .power9_altivec,
        }),
    };
    result[@intFromEnum(Feature.ppc4xx)] = .{
        .llvm_name = "ppc4xx",
        .description = "Enable PPC 4xx instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ppc6xx)] = .{
        .llvm_name = "ppc6xx",
        .description = "Enable PPC 6xx instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ppc_postra_sched)] = .{
        .llvm_name = "ppc-postra-sched",
        .description = "Use PowerPC post-RA scheduling strategy",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.ppc_prera_sched)] = .{
        .llvm_name = "ppc-prera-sched",
        .description = "Use PowerPC pre-RA scheduling strategy",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.predictable_select_expensive)] = .{
        .llvm_name = "predictable-select-expensive",
        .description = "Prefer likely predicted branches over selects",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.prefix_instrs)] = .{
        .llvm_name = "prefix-instrs",
        .description = "Enable prefixed instructions",
        .dependencies = featureSet(&[_]Feature{
            .isa_v31_instructions,
        }),
    };
    result[@intFromEnum(Feature.privileged)] = .{
        .llvm_name = "privileged",
        .description = "Add privileged instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.quadword_atomics)] = .{
        .llvm_name = "quadword-atomics",
        .description = "Enable lqarx and stqcx.",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.recipprec)] = .{
        .llvm_name = "recipprec",
        .description = "Assume higher precision reciprocal estimates",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.rop_protect)] = .{
        .llvm_name = "rop-protect",
        .description = "Add ROP protect",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.secure_plt)] = .{
        .llvm_name = "secure-plt",
        .description = "Enable secure plt mode",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.slow_popcntd)] = .{
        .llvm_name = "slow-popcntd",
        .description = "Has slow popcnt[dw] instructions",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.spe)] = .{
        .llvm_name = "spe",
        .description = "Enable SPE instructions",
        .dependencies = featureSet(&[_]Feature{
            .hard_float,
        }),
    };
    result[@intFromEnum(Feature.stfiwx)] = .{
        .llvm_name = "stfiwx",
        .description = "Enable the stfiwx instruction",
        .dependencies = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    result[@intFromEnum(Feature.two_const_nr)] = .{
        .llvm_name = "two-const-nr",
        .description = "Requires two constant Newton-Raphson computation",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.vectors_use_two_units)] = .{
        .llvm_name = "vectors-use-two-units",
        .description = "Vectors use two units",
        .dependencies = featureSet(&[_]Feature{}),
    };
    result[@intFromEnum(Feature.vsx)] = .{
        .llvm_name = "vsx",
        .description = "Enable VSX instructions",
        .dependencies = featureSet(&[_]Feature{
            .altivec,
        }),
    };
    const ti = @typeInfo(Feature);
    for (&result, 0..) |*elem, i| {
        elem.index = i;
        elem.name = ti.@"enum".fields[i].name;
    }
    break :blk result;
};

pub const cpu = struct {
    pub const @"440" = CpuModel{
        .name = "440",
        .llvm_name = "440",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
            .isel,
            .msync,
        }),
    };
    pub const @"450" = CpuModel{
        .name = "450",
        .llvm_name = "450",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
            .isel,
            .msync,
        }),
    };
    pub const @"601" = CpuModel{
        .name = "601",
        .llvm_name = "601",
        .features = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    pub const @"602" = CpuModel{
        .name = "602",
        .llvm_name = "602",
        .features = featureSet(&[_]Feature{
            .fpu,
        }),
    };
    pub const @"603" = CpuModel{
        .name = "603",
        .llvm_name = "603",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
        }),
    };
    pub const @"603e" = CpuModel{
        .name = "603e",
        .llvm_name = "603e",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
        }),
    };
    pub const @"603ev" = CpuModel{
        .name = "603ev",
        .llvm_name = "603ev",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
        }),
    };
    pub const @"604" = CpuModel{
        .name = "604",
        .llvm_name = "604",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
        }),
    };
    pub const @"604e" = CpuModel{
        .name = "604e",
        .llvm_name = "604e",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
        }),
    };
    pub const @"620" = CpuModel{
        .name = "620",
        .llvm_name = "620",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
        }),
    };
    pub const @"7400" = CpuModel{
        .name = "7400",
        .llvm_name = "7400",
        .features = featureSet(&[_]Feature{
            .altivec,
            .fres,
            .frsqrte,
        }),
    };
    pub const @"7450" = CpuModel{
        .name = "7450",
        .llvm_name = "7450",
        .features = featureSet(&[_]Feature{
            .altivec,
            .fres,
            .frsqrte,
        }),
    };
    pub const @"750" = CpuModel{
        .name = "750",
        .llvm_name = "750",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
        }),
    };
    pub const @"970" = CpuModel{
        .name = "970",
        .llvm_name = "970",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .altivec,
            .fres,
            .frsqrte,
            .fsqrt,
            .mfocrf,
            .stfiwx,
        }),
    };
    pub const a2 = CpuModel{
        .name = "a2",
        .llvm_name = "a2",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .booke,
            .cmpb,
            .fcpsgn,
            .fpcvt,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .isa_v206_instructions,
            .isel,
            .ldbrx,
            .lfiwax,
            .mfocrf,
            .recipprec,
            .slow_popcntd,
            .stfiwx,
        }),
    };
    pub const e500 = CpuModel{
        .name = "e500",
        .llvm_name = "e500",
        .features = featureSet(&[_]Feature{
            .isel,
            .msync,
            .spe,
        }),
    };
    pub const e500mc = CpuModel{
        .name = "e500mc",
        .llvm_name = "e500mc",
        .features = featureSet(&[_]Feature{
            .booke,
            .isel,
            .stfiwx,
        }),
    };
    pub const e5500 = CpuModel{
        .name = "e5500",
        .llvm_name = "e5500",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .booke,
            .isel,
            .mfocrf,
            .stfiwx,
        }),
    };
    pub const future = CpuModel{
        .name = "future",
        .llvm_name = "future",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .allow_unaligned_fp_access,
            .bpermd,
            .cmpb,
            .crbits,
            .crypto,
            .direct_move,
            .extdiv,
            .fast_MFLR,
            .fcpsgn,
            .fpcvt,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .fuse_add_logical,
            .fuse_arith_add,
            .fuse_logical,
            .fuse_logical_add,
            .fuse_sha3,
            .fuse_store,
            .htm,
            .icbt,
            .isa_future_instructions,
            .isa_v206_instructions,
            .isel,
            .ldbrx,
            .lfiwax,
            .mfocrf,
            .mma,
            .partword_atomics,
            .pcrelative_memops,
            .popcntd,
            .power10_vector,
            .ppc_postra_sched,
            .ppc_prera_sched,
            .predictable_select_expensive,
            .quadword_atomics,
            .recipprec,
            .stfiwx,
            .two_const_nr,
        }),
    };
    pub const g3 = CpuModel{
        .name = "g3",
        .llvm_name = "g3",
        .features = featureSet(&[_]Feature{
            .fres,
            .frsqrte,
        }),
    };
    pub const g4 = CpuModel{
        .name = "g4",
        .llvm_name = "g4",
        .features = featureSet(&[_]Feature{
            .altivec,
            .fres,
            .frsqrte,
        }),
    };
    pub const @"g4+" = CpuModel{
        .name = "g4+",
        .llvm_name = "g4+",
        .features = featureSet(&[_]Feature{
            .altivec,
            .fres,
            .frsqrte,
        }),
    };
    pub const g5 = CpuModel{
        .name = "g5",
        .llvm_name = "g5",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .altivec,
            .fres,
            .frsqrte,
            .fsqrt,
            .mfocrf,
            .stfiwx,
        }),
    };
    pub const generic = CpuModel{
        .name = "generic",
        .llvm_name = "generic",
        .features = featureSet(&[_]Feature{
            .hard_float,
        }),
    };
    pub const ppc = CpuModel{
        .name = "ppc",
        .llvm_name = "ppc",
        .features = featureSet(&[_]Feature{
            .hard_float,
        }),
    };
    pub const ppc64 = CpuModel{
        .name = "ppc64",
        .llvm_name = "ppc64",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .altivec,
            .fres,
            .frsqrte,
            .fsqrt,
            .mfocrf,
            .stfiwx,
        }),
    };
    pub const ppc64le = CpuModel{
        .name = "ppc64le",
        .llvm_name = "ppc64le",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .allow_unaligned_fp_access,
            .bpermd,
            .cmpb,
            .crbits,
            .crypto,
            .direct_move,
            .extdiv,
            .fcpsgn,
            .fpcvt,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .fuse_addi_load,
            .fuse_addis_load,
            .htm,
            .icbt,
            .isa_v206_instructions,
            .isa_v207_instructions,
            .isel,
            .ldbrx,
            .lfiwax,
            .mfocrf,
            .partword_atomics,
            .popcntd,
            .power8_vector,
            .predictable_select_expensive,
            .quadword_atomics,
            .recipprec,
            .stfiwx,
            .two_const_nr,
        }),
    };
    pub const pwr10 = CpuModel{
        .name = "pwr10",
        .llvm_name = "pwr10",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .allow_unaligned_fp_access,
            .bpermd,
            .cmpb,
            .crbits,
            .crypto,
            .direct_move,
            .extdiv,
            .fast_MFLR,
            .fcpsgn,
            .fpcvt,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .fuse_add_logical,
            .fuse_arith_add,
            .fuse_logical,
            .fuse_logical_add,
            .fuse_sha3,
            .fuse_store,
            .htm,
            .icbt,
            .isa_v206_instructions,
            .isel,
            .ldbrx,
            .lfiwax,
            .mfocrf,
            .mma,
            .partword_atomics,
            .pcrelative_memops,
            .popcntd,
            .power10_vector,
            .ppc_postra_sched,
            .ppc_prera_sched,
            .predictable_select_expensive,
            .quadword_atomics,
            .recipprec,
            .stfiwx,
            .two_const_nr,
        }),
    };
    pub const pwr11 = CpuModel{
        .name = "pwr11",
        .llvm_name = "pwr11",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .allow_unaligned_fp_access,
            .bpermd,
            .cmpb,
            .crbits,
            .crypto,
            .direct_move,
            .extdiv,
            .fast_MFLR,
            .fcpsgn,
            .fpcvt,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .fuse_add_logical,
            .fuse_arith_add,
            .fuse_logical,
            .fuse_logical_add,
            .fuse_sha3,
            .fuse_store,
            .htm,
            .icbt,
            .isa_v206_instructions,
            .isel,
            .ldbrx,
            .lfiwax,
            .mfocrf,
            .mma,
            .partword_atomics,
            .pcrelative_memops,
            .popcntd,
            .power10_vector,
            .ppc_postra_sched,
            .ppc_prera_sched,
            .predictable_select_expensive,
            .quadword_atomics,
            .recipprec,
            .stfiwx,
            .two_const_nr,
        }),
    };
    pub const pwr3 = CpuModel{
        .name = "pwr3",
        .llvm_name = "pwr3",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .altivec,
            .fres,
            .frsqrte,
            .mfocrf,
            .stfiwx,
        }),
    };
    pub const pwr4 = CpuModel{
        .name = "pwr4",
        .llvm_name = "pwr4",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .altivec,
            .fres,
            .frsqrte,
            .fsqrt,
            .mfocrf,
            .stfiwx,
        }),
    };
    pub const pwr5 = CpuModel{
        .name = "pwr5",
        .llvm_name = "pwr5",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .altivec,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .mfocrf,
            .stfiwx,
        }),
    };
    pub const pwr5x = CpuModel{
        .name = "pwr5x",
        .llvm_name = "pwr5x",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .altivec,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .mfocrf,
            .stfiwx,
        }),
    };
    pub const pwr6 = CpuModel{
        .name = "pwr6",
        .llvm_name = "pwr6",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .altivec,
            .cmpb,
            .fcpsgn,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .lfiwax,
            .mfocrf,
            .recipprec,
            .stfiwx,
        }),
    };
    pub const pwr6x = CpuModel{
        .name = "pwr6x",
        .llvm_name = "pwr6x",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .altivec,
            .cmpb,
            .fcpsgn,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .lfiwax,
            .mfocrf,
            .recipprec,
            .stfiwx,
        }),
    };
    pub const pwr7 = CpuModel{
        .name = "pwr7",
        .llvm_name = "pwr7",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .allow_unaligned_fp_access,
            .bpermd,
            .cmpb,
            .extdiv,
            .fcpsgn,
            .fpcvt,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .isa_v206_instructions,
            .isel,
            .ldbrx,
            .lfiwax,
            .mfocrf,
            .popcntd,
            .recipprec,
            .stfiwx,
            .two_const_nr,
            .vsx,
        }),
    };
    pub const pwr8 = CpuModel{
        .name = "pwr8",
        .llvm_name = "pwr8",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .allow_unaligned_fp_access,
            .bpermd,
            .cmpb,
            .crbits,
            .crypto,
            .direct_move,
            .extdiv,
            .fcpsgn,
            .fpcvt,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .fuse_addi_load,
            .fuse_addis_load,
            .htm,
            .icbt,
            .isa_v206_instructions,
            .isa_v207_instructions,
            .isel,
            .ldbrx,
            .lfiwax,
            .mfocrf,
            .partword_atomics,
            .popcntd,
            .power8_vector,
            .predictable_select_expensive,
            .quadword_atomics,
            .recipprec,
            .stfiwx,
            .two_const_nr,
        }),
    };
    pub const pwr9 = CpuModel{
        .name = "pwr9",
        .llvm_name = "pwr9",
        .features = featureSet(&[_]Feature{
            .@"64bit",
            .allow_unaligned_fp_access,
            .bpermd,
            .cmpb,
            .crbits,
            .crypto,
            .direct_move,
            .extdiv,
            .fcpsgn,
            .fpcvt,
            .fprnd,
            .fre,
            .fres,
            .frsqrte,
            .frsqrtes,
            .fsqrt,
            .htm,
            .icbt,
            .isa_v206_instructions,
            .isel,
            .ldbrx,
            .lfiwax,
            .mfocrf,
            .partword_atomics,
            .popcntd,
            .power9_vector,
            .ppc_postra_sched,
            .ppc_prera_sched,
            .predictable_select_expensive,
            .quadword_atomics,
            .recipprec,
            .stfiwx,
            .two_const_nr,
            .vectors_use_two_units,
        }),
    };
};
