import InitE.BackendStages.AllocChunk128_143
import InitE.BackendStages.Removed128
import InitE.BackendStages.Removed129
import InitE.BackendStages.Removed130
import InitE.BackendStages.Removed131
import InitE.BackendStages.Removed132
import InitE.BackendStages.Removed133
import InitE.BackendStages.Removed134
import InitE.BackendStages.Removed135
import InitE.BackendStages.Removed136
import InitE.BackendStages.Removed137
import InitE.BackendStages.Removed138
import InitE.BackendStages.Removed139
import InitE.BackendStages.Removed140
import InitE.BackendStages.Removed141
import InitE.BackendStages.Removed142
import InitE.BackendStages.Removed143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.RemovedChunk128_143
def bodies : List (Nat × StackLang.HolProg 64) := [Removed128, Removed129, Removed130, Removed131, Removed132, Removed133, Removed134, Removed135, Removed136, Removed137, Removed138, Removed139, Removed140, Removed141, Removed142, Removed143]
theorem compiled_eq : AllocChunk128_143.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc128, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc129, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc130, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc131, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc132, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc133, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc134, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc135, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc136, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc137, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc138, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc139, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc140, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc141, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc142, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc143] = bodies
  rw [Removed128_eq, Removed129_eq, Removed130_eq, Removed131_eq, Removed132_eq, Removed133_eq, Removed134_eq, Removed135_eq, Removed136_eq, Removed137_eq, Removed138_eq, Removed139_eq, Removed140_eq, Removed141_eq, Removed142_eq, Removed143_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RemovedChunk128_143
