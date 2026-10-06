import InitE.BackendStages.RemovedChunk816_831
import InitE.BackendStages.Named816
import InitE.BackendStages.Named817
import InitE.BackendStages.Named818
import InitE.BackendStages.Named819
import InitE.BackendStages.Named820
import InitE.BackendStages.Named821
import InitE.BackendStages.Named822
import InitE.BackendStages.Named823
import InitE.BackendStages.Named824
import InitE.BackendStages.Named825
import InitE.BackendStages.Named826
import InitE.BackendStages.Named827
import InitE.BackendStages.Named828
import InitE.BackendStages.Named829
import InitE.BackendStages.Named830
import InitE.BackendStages.Named831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.NamedChunk816_831
def bodies : List (Nat × StackLang.HolProg 64) := [Named816, Named817, Named818, Named819, Named820, Named821, Named822, Named823, Named824, Named825, Named826, Named827, Named828, Named829, Named830, Named831]
theorem compiled_eq : RemovedChunk816_831.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed816, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed817, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed818, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed819, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed820, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed821, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed822, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed823, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed824, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed825, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed826, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed827, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed828, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed829, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed830, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed831] = bodies
  rw [Named816_eq, Named817_eq, Named818_eq, Named819_eq, Named820_eq, Named821_eq, Named822_eq, Named823_eq, Named824_eq, Named825_eq, Named826_eq, Named827_eq, Named828_eq, Named829_eq, Named830_eq, Named831_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.NamedChunk816_831
