import InitE.BackendStages.AllocChunk640_655
import InitE.BackendStages.Removed640
import InitE.BackendStages.Removed641
import InitE.BackendStages.Removed642
import InitE.BackendStages.Removed643
import InitE.BackendStages.Removed644
import InitE.BackendStages.Removed645
import InitE.BackendStages.Removed646
import InitE.BackendStages.Removed647
import InitE.BackendStages.Removed648
import InitE.BackendStages.Removed649
import InitE.BackendStages.Removed650
import InitE.BackendStages.Removed651
import InitE.BackendStages.Removed652
import InitE.BackendStages.Removed653
import InitE.BackendStages.Removed654
import InitE.BackendStages.Removed655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk640_655
def bodies : List (Nat × StackLang.HolProg 64) := [Removed640, Removed641, Removed642, Removed643, Removed644, Removed645, Removed646, Removed647, Removed648, Removed649, Removed650, Removed651, Removed652, Removed653, Removed654, Removed655]
theorem compiled_eq : AllocChunk640_655.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc640, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc641, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc642, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc643, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc644, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc645, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc646, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc647, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc648, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc649, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc650, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc651, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc652, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc653, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc654, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc655] = bodies
  rw [Removed640_eq, Removed641_eq, Removed642_eq, Removed643_eq, Removed644_eq, Removed645_eq, Removed646_eq, Removed647_eq, Removed648_eq, Removed649_eq, Removed650_eq, Removed651_eq, Removed652_eq, Removed653_eq, Removed654_eq, Removed655_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk640_655
