import InitE.BackendStages.AllocChunk352_367
import InitE.BackendStages.Removed352
import InitE.BackendStages.Removed353
import InitE.BackendStages.Removed354
import InitE.BackendStages.Removed355
import InitE.BackendStages.Removed356
import InitE.BackendStages.Removed357
import InitE.BackendStages.Removed358
import InitE.BackendStages.Removed359
import InitE.BackendStages.Removed360
import InitE.BackendStages.Removed361
import InitE.BackendStages.Removed362
import InitE.BackendStages.Removed363
import InitE.BackendStages.Removed364
import InitE.BackendStages.Removed365
import InitE.BackendStages.Removed366
import InitE.BackendStages.Removed367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk352_367
def bodies : List (Nat × StackLang.HolProg 64) := [Removed352, Removed353, Removed354, Removed355, Removed356, Removed357, Removed358, Removed359, Removed360, Removed361, Removed362, Removed363, Removed364, Removed365, Removed366, Removed367]
theorem compiled_eq : AllocChunk352_367.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc352, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc353, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc354, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc355, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc356, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc357, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc358, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc359, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc360, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc361, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc362, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc363, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc364, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc365, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc366, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc367] = bodies
  rw [Removed352_eq, Removed353_eq, Removed354_eq, Removed355_eq, Removed356_eq, Removed357_eq, Removed358_eq, Removed359_eq, Removed360_eq, Removed361_eq, Removed362_eq, Removed363_eq, Removed364_eq, Removed365_eq, Removed366_eq, Removed367_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk352_367
