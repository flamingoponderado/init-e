import InitE.BackendStages.RemovedChunk128_143
import InitE.BackendStages.Named128
import InitE.BackendStages.Named129
import InitE.BackendStages.Named130
import InitE.BackendStages.Named131
import InitE.BackendStages.Named132
import InitE.BackendStages.Named133
import InitE.BackendStages.Named134
import InitE.BackendStages.Named135
import InitE.BackendStages.Named136
import InitE.BackendStages.Named137
import InitE.BackendStages.Named138
import InitE.BackendStages.Named139
import InitE.BackendStages.Named140
import InitE.BackendStages.Named141
import InitE.BackendStages.Named142
import InitE.BackendStages.Named143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk128_143
def bodies : List (Nat × StackLang.HolProg 64) := [Named128, Named129, Named130, Named131, Named132, Named133, Named134, Named135, Named136, Named137, Named138, Named139, Named140, Named141, Named142, Named143]
theorem compiled_eq : RemovedChunk128_143.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed128, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed129, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed130, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed131, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed132, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed133, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed134, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed135, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed136, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed137, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed138, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed139, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed140, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed141, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed142, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed143] = bodies
  rw [Named128_eq, Named129_eq, Named130_eq, Named131_eq, Named132_eq, Named133_eq, Named134_eq, Named135_eq, Named136_eq, Named137_eq, Named138_eq, Named139_eq, Named140_eq, Named141_eq, Named142_eq, Named143_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk128_143
