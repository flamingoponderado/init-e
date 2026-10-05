import InitE.BackendStages.AllocChunk720_735
import InitE.BackendStages.Removed720
import InitE.BackendStages.Removed721
import InitE.BackendStages.Removed722
import InitE.BackendStages.Removed723
import InitE.BackendStages.Removed724
import InitE.BackendStages.Removed725
import InitE.BackendStages.Removed726
import InitE.BackendStages.Removed727
import InitE.BackendStages.Removed728
import InitE.BackendStages.Removed729
import InitE.BackendStages.Removed730
import InitE.BackendStages.Removed731
import InitE.BackendStages.Removed732
import InitE.BackendStages.Removed733
import InitE.BackendStages.Removed734
import InitE.BackendStages.Removed735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk720_735
def bodies : List (Nat × StackLang.HolProg 64) := [Removed720, Removed721, Removed722, Removed723, Removed724, Removed725, Removed726, Removed727, Removed728, Removed729, Removed730, Removed731, Removed732, Removed733, Removed734, Removed735]
theorem compiled_eq : AllocChunk720_735.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc720, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc721, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc722, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc723, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc724, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc725, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc726, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc727, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc728, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc729, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc730, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc731, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc732, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc733, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc734, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc735] = bodies
  rw [Removed720_eq, Removed721_eq, Removed722_eq, Removed723_eq, Removed724_eq, Removed725_eq, Removed726_eq, Removed727_eq, Removed728_eq, Removed729_eq, Removed730_eq, Removed731_eq, Removed732_eq, Removed733_eq, Removed734_eq, Removed735_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk720_735
