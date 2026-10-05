import InitE.BackendStages.AllocChunk288_303
import InitE.BackendStages.Removed288
import InitE.BackendStages.Removed289
import InitE.BackendStages.Removed290
import InitE.BackendStages.Removed291
import InitE.BackendStages.Removed292
import InitE.BackendStages.Removed293
import InitE.BackendStages.Removed294
import InitE.BackendStages.Removed295
import InitE.BackendStages.Removed296
import InitE.BackendStages.Removed297
import InitE.BackendStages.Removed298
import InitE.BackendStages.Removed299
import InitE.BackendStages.Removed300
import InitE.BackendStages.Removed301
import InitE.BackendStages.Removed302
import InitE.BackendStages.Removed303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk288_303
def bodies : List (Nat × StackLang.HolProg 64) := [Removed288, Removed289, Removed290, Removed291, Removed292, Removed293, Removed294, Removed295, Removed296, Removed297, Removed298, Removed299, Removed300, Removed301, Removed302, Removed303]
theorem compiled_eq : AllocChunk288_303.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc288, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc289, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc290, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc291, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc292, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc293, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc294, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc295, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc296, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc297, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc298, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc299, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc300, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc301, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc302, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc303] = bodies
  rw [Removed288_eq, Removed289_eq, Removed290_eq, Removed291_eq, Removed292_eq, Removed293_eq, Removed294_eq, Removed295_eq, Removed296_eq, Removed297_eq, Removed298_eq, Removed299_eq, Removed300_eq, Removed301_eq, Removed302_eq, Removed303_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk288_303
