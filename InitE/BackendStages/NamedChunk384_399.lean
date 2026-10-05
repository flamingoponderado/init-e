import InitE.BackendStages.RemovedChunk384_399
import InitE.BackendStages.Named384
import InitE.BackendStages.Named385
import InitE.BackendStages.Named386
import InitE.BackendStages.Named387
import InitE.BackendStages.Named388
import InitE.BackendStages.Named389
import InitE.BackendStages.Named390
import InitE.BackendStages.Named391
import InitE.BackendStages.Named392
import InitE.BackendStages.Named393
import InitE.BackendStages.Named394
import InitE.BackendStages.Named395
import InitE.BackendStages.Named396
import InitE.BackendStages.Named397
import InitE.BackendStages.Named398
import InitE.BackendStages.Named399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk384_399
def bodies : List (Nat × StackLang.HolProg 64) := [Named384, Named385, Named386, Named387, Named388, Named389, Named390, Named391, Named392, Named393, Named394, Named395, Named396, Named397, Named398, Named399]
theorem compiled_eq : RemovedChunk384_399.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed384, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed385, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed386, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed387, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed388, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed389, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed390, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed391, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed392, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed393, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed394, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed395, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed396, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed397, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed398, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed399] = bodies
  rw [Named384_eq, Named385_eq, Named386_eq, Named387_eq, Named388_eq, Named389_eq, Named390_eq, Named391_eq, Named392_eq, Named393_eq, Named394_eq, Named395_eq, Named396_eq, Named397_eq, Named398_eq, Named399_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk384_399
