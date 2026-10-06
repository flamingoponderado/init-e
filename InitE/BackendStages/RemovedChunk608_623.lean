import InitE.BackendStages.AllocChunk608_623
import InitE.BackendStages.Removed608
import InitE.BackendStages.Removed609
import InitE.BackendStages.Removed610
import InitE.BackendStages.Removed611
import InitE.BackendStages.Removed612
import InitE.BackendStages.Removed613
import InitE.BackendStages.Removed614
import InitE.BackendStages.Removed615
import InitE.BackendStages.Removed616
import InitE.BackendStages.Removed617
import InitE.BackendStages.Removed618
import InitE.BackendStages.Removed619
import InitE.BackendStages.Removed620
import InitE.BackendStages.Removed621
import InitE.BackendStages.Removed622
import InitE.BackendStages.Removed623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk608_623
def bodies : List (Nat × StackLang.HolProg 64) := [Removed608, Removed609, Removed610, Removed611, Removed612, Removed613, Removed614, Removed615, Removed616, Removed617, Removed618, Removed619, Removed620, Removed621, Removed622, Removed623]
theorem compiled_eq : AllocChunk608_623.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc608, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc609, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc610, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc611, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc612, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc613, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc614, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc615, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc616, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc617, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc618, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc619, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc620, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc621, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc622, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc623] = bodies
  rw [Removed608_eq, Removed609_eq, Removed610_eq, Removed611_eq, Removed612_eq, Removed613_eq, Removed614_eq, Removed615_eq, Removed616_eq, Removed617_eq, Removed618_eq, Removed619_eq, Removed620_eq, Removed621_eq, Removed622_eq, Removed623_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk608_623
