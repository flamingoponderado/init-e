import InitE.BackendStages.NamedChunk736_751
import InitE.BackendStages.Section736
import InitE.BackendStages.Section737
import InitE.BackendStages.Section738
import InitE.BackendStages.Section739
import InitE.BackendStages.Section740
import InitE.BackendStages.Section741
import InitE.BackendStages.Section742
import InitE.BackendStages.Section743
import InitE.BackendStages.Section744
import InitE.BackendStages.Section745
import InitE.BackendStages.Section746
import InitE.BackendStages.Section747
import InitE.BackendStages.Section748
import InitE.BackendStages.Section749
import InitE.BackendStages.Section750
import InitE.BackendStages.Section751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.SectionChunk736_751
def sections : LabSem.LabProgHOL 64 := [section736, section737, section738, section739, section740, section741, section742, section743, section744, section745, section746, section747, section748, section749, section750, section751]
theorem compiled_eq : NamedChunk736_751.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named736, StackToLab.progToSectionHOL Named737, StackToLab.progToSectionHOL Named738, StackToLab.progToSectionHOL Named739, StackToLab.progToSectionHOL Named740, StackToLab.progToSectionHOL Named741, StackToLab.progToSectionHOL Named742, StackToLab.progToSectionHOL Named743, StackToLab.progToSectionHOL Named744, StackToLab.progToSectionHOL Named745, StackToLab.progToSectionHOL Named746, StackToLab.progToSectionHOL Named747, StackToLab.progToSectionHOL Named748, StackToLab.progToSectionHOL Named749, StackToLab.progToSectionHOL Named750, StackToLab.progToSectionHOL Named751] = sections
  rw [section736_eq, section737_eq, section738_eq, section739_eq, section740_eq, section741_eq, section742_eq, section743_eq, section744_eq, section745_eq, section746_eq, section747_eq, section748_eq, section749_eq, section750_eq, section751_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.SectionChunk736_751
