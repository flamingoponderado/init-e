import InitE.BackendStages.AllocChunk192_207
import InitE.BackendStages.Removed192
import InitE.BackendStages.Removed193
import InitE.BackendStages.Removed194
import InitE.BackendStages.Removed195
import InitE.BackendStages.Removed196
import InitE.BackendStages.Removed197
import InitE.BackendStages.Removed198
import InitE.BackendStages.Removed199
import InitE.BackendStages.Removed200
import InitE.BackendStages.Removed201
import InitE.BackendStages.Removed202
import InitE.BackendStages.Removed203
import InitE.BackendStages.Removed204
import InitE.BackendStages.Removed205
import InitE.BackendStages.Removed206
import InitE.BackendStages.Removed207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk192_207
def bodies : List (Nat × StackLang.HolProg 64) := [Removed192, Removed193, Removed194, Removed195, Removed196, Removed197, Removed198, Removed199, Removed200, Removed201, Removed202, Removed203, Removed204, Removed205, Removed206, Removed207]
theorem compiled_eq : AllocChunk192_207.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc192, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc193, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc194, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc195, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc196, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc197, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc198, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc199, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc200, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc201, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc202, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc203, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc204, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc205, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc206, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc207] = bodies
  rw [Removed192_eq, Removed193_eq, Removed194_eq, Removed195_eq, Removed196_eq, Removed197_eq, Removed198_eq, Removed199_eq, Removed200_eq, Removed201_eq, Removed202_eq, Removed203_eq, Removed204_eq, Removed205_eq, Removed206_eq, Removed207_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk192_207
