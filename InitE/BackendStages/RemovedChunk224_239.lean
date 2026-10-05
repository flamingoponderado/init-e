import InitE.BackendStages.AllocChunk224_239
import InitE.BackendStages.Removed224
import InitE.BackendStages.Removed225
import InitE.BackendStages.Removed226
import InitE.BackendStages.Removed227
import InitE.BackendStages.Removed228
import InitE.BackendStages.Removed229
import InitE.BackendStages.Removed230
import InitE.BackendStages.Removed231
import InitE.BackendStages.Removed232
import InitE.BackendStages.Removed233
import InitE.BackendStages.Removed234
import InitE.BackendStages.Removed235
import InitE.BackendStages.Removed236
import InitE.BackendStages.Removed237
import InitE.BackendStages.Removed238
import InitE.BackendStages.Removed239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk224_239
def bodies : List (Nat × StackLang.HolProg 64) := [Removed224, Removed225, Removed226, Removed227, Removed228, Removed229, Removed230, Removed231, Removed232, Removed233, Removed234, Removed235, Removed236, Removed237, Removed238, Removed239]
theorem compiled_eq : AllocChunk224_239.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc224, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc225, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc226, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc227, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc228, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc229, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc230, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc231, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc232, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc233, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc234, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc235, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc236, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc237, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc238, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc239] = bodies
  rw [Removed224_eq, Removed225_eq, Removed226_eq, Removed227_eq, Removed228_eq, Removed229_eq, Removed230_eq, Removed231_eq, Removed232_eq, Removed233_eq, Removed234_eq, Removed235_eq, Removed236_eq, Removed237_eq, Removed238_eq, Removed239_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk224_239
