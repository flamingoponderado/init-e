import InitE.BackendStages.AllocChunk704_719
import InitE.BackendStages.Removed704
import InitE.BackendStages.Removed705
import InitE.BackendStages.Removed706
import InitE.BackendStages.Removed707
import InitE.BackendStages.Removed708
import InitE.BackendStages.Removed709
import InitE.BackendStages.Removed710
import InitE.BackendStages.Removed711
import InitE.BackendStages.Removed712
import InitE.BackendStages.Removed713
import InitE.BackendStages.Removed714
import InitE.BackendStages.Removed715
import InitE.BackendStages.Removed716
import InitE.BackendStages.Removed717
import InitE.BackendStages.Removed718
import InitE.BackendStages.Removed719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk704_719
def bodies : List (Nat × StackLang.HolProg 64) := [Removed704, Removed705, Removed706, Removed707, Removed708, Removed709, Removed710, Removed711, Removed712, Removed713, Removed714, Removed715, Removed716, Removed717, Removed718, Removed719]
theorem compiled_eq : AllocChunk704_719.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc704, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc705, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc706, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc707, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc708, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc709, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc710, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc711, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc712, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc713, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc714, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc715, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc716, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc717, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc718, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc719] = bodies
  rw [Removed704_eq, Removed705_eq, Removed706_eq, Removed707_eq, Removed708_eq, Removed709_eq, Removed710_eq, Removed711_eq, Removed712_eq, Removed713_eq, Removed714_eq, Removed715_eq, Removed716_eq, Removed717_eq, Removed718_eq, Removed719_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk704_719
