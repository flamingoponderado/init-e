import InitE.BackendStages.AllocChunk64_79
import InitE.BackendStages.Removed64
import InitE.BackendStages.Removed65
import InitE.BackendStages.Removed66
import InitE.BackendStages.Removed67
import InitE.BackendStages.Removed68
import InitE.BackendStages.Removed69
import InitE.BackendStages.Removed70
import InitE.BackendStages.Removed71
import InitE.BackendStages.Removed72
import InitE.BackendStages.Removed73
import InitE.BackendStages.Removed74
import InitE.BackendStages.Removed75
import InitE.BackendStages.Removed76
import InitE.BackendStages.Removed77
import InitE.BackendStages.Removed78
import InitE.BackendStages.Removed79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk64_79
def bodies : List (Nat × StackLang.HolProg 64) := [Removed64, Removed65, Removed66, Removed67, Removed68, Removed69, Removed70, Removed71, Removed72, Removed73, Removed74, Removed75, Removed76, Removed77, Removed78, Removed79]
theorem compiled_eq : AllocChunk64_79.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc64, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc65, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc66, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc67, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc68, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc69, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc70, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc71, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc72, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc73, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc74, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc75, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc76, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc77, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc78, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc79] = bodies
  rw [Removed64_eq, Removed65_eq, Removed66_eq, Removed67_eq, Removed68_eq, Removed69_eq, Removed70_eq, Removed71_eq, Removed72_eq, Removed73_eq, Removed74_eq, Removed75_eq, Removed76_eq, Removed77_eq, Removed78_eq, Removed79_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk64_79
