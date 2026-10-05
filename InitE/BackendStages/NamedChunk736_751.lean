import InitE.BackendStages.RemovedChunk736_751
import InitE.BackendStages.Named736
import InitE.BackendStages.Named737
import InitE.BackendStages.Named738
import InitE.BackendStages.Named739
import InitE.BackendStages.Named740
import InitE.BackendStages.Named741
import InitE.BackendStages.Named742
import InitE.BackendStages.Named743
import InitE.BackendStages.Named744
import InitE.BackendStages.Named745
import InitE.BackendStages.Named746
import InitE.BackendStages.Named747
import InitE.BackendStages.Named748
import InitE.BackendStages.Named749
import InitE.BackendStages.Named750
import InitE.BackendStages.Named751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk736_751
def bodies : List (Nat × StackLang.HolProg 64) := [Named736, Named737, Named738, Named739, Named740, Named741, Named742, Named743, Named744, Named745, Named746, Named747, Named748, Named749, Named750, Named751]
theorem compiled_eq : RemovedChunk736_751.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed736, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed737, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed738, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed739, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed740, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed741, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed742, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed743, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed744, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed745, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed746, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed747, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed748, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed749, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed750, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed751] = bodies
  rw [Named736_eq, Named737_eq, Named738_eq, Named739_eq, Named740_eq, Named741_eq, Named742_eq, Named743_eq, Named744_eq, Named745_eq, Named746_eq, Named747_eq, Named748_eq, Named749_eq, Named750_eq, Named751_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk736_751
