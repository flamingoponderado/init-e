import InitE.BackendStages.AllocChunk384_399
import InitE.BackendStages.Removed384
import InitE.BackendStages.Removed385
import InitE.BackendStages.Removed386
import InitE.BackendStages.Removed387
import InitE.BackendStages.Removed388
import InitE.BackendStages.Removed389
import InitE.BackendStages.Removed390
import InitE.BackendStages.Removed391
import InitE.BackendStages.Removed392
import InitE.BackendStages.Removed393
import InitE.BackendStages.Removed394
import InitE.BackendStages.Removed395
import InitE.BackendStages.Removed396
import InitE.BackendStages.Removed397
import InitE.BackendStages.Removed398
import InitE.BackendStages.Removed399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk384_399
def bodies : List (Nat × StackLang.HolProg 64) := [Removed384, Removed385, Removed386, Removed387, Removed388, Removed389, Removed390, Removed391, Removed392, Removed393, Removed394, Removed395, Removed396, Removed397, Removed398, Removed399]
theorem compiled_eq : AllocChunk384_399.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc384, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc385, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc386, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc387, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc388, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc389, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc390, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc391, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc392, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc393, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc394, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc395, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc396, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc397, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc398, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc399] = bodies
  rw [Removed384_eq, Removed385_eq, Removed386_eq, Removed387_eq, Removed388_eq, Removed389_eq, Removed390_eq, Removed391_eq, Removed392_eq, Removed393_eq, Removed394_eq, Removed395_eq, Removed396_eq, Removed397_eq, Removed398_eq, Removed399_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk384_399
