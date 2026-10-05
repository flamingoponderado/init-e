import InitE.BackendStages.RemovedChunk432_447
import InitE.BackendStages.Named432
import InitE.BackendStages.Named433
import InitE.BackendStages.Named434
import InitE.BackendStages.Named435
import InitE.BackendStages.Named436
import InitE.BackendStages.Named437
import InitE.BackendStages.Named438
import InitE.BackendStages.Named439
import InitE.BackendStages.Named440
import InitE.BackendStages.Named441
import InitE.BackendStages.Named442
import InitE.BackendStages.Named443
import InitE.BackendStages.Named444
import InitE.BackendStages.Named445
import InitE.BackendStages.Named446
import InitE.BackendStages.Named447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk432_447
def bodies : List (Nat × StackLang.HolProg 64) := [Named432, Named433, Named434, Named435, Named436, Named437, Named438, Named439, Named440, Named441, Named442, Named443, Named444, Named445, Named446, Named447]
theorem compiled_eq : RemovedChunk432_447.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed432, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed433, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed434, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed435, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed436, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed437, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed438, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed439, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed440, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed441, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed442, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed443, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed444, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed445, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed446, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed447] = bodies
  rw [Named432_eq, Named433_eq, Named434_eq, Named435_eq, Named436_eq, Named437_eq, Named438_eq, Named439_eq, Named440_eq, Named441_eq, Named442_eq, Named443_eq, Named444_eq, Named445_eq, Named446_eq, Named447_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk432_447
