import InitE.BackendStages.AllocChunk144_159
import InitE.BackendStages.Removed144
import InitE.BackendStages.Removed145
import InitE.BackendStages.Removed146
import InitE.BackendStages.Removed147
import InitE.BackendStages.Removed148
import InitE.BackendStages.Removed149
import InitE.BackendStages.Removed150
import InitE.BackendStages.Removed151
import InitE.BackendStages.Removed152
import InitE.BackendStages.Removed153
import InitE.BackendStages.Removed154
import InitE.BackendStages.Removed155
import InitE.BackendStages.Removed156
import InitE.BackendStages.Removed157
import InitE.BackendStages.Removed158
import InitE.BackendStages.Removed159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk144_159
def bodies : List (Nat × StackLang.HolProg 64) := [Removed144, Removed145, Removed146, Removed147, Removed148, Removed149, Removed150, Removed151, Removed152, Removed153, Removed154, Removed155, Removed156, Removed157, Removed158, Removed159]
theorem compiled_eq : AllocChunk144_159.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc144, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc145, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc146, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc147, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc148, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc149, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc150, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc151, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc152, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc153, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc154, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc155, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc156, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc157, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc158, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc159] = bodies
  rw [Removed144_eq, Removed145_eq, Removed146_eq, Removed147_eq, Removed148_eq, Removed149_eq, Removed150_eq, Removed151_eq, Removed152_eq, Removed153_eq, Removed154_eq, Removed155_eq, Removed156_eq, Removed157_eq, Removed158_eq, Removed159_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk144_159
