import InitE.BackendStages.RemovedChunk192_207
import InitE.BackendStages.Named192
import InitE.BackendStages.Named193
import InitE.BackendStages.Named194
import InitE.BackendStages.Named195
import InitE.BackendStages.Named196
import InitE.BackendStages.Named197
import InitE.BackendStages.Named198
import InitE.BackendStages.Named199
import InitE.BackendStages.Named200
import InitE.BackendStages.Named201
import InitE.BackendStages.Named202
import InitE.BackendStages.Named203
import InitE.BackendStages.Named204
import InitE.BackendStages.Named205
import InitE.BackendStages.Named206
import InitE.BackendStages.Named207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk192_207
def bodies : List (Nat × StackLang.HolProg 64) := [Named192, Named193, Named194, Named195, Named196, Named197, Named198, Named199, Named200, Named201, Named202, Named203, Named204, Named205, Named206, Named207]
theorem compiled_eq : RemovedChunk192_207.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed192, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed193, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed194, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed195, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed196, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed197, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed198, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed199, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed200, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed201, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed202, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed203, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed204, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed205, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed206, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed207] = bodies
  rw [Named192_eq, Named193_eq, Named194_eq, Named195_eq, Named196_eq, Named197_eq, Named198_eq, Named199_eq, Named200_eq, Named201_eq, Named202_eq, Named203_eq, Named204_eq, Named205_eq, Named206_eq, Named207_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk192_207
