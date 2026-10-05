import InitE.BackendStages.RemovedChunk864_879
import InitE.BackendStages.Named864
import InitE.BackendStages.Named865
import InitE.BackendStages.Named866
import InitE.BackendStages.Named867
import InitE.BackendStages.Named868
import InitE.BackendStages.Named869
import InitE.BackendStages.Named870
import InitE.BackendStages.Named871
import InitE.BackendStages.Named872
import InitE.BackendStages.Named873
import InitE.BackendStages.Named874
import InitE.BackendStages.Named875
import InitE.BackendStages.Named876
import InitE.BackendStages.Named877
import InitE.BackendStages.Named878
import InitE.BackendStages.Named879
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk864_879
def bodies : List (Nat × StackLang.HolProg 64) := [Named864, Named865, Named866, Named867, Named868, Named869, Named870, Named871, Named872, Named873, Named874, Named875, Named876, Named877, Named878, Named879]
theorem compiled_eq : RemovedChunk864_879.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed864, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed865, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed866, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed867, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed868, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed869, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed870, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed871, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed872, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed873, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed874, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed875, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed876, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed877, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed878, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed879] = bodies
  rw [Named864_eq, Named865_eq, Named866_eq, Named867_eq, Named868_eq, Named869_eq, Named870_eq, Named871_eq, Named872_eq, Named873_eq, Named874_eq, Named875_eq, Named876_eq, Named877_eq, Named878_eq, Named879_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk864_879
