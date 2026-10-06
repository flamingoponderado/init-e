import InitE.BackendStages.RemovedChunk304_319
import InitE.BackendStages.Named304
import InitE.BackendStages.Named305
import InitE.BackendStages.Named306
import InitE.BackendStages.Named307
import InitE.BackendStages.Named308
import InitE.BackendStages.Named309
import InitE.BackendStages.Named310
import InitE.BackendStages.Named311
import InitE.BackendStages.Named312
import InitE.BackendStages.Named313
import InitE.BackendStages.Named314
import InitE.BackendStages.Named315
import InitE.BackendStages.Named316
import InitE.BackendStages.Named317
import InitE.BackendStages.Named318
import InitE.BackendStages.Named319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk304_319
def bodies : List (Nat × StackLang.HolProg 64) := [Named304, Named305, Named306, Named307, Named308, Named309, Named310, Named311, Named312, Named313, Named314, Named315, Named316, Named317, Named318, Named319]
theorem compiled_eq : RemovedChunk304_319.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed304, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed305, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed306, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed307, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed308, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed309, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed310, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed311, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed312, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed313, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed314, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed315, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed316, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed317, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed318, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed319] = bodies
  rw [Named304_eq, Named305_eq, Named306_eq, Named307_eq, Named308_eq, Named309_eq, Named310_eq, Named311_eq, Named312_eq, Named313_eq, Named314_eq, Named315_eq, Named316_eq, Named317_eq, Named318_eq, Named319_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk304_319
