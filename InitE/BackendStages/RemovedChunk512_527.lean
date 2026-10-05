import InitE.BackendStages.AllocChunk512_527
import InitE.BackendStages.Removed512
import InitE.BackendStages.Removed513
import InitE.BackendStages.Removed514
import InitE.BackendStages.Removed515
import InitE.BackendStages.Removed516
import InitE.BackendStages.Removed517
import InitE.BackendStages.Removed518
import InitE.BackendStages.Removed519
import InitE.BackendStages.Removed520
import InitE.BackendStages.Removed521
import InitE.BackendStages.Removed522
import InitE.BackendStages.Removed523
import InitE.BackendStages.Removed524
import InitE.BackendStages.Removed525
import InitE.BackendStages.Removed526
import InitE.BackendStages.Removed527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk512_527
def bodies : List (Nat × StackLang.HolProg 64) := [Removed512, Removed513, Removed514, Removed515, Removed516, Removed517, Removed518, Removed519, Removed520, Removed521, Removed522, Removed523, Removed524, Removed525, Removed526, Removed527]
theorem compiled_eq : AllocChunk512_527.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc512, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc513, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc514, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc515, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc516, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc517, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc518, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc519, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc520, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc521, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc522, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc523, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc524, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc525, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc526, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc527] = bodies
  rw [Removed512_eq, Removed513_eq, Removed514_eq, Removed515_eq, Removed516_eq, Removed517_eq, Removed518_eq, Removed519_eq, Removed520_eq, Removed521_eq, Removed522_eq, Removed523_eq, Removed524_eq, Removed525_eq, Removed526_eq, Removed527_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk512_527
