import InitE.BackendStages.AllocChunk80_95
import InitE.BackendStages.Removed80
import InitE.BackendStages.Removed81
import InitE.BackendStages.Removed82
import InitE.BackendStages.Removed83
import InitE.BackendStages.Removed84
import InitE.BackendStages.Removed85
import InitE.BackendStages.Removed86
import InitE.BackendStages.Removed87
import InitE.BackendStages.Removed88
import InitE.BackendStages.Removed89
import InitE.BackendStages.Removed90
import InitE.BackendStages.Removed91
import InitE.BackendStages.Removed92
import InitE.BackendStages.Removed93
import InitE.BackendStages.Removed94
import InitE.BackendStages.Removed95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk80_95
def bodies : List (Nat × StackLang.HolProg 64) := [Removed80, Removed81, Removed82, Removed83, Removed84, Removed85, Removed86, Removed87, Removed88, Removed89, Removed90, Removed91, Removed92, Removed93, Removed94, Removed95]
theorem compiled_eq : AllocChunk80_95.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc80, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc81, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc82, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc83, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc84, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc85, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc86, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc87, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc88, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc89, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc90, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc91, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc92, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc93, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc94, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc95] = bodies
  rw [Removed80_eq, Removed81_eq, Removed82_eq, Removed83_eq, Removed84_eq, Removed85_eq, Removed86_eq, Removed87_eq, Removed88_eq, Removed89_eq, Removed90_eq, Removed91_eq, Removed92_eq, Removed93_eq, Removed94_eq, Removed95_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk80_95
