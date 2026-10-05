import InitE.BackendStages.AllocChunk544_559
import InitE.BackendStages.Removed544
import InitE.BackendStages.Removed545
import InitE.BackendStages.Removed546
import InitE.BackendStages.Removed547
import InitE.BackendStages.Removed548
import InitE.BackendStages.Removed549
import InitE.BackendStages.Removed550
import InitE.BackendStages.Removed551
import InitE.BackendStages.Removed552
import InitE.BackendStages.Removed553
import InitE.BackendStages.Removed554
import InitE.BackendStages.Removed555
import InitE.BackendStages.Removed556
import InitE.BackendStages.Removed557
import InitE.BackendStages.Removed558
import InitE.BackendStages.Removed559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk544_559
def bodies : List (Nat × StackLang.HolProg 64) := [Removed544, Removed545, Removed546, Removed547, Removed548, Removed549, Removed550, Removed551, Removed552, Removed553, Removed554, Removed555, Removed556, Removed557, Removed558, Removed559]
theorem compiled_eq : AllocChunk544_559.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc544, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc545, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc546, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc547, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc548, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc549, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc550, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc551, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc552, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc553, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc554, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc555, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc556, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc557, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc558, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc559] = bodies
  rw [Removed544_eq, Removed545_eq, Removed546_eq, Removed547_eq, Removed548_eq, Removed549_eq, Removed550_eq, Removed551_eq, Removed552_eq, Removed553_eq, Removed554_eq, Removed555_eq, Removed556_eq, Removed557_eq, Removed558_eq, Removed559_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk544_559
