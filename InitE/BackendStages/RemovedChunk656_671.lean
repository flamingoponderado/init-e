import InitE.BackendStages.AllocChunk656_671
import InitE.BackendStages.Removed656
import InitE.BackendStages.Removed657
import InitE.BackendStages.Removed658
import InitE.BackendStages.Removed659
import InitE.BackendStages.Removed660
import InitE.BackendStages.Removed661
import InitE.BackendStages.Removed662
import InitE.BackendStages.Removed663
import InitE.BackendStages.Removed664
import InitE.BackendStages.Removed665
import InitE.BackendStages.Removed666
import InitE.BackendStages.Removed667
import InitE.BackendStages.Removed668
import InitE.BackendStages.Removed669
import InitE.BackendStages.Removed670
import InitE.BackendStages.Removed671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk656_671
def bodies : List (Nat × StackLang.HolProg 64) := [Removed656, Removed657, Removed658, Removed659, Removed660, Removed661, Removed662, Removed663, Removed664, Removed665, Removed666, Removed667, Removed668, Removed669, Removed670, Removed671]
theorem compiled_eq : AllocChunk656_671.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc656, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc657, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc658, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc659, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc660, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc661, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc662, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc663, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc664, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc665, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc666, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc667, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc668, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc669, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc670, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc671] = bodies
  rw [Removed656_eq, Removed657_eq, Removed658_eq, Removed659_eq, Removed660_eq, Removed661_eq, Removed662_eq, Removed663_eq, Removed664_eq, Removed665_eq, Removed666_eq, Removed667_eq, Removed668_eq, Removed669_eq, Removed670_eq, Removed671_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk656_671
