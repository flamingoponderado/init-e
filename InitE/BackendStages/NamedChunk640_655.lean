import InitE.BackendStages.RemovedChunk640_655
import InitE.BackendStages.Named640
import InitE.BackendStages.Named641
import InitE.BackendStages.Named642
import InitE.BackendStages.Named643
import InitE.BackendStages.Named644
import InitE.BackendStages.Named645
import InitE.BackendStages.Named646
import InitE.BackendStages.Named647
import InitE.BackendStages.Named648
import InitE.BackendStages.Named649
import InitE.BackendStages.Named650
import InitE.BackendStages.Named651
import InitE.BackendStages.Named652
import InitE.BackendStages.Named653
import InitE.BackendStages.Named654
import InitE.BackendStages.Named655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk640_655
def bodies : List (Nat × StackLang.HolProg 64) := [Named640, Named641, Named642, Named643, Named644, Named645, Named646, Named647, Named648, Named649, Named650, Named651, Named652, Named653, Named654, Named655]
theorem compiled_eq : RemovedChunk640_655.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed640, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed641, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed642, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed643, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed644, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed645, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed646, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed647, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed648, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed649, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed650, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed651, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed652, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed653, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed654, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed655] = bodies
  rw [Named640_eq, Named641_eq, Named642_eq, Named643_eq, Named644_eq, Named645_eq, Named646_eq, Named647_eq, Named648_eq, Named649_eq, Named650_eq, Named651_eq, Named652_eq, Named653_eq, Named654_eq, Named655_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk640_655
