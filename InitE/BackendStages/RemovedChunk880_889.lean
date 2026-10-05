import InitE.BackendStages.AllocChunk880_889
import InitE.BackendStages.Removed880
import InitE.BackendStages.Removed881
import InitE.BackendStages.Removed882
import InitE.BackendStages.Removed883
import InitE.BackendStages.Removed884
import InitE.BackendStages.Removed885
import InitE.BackendStages.Removed886
import InitE.BackendStages.Removed887
import InitE.BackendStages.Removed888
import InitE.BackendStages.Removed889
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk880_889
def bodies : List (Nat × StackLang.HolProg 64) := [Removed880, Removed881, Removed882, Removed883, Removed884, Removed885, Removed886, Removed887, Removed888, Removed889]
theorem compiled_eq : AllocChunk880_889.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc880, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc881, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc882, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc883, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc884, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc885, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc886, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc887, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc888, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc889] = bodies
  rw [Removed880_eq, Removed881_eq, Removed882_eq, Removed883_eq, Removed884_eq, Removed885_eq, Removed886_eq, Removed887_eq, Removed888_eq, Removed889_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk880_889
