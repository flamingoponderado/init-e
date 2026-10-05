import InitE.BackendStages.AllocChunk256_271
import InitE.BackendStages.Removed256
import InitE.BackendStages.Removed257
import InitE.BackendStages.Removed258
import InitE.BackendStages.Removed259
import InitE.BackendStages.Removed260
import InitE.BackendStages.Removed261
import InitE.BackendStages.Removed262
import InitE.BackendStages.Removed263
import InitE.BackendStages.Removed264
import InitE.BackendStages.Removed265
import InitE.BackendStages.Removed266
import InitE.BackendStages.Removed267
import InitE.BackendStages.Removed268
import InitE.BackendStages.Removed269
import InitE.BackendStages.Removed270
import InitE.BackendStages.Removed271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk256_271
def bodies : List (Nat × StackLang.HolProg 64) := [Removed256, Removed257, Removed258, Removed259, Removed260, Removed261, Removed262, Removed263, Removed264, Removed265, Removed266, Removed267, Removed268, Removed269, Removed270, Removed271]
theorem compiled_eq : AllocChunk256_271.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc256, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc257, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc258, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc259, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc260, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc261, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc262, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc263, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc264, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc265, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc266, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc267, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc268, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc269, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc270, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc271] = bodies
  rw [Removed256_eq, Removed257_eq, Removed258_eq, Removed259_eq, Removed260_eq, Removed261_eq, Removed262_eq, Removed263_eq, Removed264_eq, Removed265_eq, Removed266_eq, Removed267_eq, Removed268_eq, Removed269_eq, Removed270_eq, Removed271_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk256_271
