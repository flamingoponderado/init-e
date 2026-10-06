import InitE.BackendStages.AllocChunk240_255
import InitE.BackendStages.Removed240
import InitE.BackendStages.Removed241
import InitE.BackendStages.Removed242
import InitE.BackendStages.Removed243
import InitE.BackendStages.Removed244
import InitE.BackendStages.Removed245
import InitE.BackendStages.Removed246
import InitE.BackendStages.Removed247
import InitE.BackendStages.Removed248
import InitE.BackendStages.Removed249
import InitE.BackendStages.Removed250
import InitE.BackendStages.Removed251
import InitE.BackendStages.Removed252
import InitE.BackendStages.Removed253
import InitE.BackendStages.Removed254
import InitE.BackendStages.Removed255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk240_255
def bodies : List (Nat × StackLang.HolProg 64) := [Removed240, Removed241, Removed242, Removed243, Removed244, Removed245, Removed246, Removed247, Removed248, Removed249, Removed250, Removed251, Removed252, Removed253, Removed254, Removed255]
theorem compiled_eq : AllocChunk240_255.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc240, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc241, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc242, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc243, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc244, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc245, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc246, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc247, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc248, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc249, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc250, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc251, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc252, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc253, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc254, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc255] = bodies
  rw [Removed240_eq, Removed241_eq, Removed242_eq, Removed243_eq, Removed244_eq, Removed245_eq, Removed246_eq, Removed247_eq, Removed248_eq, Removed249_eq, Removed250_eq, Removed251_eq, Removed252_eq, Removed253_eq, Removed254_eq, Removed255_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk240_255
