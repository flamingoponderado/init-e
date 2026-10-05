import InitE.BackendStages.RemovedChunk240_255
import InitE.BackendStages.Named240
import InitE.BackendStages.Named241
import InitE.BackendStages.Named242
import InitE.BackendStages.Named243
import InitE.BackendStages.Named244
import InitE.BackendStages.Named245
import InitE.BackendStages.Named246
import InitE.BackendStages.Named247
import InitE.BackendStages.Named248
import InitE.BackendStages.Named249
import InitE.BackendStages.Named250
import InitE.BackendStages.Named251
import InitE.BackendStages.Named252
import InitE.BackendStages.Named253
import InitE.BackendStages.Named254
import InitE.BackendStages.Named255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk240_255
def bodies : List (Nat × StackLang.HolProg 64) := [Named240, Named241, Named242, Named243, Named244, Named245, Named246, Named247, Named248, Named249, Named250, Named251, Named252, Named253, Named254, Named255]
theorem compiled_eq : RemovedChunk240_255.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed240, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed241, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed242, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed243, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed244, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed245, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed246, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed247, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed248, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed249, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed250, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed251, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed252, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed253, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed254, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed255] = bodies
  rw [Named240_eq, Named241_eq, Named242_eq, Named243_eq, Named244_eq, Named245_eq, Named246_eq, Named247_eq, Named248_eq, Named249_eq, Named250_eq, Named251_eq, Named252_eq, Named253_eq, Named254_eq, Named255_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk240_255
