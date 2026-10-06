import InitE.BackendStages.AllocChunk784_799
import InitE.BackendStages.Removed784
import InitE.BackendStages.Removed785
import InitE.BackendStages.Removed786
import InitE.BackendStages.Removed787
import InitE.BackendStages.Removed788
import InitE.BackendStages.Removed789
import InitE.BackendStages.Removed790
import InitE.BackendStages.Removed791
import InitE.BackendStages.Removed792
import InitE.BackendStages.Removed793
import InitE.BackendStages.Removed794
import InitE.BackendStages.Removed795
import InitE.BackendStages.Removed796
import InitE.BackendStages.Removed797
import InitE.BackendStages.Removed798
import InitE.BackendStages.Removed799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk784_799
def bodies : List (Nat × StackLang.HolProg 64) := [Removed784, Removed785, Removed786, Removed787, Removed788, Removed789, Removed790, Removed791, Removed792, Removed793, Removed794, Removed795, Removed796, Removed797, Removed798, Removed799]
theorem compiled_eq : AllocChunk784_799.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc784, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc785, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc786, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc787, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc788, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc789, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc790, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc791, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc792, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc793, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc794, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc795, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc796, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc797, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc798, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc799] = bodies
  rw [Removed784_eq, Removed785_eq, Removed786_eq, Removed787_eq, Removed788_eq, Removed789_eq, Removed790_eq, Removed791_eq, Removed792_eq, Removed793_eq, Removed794_eq, Removed795_eq, Removed796_eq, Removed797_eq, Removed798_eq, Removed799_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk784_799
