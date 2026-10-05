import InitE.BackendStages.AllocChunk368_383
import InitE.BackendStages.Removed368
import InitE.BackendStages.Removed369
import InitE.BackendStages.Removed370
import InitE.BackendStages.Removed371
import InitE.BackendStages.Removed372
import InitE.BackendStages.Removed373
import InitE.BackendStages.Removed374
import InitE.BackendStages.Removed375
import InitE.BackendStages.Removed376
import InitE.BackendStages.Removed377
import InitE.BackendStages.Removed378
import InitE.BackendStages.Removed379
import InitE.BackendStages.Removed380
import InitE.BackendStages.Removed381
import InitE.BackendStages.Removed382
import InitE.BackendStages.Removed383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk368_383
def bodies : List (Nat × StackLang.HolProg 64) := [Removed368, Removed369, Removed370, Removed371, Removed372, Removed373, Removed374, Removed375, Removed376, Removed377, Removed378, Removed379, Removed380, Removed381, Removed382, Removed383]
theorem compiled_eq : AllocChunk368_383.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc368, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc369, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc370, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc371, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc372, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc373, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc374, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc375, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc376, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc377, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc378, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc379, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc380, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc381, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc382, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc383] = bodies
  rw [Removed368_eq, Removed369_eq, Removed370_eq, Removed371_eq, Removed372_eq, Removed373_eq, Removed374_eq, Removed375_eq, Removed376_eq, Removed377_eq, Removed378_eq, Removed379_eq, Removed380_eq, Removed381_eq, Removed382_eq, Removed383_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk368_383
