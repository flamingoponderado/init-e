import InitE.BackendStages.AllocChunk864_879
import InitE.BackendStages.Removed864
import InitE.BackendStages.Removed865
import InitE.BackendStages.Removed866
import InitE.BackendStages.Removed867
import InitE.BackendStages.Removed868
import InitE.BackendStages.Removed869
import InitE.BackendStages.Removed870
import InitE.BackendStages.Removed871
import InitE.BackendStages.Removed872
import InitE.BackendStages.Removed873
import InitE.BackendStages.Removed874
import InitE.BackendStages.Removed875
import InitE.BackendStages.Removed876
import InitE.BackendStages.Removed877
import InitE.BackendStages.Removed878
import InitE.BackendStages.Removed879
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk864_879
def bodies : List (Nat × StackLang.HolProg 64) := [Removed864, Removed865, Removed866, Removed867, Removed868, Removed869, Removed870, Removed871, Removed872, Removed873, Removed874, Removed875, Removed876, Removed877, Removed878, Removed879]
theorem compiled_eq : AllocChunk864_879.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc864, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc865, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc866, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc867, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc868, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc869, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc870, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc871, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc872, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc873, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc874, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc875, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc876, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc877, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc878, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc879] = bodies
  rw [Removed864_eq, Removed865_eq, Removed866_eq, Removed867_eq, Removed868_eq, Removed869_eq, Removed870_eq, Removed871_eq, Removed872_eq, Removed873_eq, Removed874_eq, Removed875_eq, Removed876_eq, Removed877_eq, Removed878_eq, Removed879_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk864_879
