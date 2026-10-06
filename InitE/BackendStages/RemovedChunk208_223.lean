import InitE.BackendStages.AllocChunk208_223
import InitE.BackendStages.Removed208
import InitE.BackendStages.Removed209
import InitE.BackendStages.Removed210
import InitE.BackendStages.Removed211
import InitE.BackendStages.Removed212
import InitE.BackendStages.Removed213
import InitE.BackendStages.Removed214
import InitE.BackendStages.Removed215
import InitE.BackendStages.Removed216
import InitE.BackendStages.Removed217
import InitE.BackendStages.Removed218
import InitE.BackendStages.Removed219
import InitE.BackendStages.Removed220
import InitE.BackendStages.Removed221
import InitE.BackendStages.Removed222
import InitE.BackendStages.Removed223
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk208_223
def bodies : List (Nat × StackLang.HolProg 64) := [Removed208, Removed209, Removed210, Removed211, Removed212, Removed213, Removed214, Removed215, Removed216, Removed217, Removed218, Removed219, Removed220, Removed221, Removed222, Removed223]
theorem compiled_eq : AllocChunk208_223.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc208, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc209, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc210, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc211, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc212, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc213, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc214, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc215, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc216, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc217, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc218, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc219, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc220, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc221, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc222, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc223] = bodies
  rw [Removed208_eq, Removed209_eq, Removed210_eq, Removed211_eq, Removed212_eq, Removed213_eq, Removed214_eq, Removed215_eq, Removed216_eq, Removed217_eq, Removed218_eq, Removed219_eq, Removed220_eq, Removed221_eq, Removed222_eq, Removed223_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk208_223
