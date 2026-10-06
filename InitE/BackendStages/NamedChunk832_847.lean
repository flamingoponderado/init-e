import InitE.BackendStages.RemovedChunk832_847
import InitE.BackendStages.Named832
import InitE.BackendStages.Named833
import InitE.BackendStages.Named834
import InitE.BackendStages.Named835
import InitE.BackendStages.Named836
import InitE.BackendStages.Named837
import InitE.BackendStages.Named838
import InitE.BackendStages.Named839
import InitE.BackendStages.Named840
import InitE.BackendStages.Named841
import InitE.BackendStages.Named842
import InitE.BackendStages.Named843
import InitE.BackendStages.Named844
import InitE.BackendStages.Named845
import InitE.BackendStages.Named846
import InitE.BackendStages.Named847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk832_847
def bodies : List (Nat × StackLang.HolProg 64) := [Named832, Named833, Named834, Named835, Named836, Named837, Named838, Named839, Named840, Named841, Named842, Named843, Named844, Named845, Named846, Named847]
theorem compiled_eq : RemovedChunk832_847.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed832, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed833, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed834, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed835, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed836, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed837, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed838, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed839, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed840, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed841, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed842, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed843, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed844, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed845, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed846, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed847] = bodies
  rw [Named832_eq, Named833_eq, Named834_eq, Named835_eq, Named836_eq, Named837_eq, Named838_eq, Named839_eq, Named840_eq, Named841_eq, Named842_eq, Named843_eq, Named844_eq, Named845_eq, Named846_eq, Named847_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk832_847
