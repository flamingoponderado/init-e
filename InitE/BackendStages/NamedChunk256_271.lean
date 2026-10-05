import InitE.BackendStages.RemovedChunk256_271
import InitE.BackendStages.Named256
import InitE.BackendStages.Named257
import InitE.BackendStages.Named258
import InitE.BackendStages.Named259
import InitE.BackendStages.Named260
import InitE.BackendStages.Named261
import InitE.BackendStages.Named262
import InitE.BackendStages.Named263
import InitE.BackendStages.Named264
import InitE.BackendStages.Named265
import InitE.BackendStages.Named266
import InitE.BackendStages.Named267
import InitE.BackendStages.Named268
import InitE.BackendStages.Named269
import InitE.BackendStages.Named270
import InitE.BackendStages.Named271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk256_271
def bodies : List (Nat × StackLang.HolProg 64) := [Named256, Named257, Named258, Named259, Named260, Named261, Named262, Named263, Named264, Named265, Named266, Named267, Named268, Named269, Named270, Named271]
theorem compiled_eq : RemovedChunk256_271.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed256, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed257, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed258, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed259, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed260, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed261, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed262, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed263, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed264, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed265, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed266, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed267, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed268, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed269, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed270, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed271] = bodies
  rw [Named256_eq, Named257_eq, Named258_eq, Named259_eq, Named260_eq, Named261_eq, Named262_eq, Named263_eq, Named264_eq, Named265_eq, Named266_eq, Named267_eq, Named268_eq, Named269_eq, Named270_eq, Named271_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk256_271
