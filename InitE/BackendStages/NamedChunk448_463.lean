import InitE.BackendStages.RemovedChunk448_463
import InitE.BackendStages.Named448
import InitE.BackendStages.Named449
import InitE.BackendStages.Named450
import InitE.BackendStages.Named451
import InitE.BackendStages.Named452
import InitE.BackendStages.Named453
import InitE.BackendStages.Named454
import InitE.BackendStages.Named455
import InitE.BackendStages.Named456
import InitE.BackendStages.Named457
import InitE.BackendStages.Named458
import InitE.BackendStages.Named459
import InitE.BackendStages.Named460
import InitE.BackendStages.Named461
import InitE.BackendStages.Named462
import InitE.BackendStages.Named463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk448_463
def bodies : List (Nat × StackLang.HolProg 64) := [Named448, Named449, Named450, Named451, Named452, Named453, Named454, Named455, Named456, Named457, Named458, Named459, Named460, Named461, Named462, Named463]
theorem compiled_eq : RemovedChunk448_463.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed448, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed449, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed450, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed451, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed452, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed453, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed454, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed455, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed456, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed457, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed458, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed459, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed460, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed461, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed462, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed463] = bodies
  rw [Named448_eq, Named449_eq, Named450_eq, Named451_eq, Named452_eq, Named453_eq, Named454_eq, Named455_eq, Named456_eq, Named457_eq, Named458_eq, Named459_eq, Named460_eq, Named461_eq, Named462_eq, Named463_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk448_463
