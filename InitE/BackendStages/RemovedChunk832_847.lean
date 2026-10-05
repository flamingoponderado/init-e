import InitE.BackendStages.AllocChunk832_847
import InitE.BackendStages.Removed832
import InitE.BackendStages.Removed833
import InitE.BackendStages.Removed834
import InitE.BackendStages.Removed835
import InitE.BackendStages.Removed836
import InitE.BackendStages.Removed837
import InitE.BackendStages.Removed838
import InitE.BackendStages.Removed839
import InitE.BackendStages.Removed840
import InitE.BackendStages.Removed841
import InitE.BackendStages.Removed842
import InitE.BackendStages.Removed843
import InitE.BackendStages.Removed844
import InitE.BackendStages.Removed845
import InitE.BackendStages.Removed846
import InitE.BackendStages.Removed847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk832_847
def bodies : List (Nat × StackLang.HolProg 64) := [Removed832, Removed833, Removed834, Removed835, Removed836, Removed837, Removed838, Removed839, Removed840, Removed841, Removed842, Removed843, Removed844, Removed845, Removed846, Removed847]
theorem compiled_eq : AllocChunk832_847.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc832, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc833, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc834, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc835, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc836, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc837, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc838, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc839, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc840, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc841, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc842, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc843, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc844, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc845, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc846, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc847] = bodies
  rw [Removed832_eq, Removed833_eq, Removed834_eq, Removed835_eq, Removed836_eq, Removed837_eq, Removed838_eq, Removed839_eq, Removed840_eq, Removed841_eq, Removed842_eq, Removed843_eq, Removed844_eq, Removed845_eq, Removed846_eq, Removed847_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk832_847
